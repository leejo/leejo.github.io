---
title: Replay Cron Events With Cron::Sequencer
layout: blog
tags:
    - software
    - cron
    - perl
---

**TL;DR** Trivially find out which cron events ran, or will run, for an arbitrary time range; allowing you to rerun, debug, fast forward (speed up test iterations), with `cron-sequencer`:

`cron-sequencer --show "last hour" /path/to/crontab`

At [Humanstate](https://www.humanstate.com/) we still use `cron` to drive many of our backend processes. While we continue to move some to event and message driven logic, there will always be a number of jobs that have to run at very specific dates and/or times: communications with banks, archiving, backups, and so on. That's where `cron` comes in.

**Cron**

The `cron` is a process (daemon) that wakes up every minute and checks the `crontab` - a list that defines when particular jobs should be run. The format of the `crontab` can be as simple as something like this:

`0 * * * * /path/to/some/script.sh`

Which would mean "At the zeroth minute of every hour, all day every day, run /path/to/some/script.sh". They can also be as specific as this:

`37 4 15 3 4 /path/to/some/other_script.sh`

Which would mean: "At 04:37 on day-of-month 15 and on Thursday in March run /path/to/some/other\_script.sh".[^1]

The format of the `crontab` allows you to build up a very specific order of events. If you have dependencies then you wrap those in a shell script and call *that* in the `crontab`. What tends to happen is over time your `crontab` will grow to have many entries. When things go wrong you find yourself having to unravel time based logic.

**When Complex Crontabs Go Wrong**

`cron` isn't actually that complex. You don't need to know much more than what I described in the previous section. The complexity arrises when you start to have many entries in your `crontab` or many `crontab`s. If those jobs start to depend on each other, than you have more complexity. If those jobs are across different servers, even more.

And, indeed, `cron` itself doesn't go wrong. It's job is very simple: wake up, figure out what things need to be run this minute, run them. Simple.

What usually happens is that something external to the `cron` daemon causes the things it is running to fail. A recent example I can give is when one of our backend batch servers ran out of memory *and* swap space. That meant the jobs `cron` was trying to start couldn't start.

This problem went on for several hours, over night, and since the jobs themselves were not critical enough to wake anyone up we had to deal with them when we realised, the next morning, that there had been a problem. Once we had sorted out the memory issue on the server we had to figure out which jobs to rerun.

That might seem like an easy enough thing to do: look at the crontab and work it out. However, when the crontab has a couple of dozen entries, all with various definitions of when they need to run, it can become somewhat of a cognitive overload to do so. You might miss one, and if they need to run in a specific order that could cause more problems if you get it wrong.

There's another reason you might want to figure out jobs that will run from a `crontab` - testing. We are in the process of setting up a new test system for some of our backend servers, and those are heavily dependent on `cron`. We don't want to sit around and wait for things to run in the test environment, we just want to run them one after another as quickly as possible.

**Enter Cron::Sequencer**

[cron-sequencer](https://metacpan.org/dist/Cron-Sequencer/view/bin/cron-sequencer) ([source](https://github.com/Humanstate/cron-sequencer)) is a script and module Nicholas has written to allow us to solve this problem. It can take any number of crontabs, along with optional arguments, and will display an ordered list of the jobs that will run along with the necessary environment variables.

You can define specific time periods, or more human readable ones ("last hour" for example), get the output as plain text or JSON. Pipe the output to other commands, use it for testing, debugging, replaying, anticipating, and so on. Here's a few examples:

Show Jobs For A Specific Time Period:

```
    cron-sequencer \
    --from "2022-05-24T23:45:00" \
    --to "2022-05-24T23:50:00" \
    ~/working/processor_live_config/crontab.ca

2022-05-24T23:45:00
line 28: 5,25,45 * * * *
LOG_DIR=/var/log/processor
MAILTO=XXXX@humanstate.com
PAYMENTPROCESSOR_ROOT=/home/processor
/opt/tools/bin/perl /home/processor/bin/fetch_bank_files.pl


2022-05-24T23:47:00
line 29: 7,27,47 * * * *
LOG_DIR=/var/log/processor
MAILTO=XXXX@humanstate.com
PAYMENTPROCESSOR_ROOT=/home/processor
/opt/tools/bin/perl /home/processor/bin/import_apa.pl


2022-05-24T23:49:00
line 30: 9,29,49 * * * *
LOG_DIR=/var/log/processor
MAILTO=XXXX@humanstate.com
PAYMENTPROCESSOR_ROOT=/home/processor
/opt/tools/bin/perl /home/processor/bin/process_file_reports.pl
```

As Above But Output JSON (Piped to `jq`):

```
    cron-sequencer \
    --from "2022-05-24T23:45:00" \
    --to "2022-05-24T23:50:00" \
    --json ~/working/processor_live_config/crontab.ca | jq
[
  [
    {
      "when": "5,25,45 * * * *",
      "command": "/opt/tools/bin/perl /home/processor/bin/fetch_bank_files.pl",
      "time": 1653435900,
      "env": {
        "MAILTO": "XXXX@humanstate.com",
        "LOG_DIR": "/var/log/processor",
        "PAYMENTPROCESSOR_ROOT": "/home/processor"
      },
      "file": "/home/leejohnson/working/processor_live_config/crontab.ca",
      "lineno": 28
    }
  ],
  [
    {
      "env": {
... 
```

Show The Jobs Ran In The Last Hour (Piped to `less`):

```
    cron-sequencer --show 'last hour' ~/working/processor_live_config/crontab.ca | less
2022-05-23T06:00:00
line 50: 0,20,40 * * * *
LOG_DIR=/var/log/processor
MAILTO=XXXX@humanstate.com
PAYMENTPROCESSOR_ROOT=/home/processor
bash /home/processor/bin/import_statement.sh


2022-05-23T06:05:00
...
```

Once you've installed the script and its dependencies you can run `man cron-sequencer` to get more information on usage.

What's most surprising about all of this is that this particular tool doesn't already exist. At least, that is to say, we couldn't find anything that solves this problem. There are plenty of tools that will describe the entries in a `crontab`, or parse a `crontab`, but none we could find that make it trivial to replay or fast-forward a `crontab`.

Given that `cron` is one of those things that has been around forever, and is used everywhere, and probably running a significant chunk of important systems, we think this tool might be useful to others. So we have released it on both [Github](https://github.com/Humanstate/cron-sequencer) and [CPAN](https://metacpan.org/dist/Cron-Sequencer/view/bin/cron-sequencer). If you have `perl` installed, which you almost certainly do, you can install it with `cpan Cron::Sequencer`.

There is currently one caveat to be aware of: all of our servers and `crontab` are based in UTC and thus the script will output in UTC. So, of course, patches welcome.

<hr />

[^1]: That's a [TIL](https://crontab.guru/#37_4_15_3_4) - combining the day of month and day of week does *not* restrict you to "only run on the day of the month if it's also that day of the week", but rather is "only run on the day of the month *OR* the day of the week".

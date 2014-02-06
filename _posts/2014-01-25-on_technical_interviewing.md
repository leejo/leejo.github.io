---
title: On Perl Technical Interviewing
layout: blog
tags:
    - job
    - perl
    - software
    - interview
---

Towards the end of 2012 i had become somewhat frustrated with my position. This was caused by the combination of a medium-term migration project, being a senior developer responsible for writing/refactoring/testing 75% of the current system, and being a little too willing to help due to my amount of domain knowledge. As a developer i tend to be pretty good at eliminating frustration with problem solving and automation, but the nature of this project didn't lend itself to that. I could eliminate some parts of the frustration, but my attempts to remove the rest didn't work.

As a developer i want to spend the majority of my time developing, either at the literal level of writing code/tests/refactoring/bug fixing/whatever but also on the personal side of learning new technologies/techniques/methodologies/again-whatever. There is always going to be an amount of support required in a development role, this i understand, but the balance must be set right. I don't know what that balance is, and it is probably different for each developer, but i suspect something like 8:2 for development to support is a reasonable ratio. This ratio had been reversed.

This preamble is to give you some idea of where i was at. I could have sat back and carried on but i was frustrated and this was avoidable frustration, which is one of the worst things you can do to a software developer. Most will be able to deal with this, and i did, but after several months i went looking for another position. So this post is a mind-dump of my experiences during the 6 months or so that i was interviewing for a new position.

**A few things worth mentioning**

1. This will focus on perl developer positions because that is what i do and have done for over a decade.
2. I will make identifying information anonymous for the most part because i don't want to reveal too much on the side of technical tests or company information (and also because some of this was over a year ago so my memory is hazy).
3. I don't have a background in computer science, this is important because some technical interviews are sometimes biased towards that area of study.
4. This post is long, relatively speaking, but i don't recall ever seeing a post about technical perl interviews so perhaps someone will benefit from it.

So here we go...

**Web development, London**

The easiest place to find a perl position in the UK is London. In fact, i guarantee that if you go to [jobs.perl.org](http://jobs.perl.org) right now you will find at least 5 open positions there. If you are an experienced perl developer then you should have no problem getting an interview at any one of them. This is the fortunate place that perl developers find themselves currently in: more open positions than developers to fill them.[^1] So obviously my first port of call was London.

This company had an interesting technical test, that was to be completed as a pre-requisite to an interview. The test involved spending approximately one hour implementing the basic functionality of a very well known piece of software. The important things to follow being that it had to be done using an object oriented approach, and for up to date perl that involves using the Moose ecosystem (not stipulated in the specifications). So i wrote the functionality and tests implementing all the requirements in the given specification.

When it came to the interview it was clear the OO was bulk of this company's perl code as i recall asking roughly how many classes they had and the answer being several hundred. To some this may be a red flag, i seem to remember someone on IRC describing this company's codebase as "somewhat baroque". Anyway, the technical test lead to asking about how you would model other parts of the application and whether it made sense to abstract certain functionality out into a class, IIRC we talked about using roles for that kind of thing. I asked how many of their classes where Moose based, i don't recall the percentage but they were on the way to converting those that weren't already.

So we went through the usual interview process, and i asked my usual perl specific questions (more on those below) and this seemed like it could be interesting. The only downside at this point was it being central London.

**Finance, London**

Most companies using perl are known to perl developers. The community is small and close-knit, so there are probably fewer than six degrees of separation between perl roles in terms of who has worked where. It wouldn't surprise me if this number is as low as two. So when i asked other perl developers about this company and they had not heard of them that was surprising. The company are more well known now, and that is probably a sign of their recruitment effort this year. Also they presented a couple of talks at this year's LPW (again, probably as a recruitment drive).

This interview and technical test was one long list of red flags. Starting with the very first whiteboard question that was to parse a date of the format yyyy/mm/dd using a regexp, to which i replied i probably wouldn't use a regexp to parse a date but if i *did* this is how i would do it; making sure to throw in the caveats that a simple regexp will allow invalid date values through. The response was of course you wouldn't parse it using a regexp you would use split.[^2]

Then we got talking about OO code and i was asked about what the bless function does in perl. I hadn't used that function in so long that my response was something along the lines of "mumble mumble symbol table mumble mumble. So the OO code here isn't using Moose?". The code was not using Moose or any of its equivalents. In fact, all of the objects were implemented as blessed arrays "because it's faster". If you've ever had to maintain perl classes implemented as blessed arrays then you have to wonder what went through the mind of the person who thought it was a good idea, it is a micro-optimisation at best.

Onto database related stuff, where everything is written using a custom database layer through DBI so no ORM. This is not unusual and not unexpected given the clear focus on making things fast. It turns out the database is heavily de-normalised for efficiency, which is fine (i guess) but this is taken to the extreme: a different database for each client. Yep, *several thousand databases*.

At this point we get onto the technical test. It doesn't start well - i have to RDP from a Windows laptop to a Linux server, only to discover that the remote server doesn't even have screen installed. Fortunately it had vim so i could work around the limitations of the development environment by using a combination of tabs, splits, and job control.

I have a look around the working directory and notice that there are tests. That's reassuring! "Oh, nobody usually notices the tests". That's not reassuring! The technical test is to find the insertion point for a given object in another object's attribute, that is an array, said objects being implemented themselves as aforementioned blessed arrays. I write a linear search and run the tests, most of which pass except for the bunch expecting the maximum number of iterations to be n. I discuss this with the interviewer and he suggests i optimise my search algorithm. So i re-write the algorithm to be a binary search, something i have never written before meaning i stumble through it feeling somewhat frustrated, using the perl debugger a couple of times to step through my code. I get there in the end and the test is complete and the functionality is correct and the tests pass.

The interviewer notes that it took me about 40 minutes to complete the test, which wasn't the longest time taken nor was it the shortest. I ask if writing this kind of code is common in the role because i don't have a background in computer science. Yes, yes it is replies the interviewer.

Again we went through the usual interview process, and again i asked my usual perl specific questions. It was pretty clear by this point that i had no interest in working for this company. Their code-base, development environment, tools, and methods didn't appeal; all of which being so outdated and not going to change that i would probably quit within a month out of frustration - something i was trying to get *away* from.

And yet they invited me back for a second interview, which went somewhat better. Another technical test, which this time involved sorting a multi-dimensional hash and printing out a table of information. This was a more perlish technical test, and quite straight forward as i used to write code like this a lot in a previous job. This interview went quite well, but this time i made it clear to my interviewers that i didn't think the position would suit me.[^3]

**Interlude 1a**

I mentioned in passing my usual interview questions and for the most part these are general software developer type questions that should be fairly obvious. There are more specific perl questions that i ask that i think give a good idea of the level of the perl code, and i will list them here with the type of answers that i think would be a good indication of exactly what the level is.

* What version of perl are you currently using?

I would hope this to be a reasonably recent version or even better the most recent stable maintenance release. Of course it is understandable that dev shops may not have the resources to be running the most recent version (5.18.1 as i type) because upgrading takes testing, time, and effort. Some dev shops may not even *want* to run the most recent version, there are reasons for this i won't go into here (although touch on below). The answer to this question may also give some insight into the next.

* Are you using the system/vendor supplied perl or do you build and deploy your own?

Using the system/vendor perl is generally a red flag unless there is absolute consistency throughout the entire stack - from early stage development right through to production, and the chances are high that this consistent state won't last unless there are very strong mechanisms in place to keep it that way. If modules are installed on production through use of cpan(m) or apt-get then this is bad.

This is more a question of dependencies than the actual perl binary. [There](https://metacpan.org/pod/Pinto) [are](https://github.com/tokuhirom/plenv) [already](http://search.cpan.org/~miyagawa/Carton-v1.0.11/) [some](https://stratopan.com/) [good](http://search.cpan.org/~haarg/local-lib-2.000004/) [solutions](http://perlbrew.pl/) to this problem, and if none of those look appealing you can just build your own perl with a custom path and stick it in a git repository. If a company is using the system/vendor supplied perl this my indicate a reluctance to install none-core modules[^4].

* What's your approach to testing perl code?

There is an enormous test ecosystem built around perl, so i would expect to hear about some of the test modules in use because the bulk of this stuff is *easy*; there is generally no excuse for not writing tests. You write new code: you add tests for it. You fix a bug: you add a test to make sure that fix doesn't regress. You decide to refactor some code: you check the coverage of the tests for that code, and if they don't exist or lack sufficient coverage you add to or improve them.

Chances are if there is some perl code you need to test there is already a module in the Test:: namespace to make that process easy. I should note that i'm not advocating a rigid TDD[^5] approach, especially in agile shops, because often you end up rewriting not just the code but also the tests. Whatever the approach i just want to see useful tests. Please.

* Stylistic / Idiomatic perl questions

I find these a distraction. Any perl codebase of significant age and size will almost certainly have a myriad of different styles, so the key is to be open minded. When maintaining code written in a different style i will endeavour to stick to the style in use. There are exceptions, one of which brings me back to a question asked in the interview at the finance company above. What's wrong with the following: 

	open FH, "foo" || die "Can't open foo for read: $!";

The immediate and obvious answer is that it is using a bareword filehandle and two rather than three argument open, both of which are generally considered bad practice these days. The none obvious answer is that the comma has a lower precedence than the `||` operator so if the open call fails this will never die. To correct this you would change the `||` operator for `or`, which itself has lower precedence than the comma so the error checking would now work. Or maybe an even better fix is to use the autodie pragma, which can be lexically scoped.

This is where we get into stylistic opinions, gotchas, knowing what you are doing (or not knowing what you are doing where the case may be), and occasional flame wars. I didn't know the problem *here* was precedence and i argued that i would never be bitten by this bug because i would *never* write code like this. I would always use parentheses and i continue to use parentheses generously in all my perl code to the point that it sometimes looks more lisp than perl. The above function, were it written by me without the use of autodie, would look like so:

	open( my $fh,'<','foo' ) || die "Can't open foo for read: $!";

No ambiguity, no precedence confusion, no chance for obscure bugs that could take hours to track down. A bonus being able to jump to the start/end of the function call using the match function in vim.

Having said these are a distraction it is important to establish if there is a house style. I think it is also important to get a feel for the level of idiomatic perl, not trying to be a smart-arse but more to know that if i write a Schwartzian transform, or use hash-slices, or a dispatch table, or whatever, i'm not going to make people think i'm trying to write obfuscated code; because i'm not, i'm using some of perl's powerful syntax to get stuff done.

* What version control software are you using?

OK not specifically perl but this has become a very important question to me. The answer must be git, mercurial, an equivalent, or paraphrase "$vcs but we are *in the process of* migrating to git/mercurial/equivalent". It really is that important. CVS and subversion are not equivalents by the way.

**Interlude 1b**

I had an offer from the Web development company, which was somewhere i could see myself enjoying, so i went back to my employer and explained the situation. They wanted to fix my frustrations and they also agreed to match the offer, which was a bonus. This worked out in both respects as there were some details in the contract from the Web development company that i did not like at all, not to mention that there were a couple of cross referencing errors in the contract that would have nullified some of the clauses. Going back and forth with them wasn't getting anywhere.

By now it was early February. The next couple of months were quieter and my frustration was receding. However, having had *that* conversation i reasoned it was only a matter of time before i would be leaving. That's not to say there was any sour feeling, because there wasn't, but i just felt as though we were reaching a natural end state.

**Telecommunications, Yokohama**

[Recent](http://blogs.perl.org/users/lestrrat/2013/04/perl5-census-japan-2013.html) [blog](http://blogs.perl.org/users/lestrrat/2013/09/a-lookback-of-yapcasia-tokyo-2013.html) [posts](http://weblog.bulknews.net/post/62389986200/yapc-asia-2013) suggest that Japan has a healthy perl community. Miyagawa's observation that the 1100+ attendees at the last [YAPC::Asia](http://yapcasia.org/2014/) conference were not all perl developers is no doubt true, but YAPC::Asia sees attendance figures like this every year - surely a strong signal that in Japan perl is alive and well. CPAN also sees frequent contributions from Japanese perl developers and there are large companies actively using perl. The problem for the none Japanese perl programmer interested in participating with this community, as [noted by rjbs](http://rjbs.manxome.org/rubric/entry/2017), is the language barrier.

I have always wanted to spend time in Japan, i almost ended up there 12 years ago, so when i saw [this post](https://news.ycombinator.com/item?id=5473712) it sparked my interest. I wasn't 100% serious when i applied for the position because it looked too good to be true. The result was 3 early morning Skype interviews over the next 6 weeks, being offered the position, preparing to move, and then being told the position was no longer available. Yep, that sucked. The position was working for a consulting company who were contracting for a large international telecommunications company. When the large company decided they were now on a hiring freeze the consulting company's hands were tied, they couldn't take me on if there was nothing for me to do.

As you can see from the post the position involved large scale data processing with perl, something that could be very interesting. The technical parts of the interviews covered a wide range of questions from Linux systems administration through to database optimisation. The perl questions were more comp-sci questions than perl, which is understandable given the nature of the position, such as using a regexp to find valid substrings from data and how you could optimise the algorithm. There were questions about object oriented perl coding and typical design patterns. The frustrating thing about the final interview was it being done over Skype (3 people voice only on the same line) and the coding done using Google docs, not the best editor[^6].

**Interlude 2**

Having unofficially handed in my notice, then been told the position i was moving to was no longer available, i found myself in an awkward situation. I don't know the exact reasons the offer was rescinded, but there was some bad timing that didn't help. I had to give 5 weeks notice at my current position and then i had a 3 week trip in the US planned, so there was at least 2 months before i could start. There is something odd here - i was told in the interviews that good perl developers are hard to find, and this is something i heard in interviews for other positions. So what's another month to wait?

As you can imagine my state of mind at this point had shifted back to moving on. I contacted a specialist perl recruiter, saying i needed to find a position in the next few weeks and was now looking outside the UK. The company i was working with were magnanimous, they knew i was actively interviewing for other positions and even gave me time off to attend interviews. I am extremely grateful to them for that.

**Web development, Netherlands**

This company is well known to most perl developers. They are always hiring, they have been hiring for as long as i can remember, and that is representative of their growth rate and success. It is also an indication of their size: over one hundred developers.

The interview was conducted over the phone and involved a variety of questions from simple perl (how do you remove duplicates from an array?) to writing SQL given an example schema. Actually i don't recall that many perl questions, but then this was just a screener. There were a couple of business related questions, which were quite interesting.

Given the company's reputation i made sure to ask about testing, and the answer was as i expected it to be - there isn't much other than for the long running core systems. I suspect the level of churn in the codebase is quite large and i can excuse lack of testing if code is short-lived[^7].

The company was definitely on top of perl, running at least 5.14 IIRC. I made sure to ask how they expected the upgrade to perl 5.18 to go given the changes involving hash key ordering and their lack of test coverage. They answered that it wasn't a concern because they have at least one core perl developer working for them and several contributors. I thought this was an extremely poor answer. 100+ developers probably means several million lines of code *minimum* and with low test coverage how can you be sure there isn't some critical behaviour that relies on hash key ordering?

The interview went well but i told the recruiter that i wasn't interested in the position. My main reason for this was the size of the development team.

**Web development, South UK**

Although i was looking for positions outside the UK the recruitment agency i was in contact with strongly suggested i look at this one. I had decided i wanted to leave the UK, i may explain my reasons another time, but it made sense to at least see what else there was in the UK. This position was outside but close enough to London to be appealing, i didn't want to be *in* London but being close was advantageous.

The technical test, again to be completed as a pre-requisite to an interview, was to implement a well known game using modern perl techniques. So objects, tests, and so on. Actually this test was my favourite out of all the interviews i had. I used the hour to complete the test and sent the code away. I did what i always do when i complete a technical test at home, created a git repository for the code.

Having sent away the code i was thinking about interesting questions the implementation raised, and before the interview i extended the (perl) tests to answer some of these questions. I also wrote a procedural version of the implementation.

The interview covered the technical test and we spoke about methodology. I made sure to mention i had extended some of the tests and written a procedural version. Actually i thought my original implementation may have some bugs as the procedural version showed differences in output. The rest of the interview covered various modern perl techniques and frameworks. A chunk of the interview was taken up doing a code review of some actual code in use at the company. This gave the interviewers an idea of my level and gave me an idea of what type of perl code to expect.

I was offered this position, had i not been looking to move abroad i would have taken it.

**Web development, Central Europe**

I didn't get very far with this position, i had the initial screener over Skype with the recruitment agency (a different one) and was then sent the technical test to complete before the next stage. The test sounded reasonably straightforward, parsing a CSV into a database, but these sorts of things can have a myriad of gotchas and edge cases. I had been officially offered the position in Switzerland (below) so i let the recruiter know that there was no point continuing.

I didn't complete the technical test but made sure to send a fairly comprehensive list of considerations that i would take into account should i have attempted it, along with some thoughts on the design, code structure, possible CPAN modules, and tests. I didn't want to leave the interview process hanging at the point it had got to but didn't have time to do a good job of completing the technical test, so decided on what i think was a good compromise.

**Web development, Switzerland**

So this is where i ended up, and the interesting thing about this position is that there was no technical test. There was an initial phone screener where i talked with my [now] colleague about our backgrounds, our interests, our involvement and history with perl. A week later we met up with the lead developer and discussed the same things and more, including the current codebase and its history, strengths, weaknesses.

Most importantly, on a pure software development level, there was a will to change and a want to progress. Exactly what i stated in the second paragraph of this post. There was also a level of trust and respect from the start, it was explicitly stated that there would be no technical test because they expected my abilities to be true to what we had discussed. Likewise, i stated that i would never apply for a job if i didn't think i was capable of doing it well.

**In summary**

I saw a reasonable range of technical tests, from single quick fire questions to more involved mini projects. I also encountered algorithmic puzzles and was asked about time complexities for them. There is probably value in the later, bioinformatics, large dataset crunching, and so on, but i'm not sure if these problems tell you about the type of *developer* you are interviewing[^8].

If the position you are trying to fill requires off-the-top-of-the-head knowledge that a certain sorting algorithm is *O*(n^2), then that's fine - but are you really looking for a *perl* developer? If you are after a perl developer maybe you would be more interested if they could tell you that in 5.8 perl's quicksort algorithm was changed to shuffle large arrays to defend against quadratic behaviour, and the default sort algorithm was changed to be mergesort. But then perl is very wide and very deep, with 25 years of history. Not knowing this isn't a big deal either.

Overall i think the short projects are the most useful, both from the candidate and interviewer point of view. They are short enough that someone applying for a position should be able to find time to attempt them, and having them completed outside the interview process itself takes away a lot of pressure; they reveal many things that should give real insight into a developer's approach, and discussing the details will reveal even more. If you are advertising for a developer then finding these things out early on is key.

<hr />

[^1]: Although it will not last.

[^2]: Which still isn't good enough. If you're rolling your own date parsing code you are almost certainly doing it wrong.

[^3]: I had got this impression the moment i stepped into the building for the first interview when i asked the security guard at the reception which floor the company was on: "third floor". I then asked if i could put my banana peel in his bin, as finding a bin on the streets of London in BOE territory seemed to be quite a challenge. His response was: "THIRD FLOOR". Well OK then... is my northern accent still that strong?
 
[^4]: Based on anecdata from the above interviews.

[^5]: [Test Driven Development.](http://en.wikipedia.org/wiki/Test-driven_development)

[^6]: I visited the document a few months later, thanks to Firefox's address bar that never forgets, and observed that the same document had been used for several different interviews. If you use Google docs for technical parts of interviews then use a new one each time, otherwise the candidate has full access to any previous answers thanks to the document history. I didn't realise this at the time of the interview.

[^7]: Maybe. How short-lived? What is it doing?

[^8]: A large number of posts on Hacker News would have you believe that this is all these technical tests are made up of: algorithm knowledge and quick fire puzzles. I don't think this is the case.

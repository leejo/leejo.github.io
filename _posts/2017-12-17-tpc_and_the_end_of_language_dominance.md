---
title: TPC and The End of Language Dominance
layout: blog
tags:
    - perl
    - software
    - travel
    - photography
    - yapc
    - tpc
---

I've slowly been reading through the perl[^1] commit history to learn more about it, which is no small task given there are now more than 2^<sup>16</sup> commits going back to the epoch of December 18 1987. But the commit logs for the perl git repository read like a book, so they're a pleasure to look through. In fact, because I didn't want to do this on my computer I've now exported the logs to a PDF and then to my Kindle[^2].

The fifth commit made me chuckle: *perl 1.0 patch 4: make depend doesn't work if `.` isn't in your PATH* - The most recent version of perl5, 5.26, has a change to remove `.` from the default set of library paths because relative paths are potentially evil: the best case breakage is your code doesn't run, the worst case is someone now has root access to your server. So much of the fallout of the removal of `.` from perl's default library paths is, and will be, identical to the above commit from thirty years ago. History repeats.

<img src="{{ site.baseurl }}/images/2017/tpc/tpc_01.jpg" width="625" />

I started reading the commit logs while on the plane flying to Washington D.C. for this year's TPC[^3]. Although the plane had WiFi I didn't fancy paying $5 an hour to take advantage of it. I had forgotten my Kindle, already written my talks, and couldn't think of any bugs to fix in my repositories[^4] so decided to read some commit logs.

The very first commit for perl reads simply: *a "replacement" for awk and sed*. Of course Larry knew that was unlikely to ever happen even in the long term, and certainly not in the short term, given "replacement" was intentionally quoted. And of course it didn't happen. Thirty years later awk and sed are still everywhere, and I suppose so is perl. So Perl didn't really replace awk or sed and instead it joined their club. Being installed on every Unix-based box in existence, and many more beyond, is probably not a bad club to be a member of.

What's also interesting about the first commit is how few languages are referenced in the man page: *It combines (in the author's opinion, anyway) some of the best features of C, sed, awk, and sh*. There are also passing references to others: *Language historians will also note some vestiges of csh, Pascal, and even BASIC-PLUS.*

Imagine the first commit for a new language today and how many other languages it would be building upon. I suspect the number would be far greater than four, certainly above ten and maybe even twenty; we have a myriad of general-purpose, high level, lower level, and specialised languages to work with these days and those will all influence languages that are created after them.

<img src="{{ site.baseurl }}/images/2017/tpc/tpc_02.jpg" width="625" />

So if Perl didn't replace awk and sed then exactly what *has* it done? We can probably glean some of that from the various talks at this year's Perl conferences.

**Washington D.C.**

The Perl Conference in Washington D.C. this year was the twentieth on that side of the pond, if you go back to its origins in 1999, as two were held in North America in 2003. The original "The Perl Conference" became OSCON and "The Perl Conference" became YAPC, Yet Another Perl Conference. In 2016 someone thought to ask O'Reilly if YAPC could be called The Perl Conference, O'Reilly said yes, and "The Perl Conference" returned to our calendars.

The Perl Conference 2017 in Washington D.C. included many talks about various projects, ideas, ambitions, concerns, thanks, technologies, and so on. One of which was [Curtis "Ovid" Poe's](https://metacpan.org/author/OVID) [talk](https://www.youtube.com/watch?v=AWy9bC8lBns) about his upcoming [Tau Station](https://taustation.space/) game - a text-based, free-to-play science fiction MMORPG built in Perl. And if you want science fact rather than science fiction, [Carey Witkov](https://scholar.harvard.edu/witkov/home) [demonstrated](https://www.youtube.com/watch?v=I7OMJKguseo) how the data fitting method used to detect the [Higgs Boson](https://en.wikipedia.org/wiki/Higgs_boson) can be implemented in Perl.

<img src="{{ site.baseurl }}/images/2017/tpc/tpc_03.jpg" width="625" />

One of the most compelling reasons to go to a conference is for those ideas or discoveries that seem simple after the fact but can have a huge impact (sometimes covering the cost of attending many times over). This happened for me in [Frew's](https://blog.afoolishmanifesto.com/) [talk](https://www.youtube.com/watch?v=WHKQ2JfTaIM) about scaling at ZipRecruiter - a six year old company that is growing rapidly. Frew made some simple suggestions about logging a count of database queries per request. When I got back I did this, and within a day had cut the number of queries to our database in half.

[Henry Van Styn](https://metacpan.org/author/VANSTYN) [talked](https://www.youtube.com/watch?v=5s_eSYwXDwM) about his new blogging engine, Rapi::Blog. It is powered by RapidApp, which itself is powered by DBIx::Class, which builds atop DBI. Powerful tools and libraries beget powerful tools and libraries.

And then there were the small personal projects, like [Jason McIntosh](http://jmac.org/) who [created](https://www.youtube.com/watch?v=N4JNYCjerNM) a [site](https://bumpyskies.com/) to forecast turbulence for nervous air passengers (such as himself). [Joel Berger](https://metacpan.org/author/JBERGER) kept forgetting to close his garage door so wrote a tool to do it remotely, and even [showed](https://www.youtube.com/watch?v=aJc5yYONBBc) a live demo of this. [Brian Gottreu](https://github.com/gottreu) [demonstrated](https://www.youtube.com/watch?v=ODvTsv-TsSg) playing music with Perl, because why not?

These are just a few of the many talks given at the conference, and all of the talks are available for viewing on [YouTube](https://www.youtube.com/user/yapcna/videos). You can find the original [schedule ](http://www.perlconference.us/tpc-2017-dc/schedule/) with talk abstracts and links to slides on the conference [site](http://www.perlconference.us/tpc-2017-dc/).

<img src="{{ site.baseurl }}/images/2017/tpc/tpc_04.jpg" width="625" />

Another interesting talk at the conference with no direct connection to Perl (this is not unusual, non-Perl specific talks are more than welcome) was a talk about troubleshooting. This talk was a useful look at definitions of failure, things that matter in troubleshooting, and monitoring everything.

Unfortunately the talk contained a small comment, completely out of context of the subject and probably an ad-lib, that was a dismissal of an entire language community. I'm highlighting this comment here but could pick others from the conference, several from this year even. The Perl Conference is a polyglot conference, but there are still attempts at humour from some speakers taking potshots are other languages. When the humour misses the mark, or the arguments are poor, it grates. Please don't do this, it won’t encourage people from other communities to come and speak to ours.

On the second day of The Perl Conference a DeLorean DMC-12 was parked outside the entrance to the conference venue. A car that had taken several years to get from the prototype to production stage and had to be respecified due to overly ambitious design ideas[^5]. A piece of technology from the 1980s that everybody of a certain generation knew, but nobody appears to use anymore. As if to extend the symbolism further this particular DeLorean had a dashboard system with large parts written in Perl.

**Amsterdam**

The first few years of perl's commit history seem to be where most of the portability effort took place. That's the range 8d063cd8..e334a159, or up until the early perl5 alpha releases. About 3,000 commits and five years of work. Perl was gaining traction around version 4, mostly in the area of sysadmins, and you will still find perl4 style scripts now and then when digging around in legacy systems.

<img src="{{ site.baseurl }}/images/2017/tpc/tpc_10.jpg" width="625" />

Let's take this moment to note that perl5 was in alpha for a good eighteen months, with no patches applied to perl4 during that time, and the release of perl5 was where it *really* started to get interesting: Six years, nine months, and two days after the very first commit. As we saw from the first commit message Larry saw Perl as a "replacement" for awk and sed, but where perl5 gained the most traction was with the birth of the dynamic web.

I've already covered that history [previously](/2016/02/22/all_software_is_legacy/), so won't repeat myself. What I can say is that there are many companies who have remained faithful to Perl, and still have large parts of their stack running on it. This includes [Booking.com](https://www.booking.com) who are based in Amsterdam, so of course when the European version of The Perl Conference was held in Amsterdam in 2017 they had a high representation there. In fact, [Ivan Kruglov](https://github.com/ikruglov) gave a [talk](https://www.youtube.com/watch?v=Ifed_PcDe-A) on some of the challenges the company faces in scaling their platform and tools.

While there is some crossover of talks between Amsterdam and Washington D.C., such as my [own](https://www.youtube.com/watch?v=kkd9hYC3xok), the majority are unique to each conference so you should also check out the [TPCiA video channel](https://www.youtube.com/channel/UCd9Fs_oZBMmTUWKJKuR_qdg/videos). There tends to be more crossover in themes and technologies, and the polyglot nature also continues: [Matt S Trout's](https://metacpan.org/author/MSTROUT) [talk](https://www.youtube.com/watch?v=-c-uA9F4-o4) about ES6, [Flavio Glock's](https://github.com/fglock) [talk](https://www.youtube.com/watch?v=n9htVGitBIE) about porting the Perl Programming Language to the JVM (!), and [Ruth Holloway's](https://hiruthie.me/) [talk](https://www.youtube.com/watch?v=NehoDpaLBO8) about the pleasures and perils of a being a programming polyglot.

<img src="{{ site.baseurl }}/images/2017/tpc/tpc_08.jpg" width="625" />

On the personal project side of things, [Ervin Ruci](https://metacpan.org/author/ERUCI) [talked](https://www.youtube.com/watch?v=2gA3-kJ5avk) about mapping world literature - an ambitious project if you consider there are (if you watch the talk) over 130 million books in existence. The [lightning talks](https://www.youtube.com/watch?v=EDQu0msc63E) included such topics as processing ham radio data, cooking for one hundred and fifty people, and [many](https://www.youtube.com/watch?v=ERcN7jGeEzA) [more](https://www.youtube.com/watch?v=c5y4MhtJMek). If you only watch one lightning talk, make sure it's [Paul Evans](https://metacpan.org/author/PEVANS) [dive](https://www.youtube.com/watch?v=EDQu0msc63E&feature=youtu.be&t=3066) into "Full Stack", because it's not what you expect.

In one of the smaller rooms of the conference a wall was covered with trophies. There on display was a history of achievement, in a multitude of disciplines, each one saying that someone somewhere at sometime was the best at something. But these trophies had been discarded by their original owners, and were now merely decoration. If you picked any one up and looked at the base you might find a price sticker, evidence of their thrift store origins and long since lost sentiment.

**Elsewhere**

This year I decided to get more involved on the event side of Perl: shooting photos for [The Perl Toolchain Summit](http://blogs.perl.org/users/book/2017/05/try-this-awesome-trick-to-make-your-language-toolchain-better.html), running the [Perl Events Instagram feed](https://www.instagram.com/perl_events/), and helping organise both [The London Perl Workshop](http://act.yapc.eu/lpw2017/) and [The Swiss Perl Workshop](http://perl-workshop.ch/). In part this was down to the long term photo project I am working on (offcuts shown here), but it left me little time to actually shoot at those events so I may step back slightly next year.

What I gained from this was an appreciation of just how much effort is required to organise even a small Perl event. For The London Perl Workshop, over the period of five months leading up to the event, we sent/received a total of 1,233 emails; had a weekly hour long call that covered three vastly different time zones meaning an early morning or late night for at least one of us; liaised with over thirty speakers to optimise their talks and the workshop schedule; researched and learned about different recording equipment; contacted dozens of potential sponsors to fund the entire event; and booked an appropriate venue, the necessary tea, coffee, and snacks - community provided baked cakes and muffins.

The day turned out to be a success, and thanks to [the sponsors](http://act.yapc.eu/lpw2017/sponsors.html) the funding of the event remained in the black. So if you attend a community organised event of any sort in future make sure to thank the organisers, volunteers, sponsors, and speakers, as they put a lot of their free time into making the day(s) run smoothly.

<img src="{{ site.baseurl }}/images/2017/tpc/tpc_07.jpg" width="625" />

**The Future?**

Naming things is hard. Programmers know this and we struggle with naming things frequently. The name of a variable or function or resource or configuration setting or file or whatever can clarify or obfuscate reasoning, an important issue if you're keeping the future of your code's maintainability in mind. However many of these choices are often preloaded with arbitrary conventions set decades ago under different constraints. So what do you call a language designed to last one hundred years?

In Perl 6's prototyping stage it was known as many things and had many related projects: Parrot, Ponie, PCT, NQP, Rakudo, Pugs, elf, SMOP, mildew/mold, mp6, kp6, v6, MAD, STD, sprixel, gimme5, niecza. Now the de facto version is Rakudo Perl 6, targeting the MoarVM (and JVM). If you're confused it's worth mentioning that Perl 6 is actually "anything that passes the official test suite"[^6]

I really don't care that Perl 6 is called Perl 6, or not called Perl 6. I care about getting stuff done, and there are three things I know for certain: programmers who dislike perl5 will probably dislike Perl 6 (and vice versa); all languages have arbitrarily annoying or seemingly stupid edge cases, rules, and exceptions (this also applies to natural languages); Perl 6 lets you get stuff done.

Perl 6 was finally released in December 2015, which means it is now celebrating its second birthday. So really it is still in its very early stages, it has a very long way to go yet and people are only just starting to play with it[^7]. Just for comparison take a look at Python 3 - nine years old; Go - eight years old; Rust - seven years old. Perhaps one of these will come to dominate over the next decade, but I really don't expect any of them to.

<img src="{{ site.baseurl }}/images/2017/tpc/tpc_06.jpg" width="625" />

If you release a language now you cannot expect it to dominate in the short term. In the long term maybe it will pick up some steam, but by that point something else will have been released to "replace" it.

With the exception of Java, C, and perhaps C++, all programming languages are fighting it out in the area of rounding errors for popularity. C#, .NET, PHP, Ruby, Python, JavaScript, Swift, Go, Rust, and even the Perl programming language are all approximately as popular as one another if you follow some of these language usage indexes[^8].

In fact, look at historic trends and you will see the path is leading towards no dominant language[^9]. This makes perfect sense, the landscape is massively fractured compared to what it once was. Over one hundred new languages have appeared since Perl did. If the "rewrite it in Rust" brigade follow their own hype then the indexes of C and C++ are going to head that way also, in fact they already are if you look back just a few years.

What's more, the number of programming languages has been steadily increasing. At the time of writing we have one language for each day of the year[^10]. How many can you name? Fifty? How many have you used at one point on a professional basis? Fifteen? How many do you use on a regular basis? Five? How many do you know deeply, idiomatically, fluently?

<img src="{{ site.baseurl }}/images/2017/tpc/tpc_09.jpg" width="625" />

So where does this leave Perl 6? The answer is easy: I don't know, and nobody else does either. People are free to dismiss the language on any arbitrary position they choose, but other people will use it in many ways it was and wasn't designed for. That's what people do with high level programming languages.

How about this: pick your language, your second, your third, and get stuff done. If you didn't pick Perl 6 as one of those just remember to take another look at it now and then. If you *really* don't want to look at Perl 6 then instead come back in twenty eight years and take a look at all the unexpected ways in which other people got stuff done.

<div class="footnote">Thanks to Neil Bowers and Nicholas Clark for reading a draft of this post and filling in some history.</div>

<hr />

[^1]: Before we get started: there is "perl", the interpreter, and there is "Perl", the language. There is no such thing as "PERL". While I will occasionally confuse "perl" and "Perl", probably even in this post, you will never see me use "PERL".

[^2]: For the curious - the perl git repo was migrated from perforce and the history before 5.004 was rebuilt from the original Usenet posts/patches, so it does read like a git repo history should read: subject + rationale for each change. The logs up until the v5.26.0 tag contain 2,547,972 words across 659,680 lines. When exported to a PDF, via `git log --reverse v5.26.0 > perl5_git_log.txt; cupsfilter perl5_git_log.txt > perl5_git_log.pdf` they result in a 10,750 page 21MB file.

[^3]: TPC: The Perl Conference

[^4]: This offline and distributed version control system needs an offline and distributed bug tracker.

[^5]: [DeLorean DMC-12 history](https://en.wikipedia.org/wiki/DeLorean_DMC-12#History) and [more about the Nrdvana Project](http://www.nrdvana.net/project-software.html)

[^6]: [Design docs](http://design.perl6.org/S01.html) and [test suite](https://github.com/perl6/roast)

[^7]: [One](http://www.evanmiller.org/a-review-of-perl-6.html) and [two](http://www.evanmiller.org/why-im-learning-perl-6.html)

[^8]: You see, I intentionally wrote that sentence in a way to game at least one of these indexes' algorithms - just one way in which they suck.

[^9]: I hesitate to link to it, but [here it is](https://www.tiobe.com/tiobe-index/)

[^10]: [Timeline of programming languages](https://en.wikipedia.org/wiki/Timeline_of_programming_languages)

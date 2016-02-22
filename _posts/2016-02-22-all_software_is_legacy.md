---
title: All Software is Legacy
layout: blog
tags:
    - software
    - perl
    - cgi
---

In what may be judged in years to come as a moment of madness, I have volunteered to be the primary maintainer of the Perl CGI module (CGI.pm). For the none technical readers of this post: CGI.pm is a few thousand lines of code that in the mid to late ninetees, and even some years later, was helping many websites function. Ever visited a website and seen 'cgi-bin' in the URL? Yep, that was *probably* running Perl scripts and those were almost certainly using CGI.pm

I actually volunteered to be the primary maintainer back in April 2014. The reason I've taken so long to write this post is that I've been busy, er, maintaining the module. I've fixed the bulk of existing issues[^1], written and given a talk on the plan for the module[^2], released an extra module to point people at better resources[^3], and occasionally been responding to questions about the module[^4], oh and of course the usual reason that it takes posts several months to get out of my drafts folder.

Despite having used the module frequently over the years, and even volunteering to be the primary maintainer, I do not like it. It was an important and useful module early on, but it has no place in a modern [perl] web stack and hasn't deserved a place in at least a decade. This is not a criticism of the original author(s) or the original implementation, it's simply down to the fact that the web development field has progressed and lessons have been learnt.

An important point to make is the difference between CGI and CGI.pm. CGI is the Common Gateway Interface protocol, or specification if you like, whereas CGI.pm is an implementation of that spcification. CGI is still a reasonable protocol for doing web programming in some cases, wheras CGI.pm is not.[^5]

CGI.pm wasn't the first implementation, but it was widely adopted after being included with the Perl core:

	/Users/leejo/working/CGI.pm > corelist CGI

	Data for 2013-08-12
	CGI was first released with perl 5.004

And when was perl 5.004 released? 15th May 1997, almost twenty years ago.

**The Past**

Up until that point if you wanted to do CGI programming with Perl you had to install CGI.pm manually, write your own implementation, or install scripts that did it for you. A well known example is cgi-lib.pl.[^6] In fact, it would probably be fair to say cgi-lib.pl was commonly used as CGI.pm included functions to make porting scripts from cgi-lib.pl easy.

Over time CGI.pm grew and grew, and grew some more, until it had implemented most (if not all) of the CGI protocol specification and beyond: [https://tools.ietf.org/html/rfc3875](https://tools.ietf.org/html/rfc3875)

Take a look at that RFC and see if anything stands out. I'll give you a clue: it's to do with the date... Got it? Yes, RFC 3875 was finalised in October 2004, some seven years after CGI.pm was released with Perl and at least a decade after the original NCSA informal specification was released. Work on RFC 3875 didn't start until 1997, by then there were already many different implementations of a specification that had no official formal definition.

The first official draft of the CGI specification was not released until [May 1998](https://tools.ietf.org/html/draft-coar-cgi-v11-00). By then there were several large sites already running on Perl and even with CGI.pm: eBay, IMDb, cPanel, Slashdot, Craigslist, Ticketmaster, Booking.com, several payment processors, and many many others.[^7]

Before that the CGI protocal was very much a work in progress, its history looking something like this[^8]:

* 02 Jun '93: Dave Raggett updates his HTML+ DTD to include support for "INPUT and SELECT form interaction elements"[0]

* 05 Sep '93: Marc Andreessen says NCSA Mosaic 2.0 will submit form parameters as: "name=value&name=value&name=value"[1]

* 13 Sep '93: Rob McCool announces NCSA httpd 1.0a1[2], which supports "server scripts, which are executable programs which the server runs to generate documents on the fly. They are easy to write and can be written in your favorite language, whether it be C, PERL, or even the Bourne shell" [3]

* 14 Nov '93: Rob McCool complains that his users are avoiding writing code because they think the interface will change, and throws open a bunch of open-issues he wants fixing in what he calls the "gateway"

* 17 Nov '93: Rob McCool releases "CGP/1.0 specification"[7], renamed to CGI two days later

* 13 Dec '93: NCSA httpd 1.0 released, with "CGI" support[6]
	 
As the RFC drafts were expanded more sites and software were released that used Perl and CGI.pm: TWiki, Bugzilla, Movable Type, LiveJournal, and thousands of others. Even the [Internet Pinball Database](http://www.ipdb.org/).

**So What Happened?**

Time passed, more and more features were added, scope crept.[^9] After a few years it turned out that some of the implementation decisions didn't fit well into modern requirements, and others could lead to nasty vulnerabilities if not used with care. Some workarounds could be made: fastcgi for persistence, mod\_perl for speed and pluging into apache, but they required adapting of scripts using CGI.pm. Often they came with a cost - mod\_perl's propensity to segfault being one of them.

This wasn't unusual, the web was immature back then and development around it reflected that. There's also the consideration that you can't predict the future and it's incredibly difficult to make accurate estimates in software development. Sometimes you just stick a TODO or FIXME in the code and worry about it later - Y2K anyone? IPv4?

CGI.pm grew to a point that it could be used for many different functions of early web development, and could be used in different ways within each of those different functions. The result was that CGI.pm had to include an awful lot of code to deal with these different uses, its dual interface, edge cases, and existing bugs. Simple functions that should be a couple of lines long accumulated cruft.

**Cruft**

	1	'_maybe_escapeHTML' => <<'END_OF_FUNC',
	2	sub _maybe_escapeHTML {
	3		# hack to work around  earlier hacks
	4		push @_,$_[0] if @_==1 && $_[0] eq 'CGI';
	5		my ($self,$toencode,$newlinestoo) = CGI::self_or_default(@_);
	6		return undef unless defined($toencode);
	7		return $toencode if ref($self) && !$self->{'escape'};
	8		return $self->escapeHTML($toencode, $newlinestoo);
	9 	}
	10	END_OF_FUNC

The above chunk of code is one of the smaller functions from CGI.pm and demonstrates how much history the code has accumulated over the years. What does it do? It sanitises text input to prevent html tags (and such) being injected into output. It will, for example, turn the < character into `&lt;`.

This is used to prevent cross-site scripting attacks. The thing is, minus all the boilerplate and with a clean interface, to do this requires just three lines of code[^10]:

	1	sub _maybe_escapeHTML {
	3		return escapeHTML( @_ ) if $_[0]->{'escape'};
	4	}

So what's all the other code doing? Let's break it down.

	1	'_maybe_escapeHTML' => <<'END_OF_FUNC',
	...
	10	END_OF_FUNC

Lines 1 and 10 were added to defer the compilation of this function to runtime. Twenty years or so ago, when CGI.pm was just getting popular, hardware wasn't optimal for compiling several thousand lines of code for every request. To speed up the load of the module a large number of functions were wrapped as strings, to then be compiled only when they were called - so called "lazy loading".

	3		# hack to work around  earlier hacks
	4		push @_,$_[0] if @_==1 && $_[0] eq 'CGI';
	5		my ($self,$toencode,$newlinestoo) = CGI::self_or_default(@_);

Lines 3 to 5 get around the fact that CGI.pm has a dual interface - its methods can be called procedurally or as method calls on an instance of the class (an "object"). To provide this dual interface requires every single method within CGI.pm check how it was called and then create a default object when it was called procedurally.

	6		return undef unless defined($toencode);
	7		return $toencode if ref($self) && !$self->{'escape'};

Lines 6 and 7 are sanity checks and a short circuit. Line 6 says "if we weren't given any input then don't continue" and line 7 says "if we decided earlier that we don't want to sanitise input then don't continue". It's arguable whether or not these belong in this function; in the case of 6 I would say "yes, but calling the method with no input is probably a bug in the calling code", and in the case of 7 I would say "yes, but only if this cleans up the code elsewhere" (it turns out this function is called 39 times internally so it *is* cleaner to have the check here).

This is one small function in, what was, an eight thousand line module. CGI.pm currently has over 150 functions, excluding the private functions and auto generated ones, each function has the same or similar code to deal with the old code calling it and handle the implementation decisions taken in the module's early life.

**Standing Still, Moving Forwards**

When I tell none-perl developers, or sometimes ex-perl developers, that I primarily code in Perl they often express shock that Perl is still used. They don't know the modern ecosystem, or that Perl is still actively used in many places for new development[^11], or the dozens of Perl conferences attended by thousands of developers every year, or that Perl is maintained with yearly major releases. Most strange is that they seem to think that the hundreds of millions of lines of Perl code just evaporated the moment they switched to their new language of choice.

Many software systems are like snakes shedding their skin, going through constant maintenance and every few years having their components replaced completely. However their core functionality remains the same during this process, and to many users they can appear to go for years without any change at all. Sometimes the snake is replaced with a newer, more shiny snake, but users aren't compelled to use it or don't even know if it's the right snake.[^12]

Some of the most successful sites on the web have gone through multiple rewrites over the years.[^7] Many more sites and applications haven't. Because of the have nots CGI.pm must remain backwards compatibility. So whilst I have removed most of its dead skin there is little else I can do to improve its remaining state. Much software is like this, parts of the ecosystem must stand still whilst other parts move forward.

Besides, there is no value in developing CGI.pm further anyway. There are much better alternatives available within the Perl ecosystem that will not only handle all of what CGI.pm can do but also expand the functionality to work with modern code and requirements. These are the parts of the ecosystem that have moved forward. CGI.pm is very much legacy software.

**"Legacy"**

If you see or hear the term "legacy" used in reference to software, code, an application, or a device, you can be sure the usage is pejorative.[^13] However the reality is that all software is legacy and we often just substitute the term "legacy code" for "technical debt". Whilst they're not exactly the same thing the presence of one almost certainly suggests the other.

"Technical debt"[^14] is a more useful term anyway as it implies a route to legacy software. If we do not pay off the debt we have to declare bankruptcy, we have to abandon the code. This rarely happens in software, complete abandonment, even decades old code requires support and maintenance.

But technical debt is a useful concept as speed to market is often more important than future proof code.[^15] Future proof code is an oxymoron anyway, the idea that code can forever work when the foundations shift beneath it and expectations change.[^16] So when writing code we worry about the short term, the long term can look after itself.
 
Do you think Google, Facebook, et al, would have grown to their size and domination had they anticipated the size of their business a year, five years, a decade down the line and spent extra time designing the systems to deal with that? "We can't use php, mysql, whatever, because it won't scale to a billion users?" No, they *make* it scale and if they can't they will replace it with something else that can, later.

**Future Legacy**

It's easy to forget that there is legacy software still in use that predates the internet. Heck, the web has become so dominant that sometimes it's easy to forget that software existed before it. The next time you take a flight see if you can peek at the check-in software, something probably written in the sixties and running in an emulator. Or how about your bank[^17], or your doctor's office?[^18] These are the systems that are like cement.[^19]

The browser you're reading this in has a history going back twenty years. The high level protocol the data was delivered by predates that by another five. The low level protocol beats that again by ten or twenty depending on which spec you assume as the basis. It's legacy all the way down, and as we build on top of that we create legacy all the way up. All of this creates constraints on what we can produce, and sometimes we find dangerous cracks in the foundations.[^20]

The correct way to build that legacy is to correctly abstract the internals away and provide clean and sane interfaces. The cleaner the interface and the looser the coupling the easier it is to unplug the upstream code from it and into something else. But paradoxically the cleaner and saner your interface the more likely it is to succeed and thus more likely to become constrained by its users, to solidify.

Legacy pervades the software we use from the trivial small utilites included with the operating systems (coreutils) to the encyption mechanisms that we rely on (openssh) and the software that synchronizes your clocks (ntp[^21]). Apple still ship their OS with an insane filesystem because there is so much legacy software that will break should they fix it.[^22]

Every line of new code you write will inevitably become legacy software. The language or idiom you choose will fall out of favour[^23]; the framework will be superseded; the libraries it uses will need updating due to bugs and vulnerabilities or some dependencies will be abandonded. Just look at github, the most popular hosting site for open source software projects, quickly becoming the world's largest software graveyard. Even the shoulders you stand upon are sagging.[^24]

Lest you think you're immune to this ask yourself if you've ever written code for more than one company? Ever provided a patch or bug fix for a library? Replied to a question on stackoverflow? You, me, every software developer out there, right now, is creating legacy software.

**Legacy**

If the above gives the impression that the end of software is nigh, let me reassure you that it's not - this is just simply the way things are. There's a thought process that goes with software development which reads something like "if you can't look back at your old code and see how bad it is then you're not improving". Substitute "software development" for whatever your trade. Everyone writes bad code, makes bad implementation decisions, poor estimates, and so on. Everyone starts out as a novice.[^25]

Just as all software contains bugs, all software is legacy. Software development is about solving specific problems that exist now and not about solving none-specific or future problems. Every few years, once a decade perhaps, there is a paradigm shift. Given enough time parts of the technological bedrock will have changed enough to render previous patterns obsolete.

This is perhaps why new developers tend to push back against older code[^26], sometimes drawing assumptions from the implementation and using it to ridicule the choir. The shiny new can be attractive, however the newer you are the quicker your software becomes legacy because you don't yet know what you don't know. The older code still exists because the cost gains in replacing it are not yet compelling enough, and it just works.[^27] The new code you write will find itself in the same situation sooner than you expect.

The important thing is that we learn from that and we make sure the future legacy is easy to understand. Write clean interfaces, good tests, descriptive commit messages.[^28] Another important thing is to understand the lineage; In CGI.pm's case the module was in part responsible for Perl's huge popularity early on, and even propelled Perl forwards. When the limitations of CGI.pm's implementation were hit alternative code was written in response, again and again, leading to where we are today.

Where we are today is pretty interesting and lots of fun, tomorrow will be more interesting and even more fun. So this will be the last I write, talk, present, or ramble on about CGI.pm, even though it's likely that the module will still be with us for a while. I'd rather concentrate on current and future legacy code, not the past.

<div class="footnote">Thanks to Dave Cross for reading a draft of this post</div>

<hr />

[^1]: "Fixed" meaning either [resolved](https://rt.cpan.org/Public/Dist/Display.html?Status=Resolved;Name=CGI) or [rejected](https://rt.cpan.org/Public/Dist/Display.html?Status=Rejected;Name=CGI)

[^2]: The first five minutes [here](https://www.youtube.com/watch?v=BBYag43ojjM) and slides viewable [here](http://localhost:4000/past_present_future_cgi/)

[^3]: [CGI::Alternatives](https://metacpan.org/pod/CGI::Alternatives)

[^4]: Eh, there's a few bits and pieces in various places. Perlmonks, LinkedIn, Github, etc.

[^5]: [One](http://shadow.cat/blog/matt-s-trout/mstpan-1/) [Two](http://shadow.cat/blog/matt-s-trout/mstpan-2/) [Three](https://www.youtube.com/watch?v=tu6_3fZbWYw) [Four](http://perlhacks.com/2015/12/long-death-cgi-pm/)

[^6]: [http://cgi-lib.berkeley.edu/](http://cgi-lib.berkeley.edu/) - and of course Matt's script archive.

[^7]: [https://en.wikipedia.org/wiki/Perl#Applications](https://en.wikipedia.org/wiki/Perl#Applications) [https://news.ycombinator.com/item?id=10590612](https://news.ycombinator.com/item?id=10590612)

[^8]: Thanks to Pete for putting this together, the links to various sources: [0](http://1997.webhistory.org/www.lists/www-talk.1993q2/0430.html) [1](http://1997.webhistory.org/www.lists/www-talk.1993q3/0812.html) [2](https://groups.google.com/forum/#!topic/comp.infosystems.www/qd9cQTogWig) [3](http://www6.uniovi.es/~antonio/ncsa_httpd/info/Scripts.html) [4](https://github.com/TooDumbForAName/ncsa-httpd/blob/1.1/cgi-bin/test-cgi) [5](http://1997.webhistory.org/www.lists/www-talk.1993q4/0485.html) [6](https://groups.google.com/forum/#!topic/comp.infosystems.www/g4UxMaqf0Mg) [7](http://1997.webhistory.org/www.lists/www-talk.1993q4/0518.html)

[^9]: [Scope creep](https://en.wikipedia.org/wiki/Scope_creep)

[^10]: The function actually calls *another* function and, guess what, that called function has all the legacy boilerplate code as well.

[^11]: [http://www.builtinperl.com/](http://www.builtinperl.com/)

[^12]: [https://news.ycombinator.com/item?id=11100251](https://news.ycombinator.com/item?id=11100251) [https://hynek.me/articles/python3-2016/](https://hynek.me/articles/python3-2016/)

[^13]: [https://en.wikipedia.org/wiki/Legacy_system](https://en.wikipedia.org/wiki/Legacy_system)

[^14]: [https://en.wikipedia.org/wiki/Technical_debt](https://en.wikipedia.org/wiki/Technical_debt)

[^15]: [How You Can Leverage Technical Debt & Why You Should](https://medium.com/startup-guide-anti-patterns/how-you-can-leverage-technical-debt-why-you-should-4ec48a387751#.tx6c6vy46) / [https://news.ycombinator.com/item?id=1092514](https://news.ycombinator.com/item?id=10925141)

[^16]: [How about rewriting the inflight software systems for something over 4billion kilometers away?](http://www.popularmechanics.com/space/a17991/voyager-1-voyager-2-retiring-engineer/)

[^17]: [http://www.theguardian.com/commentisfree/joris-luyendijk-banking-blog/2012/may/30/former-it-salesman-voices-of-finance](http://www.theguardian.com/commentisfree/joris-luyendijk-banking-blog/2012/may/30/former-it-salesman-voices-of-finance)

[^18]: [https://blogs.harvard.edu/philg/2015/12/07/brain-surgeon-tortured-by-software-developers-and-hospital-bureaucrats/](https://blogs.harvard.edu/philg/2015/12/07/brain-surgeon-tortured-by-software-developers-and-hospital-bureaucrats/)

[^19]: Description taken from a [very interesting metafilter thread](http://ask.metafilter.com/257424/Why-are-airline-computer-reservation-systems-so-slow#3740883) (start there and keep reading).

[^20]: [http://dankaminsky.com/2016/02/20/skeleton](http://dankaminsky.com/2016/02/20/skeleton)

[^21]: [http://www.informationweek.com/it-life/ntps-fate-hinges-on-father-time/d/d-id/1319432](http://www.informationweek.com/it-life/ntps-fate-hinges-on-father-time/d/d-id/1319432)

[^22]: [https://news.ycombinator.com/item?id=8876319](https://news.ycombinator.com/item?id=8876319) / [http://arstechnica.com/apple/2011/07/mac-os-x-10-7/12/#hfs-problems](http://arstechnica.com/apple/2011/07/mac-os-x-10-7/12/#hfs-problems)

[^23]: [http://legacy.python.org/dev/peps/pep-0373](http://legacy.python.org/dev/peps/pep-0373)

[^24]: [https://www.mnot.net/blog/2014/06/07/rfc2616_is_dead](https://www.mnot.net/blog/2014/06/07/rfc2616_is_dead) / [http://www.washingtonpost.com/sf/business/2015/05/31/net-of-insecurity-part-2/](http://www.washingtonpost.com/sf/business/2015/05/31/net-of-insecurity-part-2/)

[^25]: [http://www.kitchensoap.com/2012/10/25/on-being-a-senior-engineer/](http://www.kitchensoap.com/2012/10/25/on-being-a-senior-engineer/)

[^26]: [https://medium.com/@landongn/12-years-later-what-i-ve-learned-about-being-a-software-engineer-d6e334d6e8a3#.szqirf714](https://medium.com/@landongn/12-years-later-what-i-ve-learned-about-being-a-software-engineer-d6e334d6e8a3#.szqirf714)

[^27]: [http://glasnt.com/blog/2015/05/30/legacy-devops.html](http://glasnt.com/blog/2015/05/30/legacy-devops.html)

[^28]: [{{ site.url}}/2013/11/03/please_use_verbose_commits/]({{ site.url }}/2013/11/03/please_use_verbose_commits/)

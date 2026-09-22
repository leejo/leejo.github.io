---
title: I Bought A Scanner (No, Really This Time)
date: 2026-09-22
layout: blog
tags:
    - photography
    - xpan
    - technology
    - printing
    - scanning
---

<p></p>

<div class="footnote">This is a transcript from a talk I gave at the German Perl Workshop earlier this year. If you'd prefer to watch the video recording, you can find it <a href="https://www.youtube.com/watch?v=nuRe_YN5Jco">here</a>.</div>

<p></p>

I have lots of photographic projects on the go. Lots of these being on film, as some of these I started shooting a long time ago. I don't have any particular loyalty or attraction to film, it's just that I started shooting many of these projects before affordable medium format digital was available. Since I mostly shoot medium/large format film I never really jumped to digital until recently, so film has continued to feature heavily in my workflow.

That said, it's a pain in the arse to shoot film now given the spiraling costs, limited availability, and issues around traveling with it: modern airport CT scanners, being rolled out across many airports, are much more convenient but will fog film. Asking for a hand inspection often comes down to arbitrary timing - how busy the security is, how experienced the operator is, or if you're lucky/unlucky. I've had film forced to be scanned (and fogged) and politely argued with security on more than one occasion. I don't want to deal with that so don't travel with film anymore, thus I am shooting less of it and have mostly moved to digital. I still have a tonne of film I need to scan and process however.

<div class="img-centre">
    <img width="650px" src="{{ site.baseurl }}/images/2026/scanner/files.jpeg" />
</div>

Here's just some of the binders and files of film. I don't plan to scan all of this, but I do plan to scan the ones I need to. Probably in the region of a couple of thousand frames. I want to scan to the highest possible quality (within reason) for archiving, book projects, and large prints. If you're wondering how large I print, it can be up to 160x60cm panoramics for selling. This is restricted by the size of my printer (that's [another story](https://leejo.github.io/2023/01/23/printer/)).

**Three Years Ago**

Three years ago I almost bought a scanner. I ended up [blogging about it]({{ site.baseurl }}/2023/01/25/scanner/) and the post got a bit of traction on Hacker News (HN). I'm never quite sure which posts I submit will pique the interest of the users. I'll spend months chipping away at a draft and when I post it it tanks. Or I'll cobble something together in twenty minutes, like the linked one above, and it gets 440 points and over 300 comments...

The thread had some useful suggestions and some not so useful ones, the not so useful ones being effectively "buy an Epson":

<div class="img-centre">
    <img width="650px" src="{{ site.baseurl }}/images/2026/scanner/epson.jpeg" />
</div>

I've had one for fifteen years and it's not good enough for large prints or archiving. It's passable for web stuff and smaller prints, but for my recent use cases? Not even close. Ten years ago I had negatives scanned with a high resolution scanner for the first time and recently, wanting to scan my archives for various projects, I decided I should invest in one of those scanners.

**The Original Plan**

The plan, back in 2023, was simple:

* Buy scanner (at significantly reduced rate)
* Scan all my film
* Sell scanner
* Profit!

And I mean profit - the scanner that I almost bought was being offered to me at about 2/3rd of the price they usually sell. And they're becoming harder to find in working order so the prices are going up.

<div class="img-centre">
    <img width="650px" src="{{ site.baseurl }}/images/2026/scanner/cost_per_frame.png" />
</div>

Or profit in not having to pay > 25.- CHF per frame to have someone else do this. You can see the pricing from [The Film Lab](https://www.thefilmlab.ch/high-res-scanning).

You can read the original blog post to find out more about the scanner in question, so I won't repeat it here. Other than the parts being relevant to the rest of this post, namely that the scanner was showing hard and soft problems.

The software that drives the scanner was last updated in 2012, it's proprietary and closed source, requiring 32bit architecture and no third party drivers or software exist. So you are stuck using old software/computers to run it. Or maybe you could use emulation / virtualisation?

The problem there is that the interface is firewire, or SCSI on the even older models, and firewire is known to be problematic on these scanners as the controllers start to go bad after a decade of continued use. That's a risk, and the scanner was very much EOL as the firewire controller was dying: *both* ports were bad that suggests controller, not ports. The scanner would have been €5,000 to purchase and then €3,000 (ish) to repair.

Or, as HN suggested - just open it up and use a soldering iron. I'm not going to drop 5k on something and *then* start poking it with a soldering iron. I'll pass on that thanks.

**Camera Scanning**

In the meantime I've been camera scanning, which you can read about in [another blog post]({{ site.base_url }}/2023/07/22/scanner_not_scanner/). But how does that compare cost wise? It's expensive because you'll need a high resolution camera, a macro lens, copy stand, negative carrier/holder, and quality light source. You'll look to spend anything from three to five thousand Euros on everything.

Camera scanning does actually work well, in that it's close to a high resolution dedicated scanner. But you have to setup the entire thing every time you want to use it, including ensuring everything is straight and parallel.

It also suffers from the same weakness as most other scanning methods. What do you think that is?

**Film Flatness**

Or lack thereof:

<div class="img-centre">
    <img width="650px" src="{{ site.baseurl }}/images/2026/scanner/film_not_flat.jpg" />
</div>

Film is rarely flat, especially so with 35mm. These are pretty mild examples of curl. It tends to be flatter in the larger formats but then you get into flatness issues due to it sagging.

The smallest difference in the film plane can cause major issues in sharpness due to focus fall off (film scanning is essentially macro photography). Any workflow or solution that does not take this into account is significantly compromised. And the workflow is only as good as its weakest part.

This is the biggest problem in scanning film - all other considerations are more than adequate these days: resolution, dynamic range, etc. However, most negative carriers don't keep the film perfectly flat.

<div class="img-centre">
    <img width="650px" src="{{ site.baseurl }}/images/2026/scanner/eod.jpg" />
</div>

This has always been a problem - this is from a book called "Edge of Darkness" which is about traditional analog photography and printing, and summarises the problems of negative carriers thusly: *"if you use a glassless negative carrier, you might as well just buy the cheapest enlarging lens you can find. You are simply throwing away the money and sharpness you paid for it in your enlarging lens, and also in your fine camera and the expensive lenses you bought for it... No film will lie flat in a glassless carrier. That's right, none... There is no avoiding this issue. Use glass."*

So you have to use (anti-newton ring) glass, which introduces other issues - you've now got extra glass in the transmission path, and dust (which isn't a *massive* problem, but a pain nonetheless).

You could use drum scanning, which is absurdly impractical from a cost and operating point of view. Or you could use a Flextight, the scanner I almost bought three years ago.

**Interim Solution**

I stuck with camera scanning, but wasn't happy though, because of film flatness and the setup faff. So of course I started looking for another scanner.

<div class="img-centre">
    <img width="650px" src="{{ site.baseurl }}/images/2026/scanner/precision_ii.png" />
</div>

I was idly browsing near the end of 2025 and came across this one. It's exactly the same spec as the one I tried three years ago, except SCSI not Firewire so less prone to failure. It just predates Hasselblad buying Imacon (so is pre the rebranding, etc).

It was in Switzerland so I could inspect and pick it up. It was also significantly cheaper than the previous one I had looked at, so worth a punt even if I needed to take a soldering iron to it. We went to St Gallen for a weekend and I picked it up.

<div class="img-centre">
    <img width="650px" src="{{ site.baseurl }}/images/2026/scanner/interface.jpeg" />
</div>

Here's the software interface back in my studio. Look at that marvelous interface! None of that liquid glass bollocks. The first scans were promising, but I had the sense things needed some TLC.

The first thing was calibrating the focus, which the software can do in combination with a focus slide. I was lucky that the focus slide was included with the scanner and I'm not sure what I would have done otherwise. Probably paid a fortune for a replacement? Possibly a lot of manual trial and error with the software?

After doing that I scanned images of the 1951 USAF resolution test chart (taken on ultra high resolution 35mm film):

<div class="img-centre">
    <img width="650px" src="{{ site.baseurl }}/images/2026/scanner/35mm_100usm_6300_20251201_2000.jpg" />
</div>

That's what the resulting scan looked like. Notice that it's sharp from edge to edge, corner to corner.

<div class="img-centre">
    <img width="650px" src="{{ site.baseurl }}/images/2026/scanner/35mm_100usm_6300_20251201_closeup.jpg" />
</div>

At 100% crop we can resolve around 110 to 123 line pairs per mm, which equates to about 5,600 to 6,300 DPI. This is beyond the limit of most 35mm lenses, but importantly - exactly to spec for this scanner. So I was happy the focus was calibrated.

<div class="img-centre">
    <img width="650px" src="{{ site.baseurl }}/images/2026/scanner/35mm_100usm_6300_20251201_closeup_gfx.jpg" />
</div>

If you're curious this is the same target with the camera scanning setup. It's close, but we've got another variable in the workflow, several even, and that impacts the results. It's not as sharp, and the extra glass in the transmission path causes aberrations.

Another thing that needed attention was the power supply. The seller mentioned that "sometimes it takes five minutes to warm up". Sometimes it was more than five minutes, and the power supply would click click click away. So that needed fixing and it was easy enough to find a compatible new replacement, however it cost 200 Euros. Expensive!

The third problem I noticed was that some of the scans were coming out stretched. Often about 10% too wide/long, sometimes more than that. My panoramics looked panoooooooramic. I did some research and someone suggested this might be a "buffering issue", which I thought was nonsense. Doing some testing I heard slipping sounds when the scanner was pulling the film into the body. After more research I stumbled on a post that suggested the belts need replacing. I opened the scanner up, and sure enough:

<div class="img-centre">
    <img width="650px" src="{{ site.baseurl }}/images/2026/scanner/IMG_9041.jpeg" />
</div>

A ha! You can't quite see that the one on the back is even worse.

<div class="img-centre">
    <img width="650px" src="{{ site.baseurl }}/images/2026/scanner/IMG_9046.jpeg" />
</div>

I replaced those with compatible belts: 535 synchroflex t 2.5/245. Problem solved.

The fourth problem was that the film holders were old and/or had been mishandled. They were falling apart and held together with electrical tape or glue, which didn't seem optimal. Replacements cost 350 Euros in total for the four I needed. They're now available cheaper from China, since the patents have expired. Or, you know, China. They used to cost about 200 Euros *each* from Hasselblad.

The fifth problem, which is a potential one and hasn't manifested yet, is that the lamps may eventually need replacing. I picked up a couple for 25 Euros. That seemed like a reasonable thing to do while they're still available.

**Success?**

Let's add up the costs of acquiring this scanner and renovating it:

* Scanner: 1,750.- CHF
* Power Supply: 175.- CHF
* Belts: 25.- CHF
* Film Holders: 350.- CHF
* Lamps: 25.- CHF

**Total**: 2,325.- CHF (c. 2,500 EUR)

In the last year (since acquiring the scanner) I have scanned:

* c. 250 panoramics frames (~ 6,000 CHF)
* c. 2,500 medium format frames (~ 80,000 CHF)
* c. 200 large format frames (~ 9,000 CHF)

The figures in parentheses are what it would have cost me to have that number of frames scanned by a third party. That is, er, quite a saving. Also quite a lucrative business model perhaps? I think I can argue the cost of the scanner was a very good investment, and I haven't finished using it yet. Even if it were to stop working tomorrow, it has already paid for itself many times over. Could it stop working tomorrow? Yes, because of other issues that will be harder to solve.

**The Bigger Issue(s)?**

<div class="img-centre">
    <img width="650px" src="{{ site.baseurl }}/images/2026/scanner/mac.jpeg" />
</div>

A Power Mac G4 (discontinued in 2004). This came with the scanner, the necessary hardware and software to drive it, and is almost certainly living on borrowed time. Spinning metal is never good in the long-term. I'll maybe purchase a backup soon, as these can still be found for a couple of hundred Euros.

The key thing though, is that this very expensive, very high quality scanner, will at some point be rendered useless by the upgrade treadmill because the softare required to run it will be increasingly difficult to run. A scanner that is still used by businesses, educational institutions, and individuals like me. A scanner that originally cost tens of thousands of Euros less than a decade ago.

<div class="img-centre">
    <img width="650px" src="{{ site.baseurl }}/images/2026/scanner/do_not_upgrade.jpg" />
</div>

The upgrade treadmill is constantly whirring away. This is from the top of the Seattle Space Needle. "Do not upgrade anything on computer". Clearly that notice speaks of someone being bitten by an upgrade at some point.

I wonder is anyone else feeling the fatigue? Security updates, sure I can understand. But feature creep and trivialities? No! What tangible benefits have the last ten, fifteen, or even twenty years of OS updates brought? Other than security, and compatibility with newer hardware? New hardware is great, really, but by association forced deprecation of older hardware. No!

It feels like the upgrade treadmill gets faster and steeper every year.

Add to that subscription lock-in and dead endpoints: "I couldn't vacuum my house because an SSL cert had expired" is what someone told me earlier this year. Fortunately this person is a software engineer so ended up man-in-the-middling the network traffic to get the vacuum cleaner to work again (no SSL-pinning it seems).

<div class="img-centre">
    <img width="650px" src="{{ site.baseurl }}/images/2026/scanner/gopro_quick.png" />
</div>

"GoPro is announcing the end of life of the GoPro Quik app for macOS, effective at the end of 2024". They discontinued the former in favour of their mobile app, which requires an account, login, subscription, and so on. I just want to transfer the videos from the hardware, I don't need any of this crap (I *don't* need any of that crap, it turns out GoPro haven't locked the device down enough to prevent using third party apps to access the files. Yet).

And, of course, software has to be in everything. These days the scanner would/could have an embedded Raspberry PI? Just a keyboard and mouse input, monitor and USB output would reduce the surface area, connectivity issues, and software dependency.

Or software is never done? Because: externalities. I guess software is "done" when it's no longer supported? Marciano Planque has a good piece on this: [When hardware products reach end-of-life (EOL), companies should be forced to open-source the software](https://www.marcia.no/words/eol). I think that's a fair thing to say.

I suspect Hasselblad/Imacon never open-sourced the software due to licensing issues. Or they just lost the source. Or they just don't care, I don't know. Maybe some combination of the three.

And, inevitably, discontinued hardware like this scanner. Or, that is to say, discontinued parts? What about regulation changes? The panoramics I shoot are with a camera that was discontinued in 2004 because EU regulation banned lead solder in circuit boards. The company decided redesigning the parts wasn't worth it.

Old hardware has new exciting ways to fail. As time goes on components will fail or loosen - components that were expected to last decades. Then that results in tribal knowledge, or worse link rot and QR code rot. A lot of this stuff is hidden in walled gardens. There's a Facebook Imacon group, for example.

Why in the everloving fuck is a group for technical people, by technical people, on Facebook?

<div class="img-centre">
    <img width="650px" src="{{ site.baseurl }}/images/2026/scanner/chat_gpt.png" />
</div>

Then there's misleading AI. "My flextight scans are coming out stretched, what might the problem be?" LLM's have gobbled up all the right information, and all the wrong information. Or information that is massively out of date. Nowhere in the suggestions here does it mention the belts might need replacing, which, according to my *own* research, is the most common reason these days.

**Legacy Software**

<div class="img-centre">
    <img width="650px" src="{{ site.baseurl }}/images/2026/scanner/asil_hn.png" />
</div>

A decade ago I wrote an essay that also hit the front page of HN: [All Software is Legacy](https://leejo.github.io/2016/02/22/all_software_is_legacy/). I think it is still relevant today, some parts not so much given we are now in The Age of Prompt, but mostly it's still true.

[Nicholas](https://metacpan.org/author/NWCLARK) always said "legacy software is the ugly stuff that makes you money", which I think is true. But now it's the stuff that surrounds us, like when I want to withdraw cash (guess what software most cash machines are still running?). Or when I want to take a train - when I gave this talk in Germany I had to get from the airport to the city centre. The ticket machines were disabled with a sign saying "no longer in use, download the app". Then register. Then buy the ticket. I just want to give you money.

Or when I wanted to pay for parking while stopping off at some random town in the UK - the same situation as with the ticket machines. "Download the app, register, pay". Fuck that, I went and parked somewhere else. I just want to park, I don't want to fight with software.

<div class="img-centre">
    <img width="650px" src="{{ site.baseurl }}/images/2026/scanner/bike.jpg" />
</div>

Or if I want to hire a bike (not pictured: the half dozen apps on my phone to hire a bike). And when I want to buy stuff from a shop... One of the self-checkouts crashed recently in the coop, rebooting into a version of SUSE Linux from well over a decade ago.

We're collectively creating more and more of this everyday, letting it out into the world where it becomes a future liability for someone or the death knell for something. A pile of bikes, an unplugged ticket machine, a top of the line but no longer driveable scanner.

**References**

* [Imacon Users Group](https://groups.io/g/ImaconUsers/topics) (the non-Facebook group)
* [The state of Hasselblad Flextight scanners (2019)](https://www.davidebarranca.com/2019/12/2019-12-07/2019-12-07-hasselblad-flextight-flexcolor-3f/)
* [1951 USAF resolution test chart](https://en.wikipedia.org/wiki/1951_USAF_resolution_test_chart)
  * [Vlads Test Target](https://www.film4ever.info/vtt)
* [Printer Story](https://leejo.github.io/2023/01/23/printer/)
* [Original Scanner Blog](https://leejo.github.io/2023/01/25/scanner/)
  * [Responses to HN](https://leejo.github.io/2023/01/28/scanner_response/)
  * [Camera Scanning](https://leejo.github.io/2023/07/22/scanner_not_scanner/)
* [All Software is Legacy](https://leejo.github.io/2016/02/22/all_software_is_legacy/)
* [Repair Cafe](https://www.repaircafe.org/en/about/)

<hr />

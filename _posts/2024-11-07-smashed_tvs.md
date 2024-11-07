---
title: Smashed TVs, Broken Windows, and Cracked Plates
layout: blog
date: 2024-11-07
tags:
    - lpw2024
    - perl
    - raku
    - technicalities
---

<p></p>
<div class="footnote">Some personal thoughts on organising this year's London Perl &amp; Raku Workshop. A little bit sweary in parts, but I've tried to keep this under 3,000 words...</div>

The day didn't begin well. We had arrived at the venue on Friday afternoon to unload and setup a mass of equipment: video recording kit, tables, swag, banderolls, chairs, notices, more swag, a label printer, name badges, even more swag.

I was unpacking the second recording kit in The Library, one of the rooms we had hired at the venue, and was examining the back of the 40" TV on the wall for a suitable HDMI input port. Having found one I turned around to grab a cable.

As I turned back to plug it in I watched the entire setup lurch forward, tearing the mount and screws out of the wall in the process. The TV bounced off the bookshelf below before smashing into the floor, breaking the screen.

<div class="img-centre">
<img width="650px" src="{{ site.baseurl }}/images/2024/lpw/lpw.jpg" />
</div>

People say these things happen in slow motion, but that was very much not the case. This falling 40kg box of metal, glass, and plastic was absolutely obeying Newton's law of universal gravitation, and there was nothing I could do about it.

My immediate reaction was, well, complete lack of reaction. This was a good thing with hindsight, as the TV fell about 6" in front of me and any attempt to stop it would probably have broken me *and* the TV.

My second reaction was a slightly delayed "FUCK", as I realised we were now a TV short with about 12 hours until the workshop started. Fortunately the venue had a backup rolling TV. We cleaned up the mess, replaced the broken TV, and I wondered what two other things would happen.

They usually come in threes.

**Sometime In 2023**

I started thinking about organising the [2024 London Perl &amp; Raku Workshop](https://act.yapc.eu/lpw2024/) (LPW) near the end of 2023. This was after a london.pm social sometime in October. The plan was to reuse the venue we had in 2019, as this was a great space and cheap.

After a couple of months and several emails to the venue didn't receive any response, I realised we had to find another location. We were also missing a bank account, after the closure of the Enlightened Perl Organisation (EPO), and our own team had somewhat fractured as it was now four years since the last event.

Organisation really picked up speed after <a href="{{ site.baseurl }}/2024/02/14/fosdem/">FOSDEM</a>, having been asked by several attendees in the Perl dev room if LPW was going to happen this year. "Yes it is", I appear to have promised. It was looking like I would be organising it by myself.

I spent the next couple of months investigating venues in central London. This was purely online as I am based in the Swiss Alps. So yes, I would be organising a London based workshop from Switzerland.

At The German Perl &amp; Raku Workshop in April I asked Julien if he could help me out with on the ground stuff, as he is based in London, and he kindly agreed. We basically [announced](https://www.youtube.com/watch?v=dipYKeEbZuE&t=325s) the workshop at that point and were committed.

I aimed to announced everything as early as possible, and over the next few months spent two to five hours per week contacting venues, sponsors, speakers, attendees, blogged, posted to social media, wrangled the workshop site, wrote a talk, prepared video kits, printed labels, and ordered scarves.

I won't go into more detail here. Instead you can watch [the talk](https://www.youtube.com/watch?v=el7qHRpEDeE) I gave at the end of the workshop that covers all of the logistics and costs. If should give you a good idea of what is involved if you want to take this on next year. Feel free to contact me for help and support.

**Wait, Scarves?**

Yes scarves:

<div class="img-centre">
<img width="650px" src="{{ site.baseurl }}/images/2024/lpw/scarf.jpg" />
<div class="nav_text">|| 2004 - LPW - 2024 ||</div>
</div>

Julien mentioned in passing, in Germany, that there had been scarves created for an Ingress event. I said that was great, we should do that instead of the usual t-shirt for this year's LPW.

This would be a nice surprise for attendees, and we could design something to celebrate the 20th anniversary of the workshop. It would also be easier to deal with as one size fits all and they would be much cheaper than t-shirts.

I took the existing logo we have been using for the workshop since 2018, created something in Photoshop, got some feedback from Julien ("more lines") and eventually we settled on something that looked quite nice.

We still have a few of these remaining, so if you'd like to get your hands on one for the cost of postage (and perhaps a donation to the workshop?) then [get in touch with us](https://act.yapc.eu/lpw2024/team.html).

**Talks**

There are a couple of talks I'd like to highlight, those that I managed to attend between running around doing organiser stuff. I won't go into detail of the full schedule as you can see that [online here](https://act.yapc.eu/lpw2024/schedule) as well as and watch all of the recordings on [YouTube here](https://www.youtube.com/playlist?list=PLxNdCz2kBhVlzbVFcjwY6GkQf4zBhvwFn).

Salve J. Nilsen [gave a talk](https://www.youtube.com/watch?v=QYcsH5ehkrg), and after that a discussion, about the EU's upcoming Cyber Resilience Act. This is something that is going to affect everyone, every company, and product, every service, and so on, that works with open source software. I'd encourage you to watch the talk and read more behind the [work being done](https://security.metacpan.org/docs/readinglist.html) to figure out how to put things in place to address this.

Yujia Zhai, a lecturer from The University of Hertfordshire, [gave a talk](https://www.youtube.com/watch?v=_-qPh1EsIbk) that reminded me of one I had seen several years ago at [Les Journées Perl](https://blogs.perl.org/users/lee_j/2017/06/les-journees-perl-french-perl-workshop-2017.html), however this was taken to an entirely new level. It was the automation of randomisation *and* marking of coursework through some Perl and Raku utility scripts, along with some LaTex and PDF generation. Complete with live demos. Interesting stuff.

Finally, Theo's poignant [lightning talk](https://youtu.be/dbKbSs9wzPM?t=8s) about legacy in tribute to [Abe Timmerman](https://mastodon.social/@WGAvanDijk/112971298505500901), who passed away a few months ago.

**Recordings**

This is how much organisation it takes to record one track of talks at a conference/workshop. Prior to the event:

* Applying necessary operating system and application updates
* Creating OBS templates and tweaking the layouts 
* Charging the laptops, camera, and microphones
* Testing all pieces of equipment and all cables

This is usually around one or two full days of effort for each kit. Immediately before the event (the day or morning prior) we need to setup each kit, which can take anything from one to two hours depending on the venue's own setup. This is where we will discover something isn't working, or some cable isn't long enough, or some piece of equipment refuses to speak to some other piece of equipment. We can usually debug this to fix it, or hack together some solution.

<div class="img-centre">
<img width="650px" src="{{ site.baseurl }}/images/2024/lpw/cables.jpg" />
<div class="nav_text">Never enough cables... never</div>
</div>

Then on the day we need either an organiser or volunteer to:

* Babysit the machine to stop/start recordings and tweak levels
* Aid speakers when their machines fail to connect
* Lend their machine to speakers if connection will not work
* Debug issues before and during recordings
* [Optional] Check any live stream connection stays up

After the workshop there is about two hours of effort for every hour of recording:

* Copying all recordings to my own machine
* Editing all recordings to add intros/outros
* Fixing any issues with the sound (always a problem)
* Splicing in other videos for some recordings
* Uploading all videos to YouTube and checking them

There's a reason why companies charge a lot of money to handle this professionally. Video equipment is expensive and capturing then editing recordings of talks is a massive time sink.

Given we had two tracks at this year's workshop all of the above effort is duplicated, and despite best efforts we still had some issues with the sound that I had to fix in post to the best of my ability. I guess this was the second bad thing to happen on the day.

The recent updates to the machines seem to have pushed them over their capability and I think we are seeing buffering issues. Either that or the machines were just deciding to churn the disk as they hadn't been switched on in about a week. All of this meant the output monitoring looked fine but the camera/sound capture was lagging when writing to the disk, which wasn't something we could fix on the day.

The machines the EPO augmented the kits with are Windows laptops, and I have learned that you should apply the (inevitable deluge) of updates before the machines are used as Windows will just apply them whenever if feels like it because "fuck whatever you're using the machine for, I'm going to apply them and restart right now, sucks to be you!".

We now make sure to disable any internet connection from the machines on the day to avoid this, which means live streaming is no longer an option. We will still have issues, as the operating system will decide to panic or hammer the disk for whatever reason it feels like despite there being *nothing* else of any consequence running on the machine.

How this dog turd of an operating system and hot mess of an ecosystem continues to have the wide use it does still baffles me. Is it Stockholm syndrome? Annoying corporate policy? Stubbornness to adopt literally anything else that is better at this point? Even Linux machines don't have problems connecting to external displays these days.

<div class="img-centre">
<img width="650px" src="{{ site.baseurl }}/images/2024/lpw/ballroom.jpg" />
<div class="nav_text">The Ballroom</div>
</div>

Maybe I'm still bitter from my experience in 1998 when I moved from Windows to [SUSE] Linux after my Windows machine crashed on me, eating my Physical Chemistry coursework in the process and ultimately causing me to fail that module? 

Either way, I'd like to defenestrate these broken Windows machines (hoho) and replace them with either Linux or Macs. That's going to cost both time and money though.

That said, the [video kits](https://github.com/leejo/Conference_Video) we put together in 2017, and the EPO augmented in 2018, have now captured over a dozen Perl workshops and conferences. So far that has resulted in 330 recordings. If you go back to the early Swiss and Alpine Perl Workshops, in 2016/2017, when we were [figuring this out](https://blogs.perl.org/users/lee_j/2016/09/alpine-perl-workshop-videos-day-1.html), that takes the number to about 350 recordings.

We have saved a fortune doing it this way, several thousand Pounds/Euros/Francs per event, and made a lot of Perl/Raku content available. Perhaps 150 hours of content. It is worth the hassle and frustration.

**Science Talks**

I must address the elephant in the room, or The Study in this case: the science talks. You may have figured out from the wall of text above, assuming you didn't just CTRL/CMD-f right to here, that I have a [background in science]({{ site.baseurl }}/publications/Lee_Johnson_CV_web_2024.pdf). It's been a while though, as I moved into software engineering shortly after my undergraduate degree.

I was contacted quite late on in the organisation process by a representative for the Science Perl Committee (SPC), about six weeks before the workshop and after I had already spent a couple of hours putting the draft schedule together. As I said above, I had aimed to do everything as early as possible so this meant some work had to be duplicated.

The SPC was asking if they could have a full track at the event. It was *very* late in the day to be asking that and "absolutely not" was effectively my response, because I didn't want one particular group or topic to capitalise on the third room. We were already stretched too thin to take on organisation of what would (almost certainly) be a largely remote session, which are just as much effort to handle as recordings.

We had paid £500 to hire the third room (The Study) and I had scheduled a couple of talks in it already, as well as a discussion session for Salve's important [security topic](https://act.yapc.eu/lpw2024/talk/7925). So there was about one third of that track remaining.

However, maintaining my diplomatic hat, and wanting to be accommodating to as many people as possible, I agreed that they could have a few talks in the afternoon; I suggested perhaps a few lightning talks and couple of short to mid length talks as a mini schedule. I was happy for this to happen as I believed some attendees would be interested in seeing these science themed talks.

<div class="img-centre">
<img width="650px" src="{{ site.baseurl }}/images/2024/lpw/library.jpg" />
<div class="nav_text">The Library</div>
</div>

Indeed that was the case, a few people attended the talks in person which were being streamed to the venue (or were existing recordings). I should say that the person who was handling all this in The Study was a pleasure to deal with on the day and prior to the event.

Mercifully a key person from the SPC wasn't going to be there, which was a relief as they are contentious at their best and an absolute pain in the arse to deal at their worst, so that would remove quite a bit of stress.

&lt;a very long tangent here removed that would add a lot more context but I'm *still* trying to retain some semblance of diplomacy here...&gt;

And that's the major frustration around all of this, not just here but at other workshops and conferences. I've repeatedly said that I think the SPC's ambitions are laudable, and they are bringing people into the community that are doing interesting work and giving interesting presentations. That is a good thing.

What I didn't say is that it's exasperating they have such a person involved in running a lot of it. Who continues to ostracise themself, and by association the SPC, from beneficial spaces with their personal behaviour. Who frequently uses various platforms to provoke other members of the community over non issues; or labours under some sort of us versus them illusion, insinuating that the SPC is being ignored, which is absolutely not the case. Yet they *still* lack the self reflection to realise this after all that has happened over the years.

Will there be room for these talks at future workshops? That's not for me to decide, as I won't be heavily involved in organising them. However, after removing the, fairly obvious[^1], gaming of the feedback form there is clearly interest in these talks by [actual in person] attendees. So I would like to say "yes", but the SPC organisers need to take on board *my* feedback: Be nice. Ask. Give us plenty of notice. Don't assume malice in any action or lack thereof, either by organisers or those reporting on the event at the time or afterwards.

I have no qualms in saying this, given this is my personal blog, and not having named anyone. And you better believe that this post has gone through several revisions to tone down the language because I was deeply frustrated at some of the behaviour, prior to and directly after the workshop, when writing the initial draft of this post about a week ago.

**Pre/Post Workshop**

Part of the logistics of the workshop was getting all of the video equipment, swag, and other bits and pieces to the venue. Given I had a lot of this in Switzerland, and others had been delivered to our office in Sevenoaks, I decided to drive to London and back.

You might think "why not fly?" but previous form shows that isn't the best idea. When I went to Riga in 2019 half of the video kit didn't make it back to Switzerland. Checking in a lot of expensive electronics is too much of a risk, and there is a **lot** of equipment:

<div class="img-centre">
<img width="650px" src="{{ site.baseurl }}/images/2024/lpw/boot.jpg" />
<div class="nav_text">Quite a full car, all this stuff ain't gonna fly</div>
</div>

Driving to the UK was relatively uneventful, although I did get flashed by a speed camera driving through France. This always happens, despite trying my best not to. The French have made this into an art form, and I've had a draft technical talk about the infrastructure and payment system in the works since 2016. I may be tempted to dig it out and complete it when the amende comes through the post.

Driving into London was also uneventful, however I was a little worried when parking up at the reserved space just off Old Street. It was publicly accessible and didn't look like the most secure area. Hopefully nothing too bad would happen to my car.

After the workshop we wandered around the corner to a local pub and put 500 quid behind the bar (thanks to the sponsors). Nat had chosen this location and I think it worked out well - big enough, not too loud, good food, and good beer. They even had some very tasty low alcohol beers on tap, which I was drinking due to having to drive home the next day. We all got kicked out at about 11pm, so not too late a night in the end.

The next morning I went to pickup my car. My fears were confirmed. It seems the lure of a Swiss licence plate, especially one that starts with "VD", was too strong to a [likely] drunken halloween reveller.

Someone had decided they wanted my front plate, and Swiss plates look like they are easy to detach (well, they are if you know how) because the mount points are hidden. The plate was half ripped out, cracking the mount and damaging the bumper. Clearly whoever did this had a moment of clarity half way through, realising their mistake and leaving the plate hanging by the other mount point.

<div class="img-centre">
<img width="650px" src="{{ site.baseurl }}/images/2024/lpw/morning_after.jpg" />
<div class="nav_text">The morning after</div>
</div>

So that was the third thing that happened. Thankfully the drive back was also uneventful. No real delay at the tunnel. No speed cameras. No stops at customs. No pressure. And with the DST clock change an extra hour in bed the night before, which I was very thankful for given the drive took about twelve hours.

**Merci à tous**

It seems the workshop was a success, and it seems people are keen to attend in person events again. So let's keep this going. Step up and help organise.

Thanks to everyone who made the workshop possible in whatever way.

Until next time, whenever or wherever that is...

<hr />

[^1]: IYNYK? Yes, I know.

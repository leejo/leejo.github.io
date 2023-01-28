---
title: Responses to "I Almost Bought a Scanner"
layout: blog
tags:
    - photography
    - technology
    - instagram
    - printing
    - scanning
---

My <a href="{{ site.baseurl }}/2023/01/25/scanner/" target="_blank">previous post</a> seemed to get quite a bit of response on <a href="https://news.ycombinator.com/item?id=34524749" target="_blank">Hacker News</a>, including some comments and suggestions. I thought i'd respond to them here as some are useful while others are assuming things i should clarify. Responses are in order of the [current] top level responses.

**<a href="https://news.ycombinator.com/item?id=34526040" target="_blank">Reach out to get a good deal on bulk scanning</a>**

That's partially what I was doing already - I was leasing the scanner (at 250.- CHF a month) with the option to buy. Had it been working that would have been an excellent deal as I could have, in theory, scanned upwards of 50 frames of film a week. When it became apparent there were issues with the scanner it had to go back.

When I do eventually settle on a "final" edit for my <a href="https://formulanon.com/" target="_blank">Formula Non</a> project i will probably reach out to see if i can get a bulk discount on scans.

**<a href="https://news.ycombinator.com/item?id=34524960" target="_blank">I ... got my FlexTight Precision II to work on 64-bit Windows 11</a>**

That's great! I think people in the Facebook and Imacon users group will be interested. Links if you don't know them already:

 * <a href="https://groups.io/g/ImaconUsers" target="_blank">https://groups.io/g/ImaconUsers</a>
 * <a href="https://www.facebook.com/groups/Imacon.Hasselblad.Flextight" target="_blank">https://www.facebook.com/groups/Imacon.Hasselblad.Flextight</a>

There are probably other places that it's worth mentioning this, some of the analog film community message boards and forums get the occasional posts about helping with Imacon/Flextight setup.

For this particular scanner it wouldn't have helped as the issue is mechanical/electrical/hardware.

**<a href="https://news.ycombinator.com/item?id=34527338" target="_blank">... buy the scanner, use it to scan everything, then sell it on.</a>**

The mechanical/electrical/hardware issue made this a no go - the scanner was clearly faulty and close to death [of a/some part(s)]. So dropping 5,000 Euros on this would have been a huge risk.

That *is* still an option if I can source an X1/X5 in Switzerland that is in good working order and has been recently serviced, so it is in my mind when i will need to scan a few hundred negatives in a short period of time.

**<a href="https://news.ycombinator.com/item?id=34525312" target="_blank">A soldering iron is cheap, and so are firewire ports on digikey.</a>**

What i failed to mention in the original post is that the scanner has *two* firewire ports (as was common, to allow daisy-chaining) and *both* showed issues - this is indicative of the problem being either mainboard or controller chip related.

The original owner is investigating having the firewire ports replaced to see if this solves the issue, but i'm dubious as a specialised Imacon repair ship told me "The problem is when the FireWire port dies the only repair that is ever proven to be effective has been to replace the entire main board."

That lead to some discussion about what could really be the issue, and therein lies the rub. It could be cheap and easy, it could be complex and expensive.

**<a href="https://news.ycombinator.com/item?id=34524749" target="_blank">The state of dedicated film scanning is so bad these days</a>**

It's too niche and there's no return on investment in it. A lot of film shooters are using copy rigs with digital cameras to "scan" their film so a market has built around that.

Realistically we will never see another high quality dedicated film scanning hardware solution released. It's dead technology[^1].

**<a href="https://news.ycombinator.com/item?id=34524749" target="_blank">This is the dark side of patents.</a>**

I partially agree - but without the patent system where does the incentive for companies to invest millions (sometimes billions) into research and development come from? Altruism?

Perhaps a clause needs to be written into the patent system (these may already exist, IANAL): if you patent something and don't act on it in X years then it enters the public domain. If you discontinue the thing that relies on the patent then it enters the public domain. And so on.

**<a href="https://news.ycombinator.com/item?id=34525577" target="_blank">I spent months scanning ... on an Epson Perfection V600. I am happy with the results</a>**

There were quite a few comments about the Epson scanners (v600, v700, v850, etc) being good enough. They are definitely good enough for web stuff, and with third party holders they are good enough for reasonably sized prints from medium and large format negatives.

For 35mm film they are not good enough for prints larger than, say, A4 in my opinion. The issues with these scanners (I have owned a v700 for over a decade) are as follows:

 * The true optical resolution is about 2,000ppi 
   * Anything above that is software interpolation
   * Epson claim "3200ppi" and "6400ppi" but this is not the case <a href="https://www.filmscanner.info/en/EpsonPerfectionV850Pro.html" target="_blank">as proven in tests</a>
 * The lens is fixed focus
    * You have to precisely calibrate the height of the film holders
    * The granularity of hight adjustment on the included holders isn't fine enough
    * And you will still run into film flatness issues
  * The dynamic range isn't as high
    * I frequently find the shadows are lost in scans on my v700

Essentially the Epson solutions are good enough for medium and large format, or for 35mm for use on the web. For large prints from 35mm (thus the Xpan) it doesn't come anywhere close to the X1. This is actually less a resolution issue and more a focus and dynamic range issue.

**<a href="https://news.ycombinator.com/item?id=34525958" target="_blank">Some suggestions about using a microscope</a>**

Hah! This looks interesting but is probably massively impractical. Nice idea though. As stated above, the issue isn't necessarily resolution related.

**<a href="https://news.ycombinator.com/item?id=34525064" target="_blank">Sounds like maintaining these high end medium format cameras and scanners can be a real hassel</a>**

Heh, I know this was a pun but there is a lot of truth in it. It's one of the reasons I am slowly getting out of this niche. It's also one of the reasons this equipment is continuing to rise in price as it becomes more and more difficult to find ones in good working condition and/or getting them serviced.

I have my Xpan that I will keep for now and I will probably use it until it is no longer serviceable/repairable. My other film equipment I am in the process of selling.

**<a href="https://news.ycombinator.com/item?id=34526049" target="_blank">Why not drum scanners</a>**

The ultimate! But massively impractical for my needs - cost, form factor, service/maintenance options.

**<a href="https://news.ycombinator.com/item?id=34529671" target="_blank">Virtualization/VMs/Vuescan/Etc</a>**

I believe a lot of the users of the Imacon scanners have gone down this route. It's possible, but as stated the problem here isn't software.

Vuescan is a great piece of software, but doesn't support the Imacon scanners due to aforementioned issues with Hasselblad refusing to open up the drivers/software/etc. It *probably* can be reverse engineered but that might lead to all sorts of legal issues.

**<a href="https://news.ycombinator.com/item?id=34526713" target="_blank">Hasselblad are idiots then</a>**

Yes, as I said in the blog post they've got form on this. They were still selling the X1 and X5 scanners just a few weeks before they announced they were discontinued.

They could have probably open sourced the software long ago, but maybe the original source code is long gone? Maybe there are issues with third party libraries they required and they don't want to risk legal problems should they open it up?

Maybe they thought about building the software for 64bit archs but then decided they didn't want to support it anymore.

Hasselblad are a company of contradictions and <a href="https://www.getdpi.com/forum/index.php?threads/hasselblad-28-sept-2021-beyond-classic.71715/page-6#post-852590" target="_blank">mixed messages</a>. They continue to promote themselves by talking about their legacy and history, but if you are a user of any of their technology made more than 15 years ago you are left out when it comes to support, service and maintenance.

Yet I totally understand this. So there it is...

**<a href="https://news.ycombinator.com/item?id=34525448" target="_blank">Modern pro scanners blow past his 8000 dpi benchmark</a>**

Nope, they don't even come close to achieving *half* that. Don't believe the marketing. See details above.

**<a href="https://news.ycombinator.com/item?id=34524749" target="_blank">That’s a lot of images for a fine art photography book</a>**

Mixing up the projects here - 60cm on the short side is for panoramic prints, not a book. The Formula Non project would be a small book with small images, probably in the region of 20x20cm max. Still, i would insist on scanning at the highest quality to ensure good focus and dynamic range. The negatives contain a lot of detail that lower spec scanners struggle to extract.

As to the number of images - that depends. Sure, an exhibition would be a dozen or two. A fine art photobook depends on the edit. It can be anything from a few to well over a hundred, and it's necessary to scan more than that as you work through the final edit and sequence.

**<a href="https://news.ycombinator.com/item?id=34525478" target="_blank">I wonder if there is an alternate optical solution using a macro lens</a>**

Yes, many people are now "scanning" using a copy stand and digital camera + macro lens setup. It works pretty well - is it good enough for my use case? I need to figure that out.

**<a href="https://news.ycombinator.com/item?id=34527439" target="_blank">I have a strong sense that the original author has not tried any of these upscaling techniques</a>**

The issue is that the scan(s) from the consumer level hardware are simply not good enough for upscaling: lack of correct focus, lack of dynamic range. Yes they could be interpolated up to achieve a 160x60cm print but it would be a shitty looking print.

**<a href="https://news.ycombinator.com/item?id=34531260" target="_blank">Nobody demands you to give out the stuff that you don't use for free, why should we demand it from a company? </a>**

Plenty of people have asked me for free stuff over the years. It's part of being a photographer, and depending on the entity asking i have given stuff out for free (including my time). I have also been uploading open source software for close to a decade, and contributing in that space for almost two.

But I take your point. My counterpoint would be - perhaps Hasselblad would benefit from this? More users, more sales (of support and parts), more good faith with the community perhaps?

<hr />

[^1]: Very happy to be proven wrong on this.


---
title: Calibrating Your v700 Workflow With A Flextight
layout: blog
tags:
    - photography
    - technicalities
---

I recently had a few prints made from some medium format negatives. The prints are for a specific purpose so I wanted them to be of the highest quality possible, this meant taking them to a local specialist where the film was scanned with a Hasselblad Flextight X1. The Flextight is about the best quality scan you can get, before moving up to dedicated drum scans that can be messy, time consuming, and expensive.

I realised I could use this as an opportunity to compare how good my Epson v700 scanner is to the Flextight scans, and also to try to improve the scans from my v700 by calibrating the workflow. You could also apply this to the v800 models of this scanner as they are effectively the same. Note that I'm not considering wet scanning, as I'm dealing with medium format film.

I used a negative I've previously shown here, and it is one I know that I missed the focus point on. However, with a loupe we could see that the focus was good enough and this will not have any bearing in the calibration. The image was shot with a Hasselblad 202FA with the 110mm F2 lens set at f4. Exposure time was 1/500. The film was Ilford HP5+ rated at 250 ISO and developed in Ilford Perceptol 1:3.

All of the following images can be clicked on to view the full size versions. You can get the full size scans (saved as jpg due to limits on my hosting) here: <a target="_blank" href="{{ site.url }}/images/2017/optimal_scans/raws/x1_full_frame.jpg">Flextight</a>, <a href="{{ site.url }}/images/2017/optimal_scans/raws/v700_better_scanning_full_frame.jpg">v700</a>.

**The Flextight Scan**

Here's a low resolution version of the scan (resized to 1250x1256px with "Bicubic Sharper" setting in Photoshop)

<a target="_blank" href="{{ site.url }}/images/2017/optimal_scans/x1_1250.jpg"><img width="625px" src="{{ site.url }}/images/2017/optimal_scans/x1_1250.jpg" /></a>

The technical details are as follows

 * Hasselblad Flextight X1
 * 3200dpi
 * 7086x7121px (50 Megapixels / Print size of 56x56cm at 320ppi)

Note that the Megapixels/Print size is purely a guideline, and not meant as some film vs digital thing. You'll see below that you can't compare film and digital when you get to this level of detail, film has grain and digital does not. It's an apples to oranges comparison.

My printer told me that he does not apply any sharpening to the raw scans as the Flextight is so good that all sharpening does is to accentuate the grain. When you look at a 100% crop from the above image you can understand this (better if you click to see the full size version):

<a target="_blank" href="{{ site.url }}/images/2017/optimal_scans/x1_full_res_detail.jpg"><img width="625px" src="{{ site.url }}/images/2017/optimal_scans/x1_full_res_detail.jpg" /></a>

Look at the grain, this is excellent as when we can see the grain we know we have a scan that has optimal focus - just like when we used to use a grain focuser in the darkroom. We can see that the image is sharp, the kind of sharp where we don't get that halo effect due to over aggressive processing, it looks "naturally" sharp. When we look at the full image we can see that I did indeed miss the focus point, I was about 5cm in front of where I should have been, but again the image is good enough.

**The Epson v700 Scan**

Again, here's a low resolution version of the scan (same resize settings as with the Flextight scan). I tried to get the raw scan to look as close to the Flextight scan as possible, minus any sharpening, but as you can see the v700 doesn't quite have the dynamic range so we lose some shadow and highlight detail.

<a target="_blank" href="{{ site.url }}/images/2017/optimal_scans/v700_1250_no_sharpening_before_resize.jpg"><img width="625px" src="{{ site.url }}/images/2017/optimal_scans/v700_1250_no_sharpening_before_resize.jpg" /></a>

The technical details:

 * Epson v700
 * Scanned with VueScan 6.5.27
 * 3200dpi
 * 7069x7132px (50 Megapixels / Print size of 56x56cm at 320ppi)
 * Better scanning holders + anti-Newton glass.

The last point on that list is the critical one. The holders included with the v700 out of the box are not good as they only have two settings. Holders that you can purchase from [Better Scanning](http://www.betterscanning.com/) can be adjusted as much as required, and most importantly way above the height of Epson's own holders. The anti-Newton glass also allows you to flatten the negatives in the holders, preventing out of focus areas due to curved film. Purchasing the better scanning holders and finding the optimum height is very much a prerequisite here.

Also note that no sharpening or post processing is applied with the scanning software, I aim to get as "raw" as possible a scan out of the negative. The image was inverted with Photoshop. The above scan looks pretty good to me, but what if we look at the detail?

<a target="_blank" href="{{ site.url }}/images/2017/optimal_scans/v700_better_scanning_detail_pre_sharpening.jpg"><img width="625px" src="{{ site.url }}/images/2017/optimal_scans/v700_better_scanning_detail_pre_sharpening.jpg" /></a>

OK, now we see the difference. The v700 scan doesn't show anything like as much grain and the scan is all around softer - look at the lettering on the lens front. Let's be fair to the Epson scanner though as it costs €600, with the better scanning holders, compared to the €15,000 Flextight.

**Workflow Calibration**

Up until now I have never sharpened scans from my v700, I just let the sharpening algorithm when resizing do its thing. I really dislike the aggressive sharpening that is present in lots of images online - where you can see a 1 or 2 pixel white halo surrounding edges. It looks really bad to my eye, and appears as an attempt to make up for a bad scan or poor technique.

However, having seen the Flextight scan I realise I need to apply a little sharpening to the raw scan as part of the processing workflow when resizing for the web and such. So the calibration here is to figure out what level of sharpening will bring the raw v700 scan close to the Flextight scan.

Having played around with unsharp mask in Photoshop I found the settings to get closest to the Flextight scan are an amount of 500% and a radius of 0.5px to 0.7px (0 Threshold) applied to a scan of 3200dpi. I say 0.5px to 0.7px as the amount can depend on the particular film and shooting conditions: pushed, pulled, grain size, etc. Here's what the above crop looks like having applied this amount of sharpening:

<a target="_blank" href="{{ site.url }}/images/2017/optimal_scans/v700_better_scanning_detail.jpg"><img width="625px" src="{{ site.url }}/images/2017/optimal_scans/v700_better_scanning_detail.jpg" /></a>

It's still not quite there, the grain is clearer although looks a little clumpy, but is much closer to the Flextight scan as we see the detail in the lens lettering. Here's the image resized *after* having applied the above sharpening:

<a target="_blank" href="{{ site.url }}/images/2017/optimal_scans/v700_1250_sharpening_before_resize.jpg"><img width="625px" src="{{ site.url }}/images/2017/optimal_scans/v700_1250_sharpening_before_resize.jpg" /></a>

The difference is subtle, but it's clear to my eye. It brings out detail in the lower resolution image but without the over aggressive sharpened look. The only failing we have is that the lost shadow and highlight detail compared to the Flextight scan that is difficult to recover from the v700 scan and there is little we can do about this.

Here's the final print hanging on my wall:

<a target="_blank" href="{{ site.url }}/images/2017/optimal_scans/print.jpg"><img width="625px" src="{{ site.url }}/images/2017/optimal_scans/print.jpg" /></a>

The print is quite small at 25x25cm, and it's questionable as to whether the Flextight scan was necessary here. I've had prints made from my v700 scans in the past up to 50x50cm and my printer has told me that the scans are good enough for this with a little sharpening, dependent on the quality of the negative, but going any larger requires a better scan as interpolating up requires the detail to be there first.

The other prints I had done at the same time as this one are much larger than 25x25cm, so having them scanned with the Flextight was beneficial. Not just for resolution but for the tonal detail and colours. I am completely inept at scanning colour negatives when it comes to getting the colour balance right, I just can't do it.

Oh, the image next to the print is a 50x70cm enlargement from the Fuji x100t and at the same time as having the above image printed I had a 60x90cm print made from another x100t image and it looks great. I also had some <a target="_blank" href="https://www.instagram.com/p/BSTVnZnDvtB/?taken-by=leejebay">120cm wide prints made from XPan negatives</a>, which have quite large grain despite being shot on Pan F. They still <a target="_blank" href="https://www.instagram.com/p/BSwKK-VDBnE/">look pretty good</a> though, and will soon be available to purchase in the local <a href="http://www.galeriealpine.com/">gallery</a>.

I think for the most part I will stick with the Epson v700 for prints from medium format B&W scans, probably colour too if I can learn to balance the colours better. I will say that the Flextight beats the Epson v700 hands down for scanning 35mm negatives, as the maximum resolution of the Flextight is almost double that of the v700 with that format. There's no way the above XPan prints would look anything like as good scanned with the Epson. Here's a quick comparison of an XPan negative with a Flextight scan (left) and the v700 (right):

<img width="625px" src="{{ site.url }}/images/2017/optimal_scans/35mm.jpg" />

The above crop represents an area of 0.1% of the XPan negative, a 300x300px section of a 16283x6139px scan. That's 100 Megapixels, or a print size of 129x49cm at 320ppi. To get the same resolution from the Epson as the Flextight I had to set the Epson to scan at 6400dpi, and that means it will interpolate up unlike the Flextight. As you can see the Flextight blows the Epson away for 35mm scans, sharpening this scan from the Epson is never going to get anywhere close to the Flextight. The film used above was Pan F+ shot with an orange filter and rated at 50 ISO then developed in Ilford Perceptol 1:3.

Big prints from small formats and small prints from bigger formats. I think this is where the point lies. Pixel peep as much as you want, but you only really know if the quality is there when you get your images printed by someone who knows what they're doing.

<hr />

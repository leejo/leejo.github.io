---
title: Altitude Sickness (in Macbook Pros)?
layout: blog
tags:
    - apple
    - computing
---

A couple of years ago I <a href="/2016/11/12/apple_deprecated_all_my_stuff/">wrote</a> about my slight frustration at Apple's decision to deprecate all of the previously used ports available on their "Pro" lineup of laptop computers.

The post wasn't entirely serious, in fact, if anything it was written to show what a mess the connectivity options had become on modern consumer electronics. USB could mean one of dozens of things, and the simplification to "this model has one type of port only" is actually a good thing.

Having purchased a top spec (bar the SSD) 15" 2018 Macbook Pro last July the situation has pretty much just continued as I expected. I bought a couple of adaptors ("dongles") to keep using some of my existing peripherals. When I want to plug other stuff in, now and then, I have to go rummaging through a drawer to find the correct cable or adaptor. Same as it ever was.

So the laptop has been functioning as good as the previous models ever did, with the bonus of now having enough memory and CPU cores that I don't sit waiting when editing photos/video/compiling code/running tests. However, another problem has appeared: the battery.

**Altitude Sickness?**

Eleven months and one week after purchasing the laptop I noticed the telltale signs of the battery beginning to swell: the laptop no longer sat perfectly flush on a flat surface, and the trackpad felt a little stiff. The battery has now been replaced as it fell three weeks inside the warranty period, lucky. But I wonder if I'm not going to see the same thing soon.

This is the *third* Macbook Pro I have used that has experienced problems with battery swelling. The first was a 15" 2015 version. The second was a 13" 2017. Both of those were work machines, and all of these share one thing I think could be causing the problem - they are plugged in 24/7, or close to that.

If you look at Apple's <a href="https://www.apple.com/lae/macbook-pro/specs/">specs</a> they specify "Operating altitude: tested up to 10,000 feet" and "Maximum storage altitude: 15,000 feet". My operating altitude is 4,100 feet so not even half of that. But is this high enough, literally, to be higher up, figuratively, on the curve of "problems might be more likely"?

We have over 50 Apple laptops, of various models, in use at our UK office. Not a single one of them has shown the battery swelling issue. We have 6 in use at our Swiss office, at 1,250m altitude, and two of them have shown the problem along with my home machine. OK, this is not a lot of data but seems a little suspect. Perhaps it's coincidence, but I'm starting to think it's more than that.

And OK, a lot of Apple's customers (read: California) sit at or above this altitude so I'm sure we would have seen reports of this by now. Maybe it's too early days to tell though, and the connectivity option (singular) may give rise to this because of the way the devices are now charged.

**Always On**

My home machine is always on, because what's the point in ever shutting it off? It has power saving modes and such, so don't worry about it. Of course it does function as a portable machine now and then - travelling, work, conferences, and so on. I would say the machine is currently on my desk and plugged in 95% of the time.

The problem now is that the external monitor I am using acts as a charging device. So it's always on and whenever it is plugged into the external monitor it is always charging, or at least not draining.

I can use the monitor in a non-charging way, which involves another cable, but then i have to use another port to charge the laptop when it needs it so I lose a port and I've already lost one port due to the dongle for my external keyboard/USB hub...

If you ever bother to use the Touch Bar you will notice a nice warm glow from the top of the machine. Actually touch above the Touch Bar, because the Touch Bar is easy to miss as its affordance/ergonomics/haptics are bad[^1], you will notice these machines really do run hot. This is not hot because the CPU is being hammered, this is just idling.

So 1) Always on, 2) Always charging, 3) Always hot, 4) Always running at a not-insignificant altitude. These are probably not ideal conditions for the life expectancy of the battery.

**So What Now?**

I'll keep running the machine as is but will make an attempt to unplug the external monitor over night. That should remove factors 2 and 3. I'll update this post if/when the battery starts to show signs of swelling again.

My other option is to consider a Mac Mini, given it seems for my situation the Macbook Pro is no longer suitable as a desktop machine if you want it to last.

The quest to make these machines as thin as possible is leading to problems with their longevity. Even though they now have minimal moving parts they still have a large battery that is not a mature technology and prone to failure over the long term.

We know the batteries are a problem. Apple have even offered recall and replacement programs for at least two of the recent Macbook Pro models.

I got six years out of my previous Macbook Pro with zero problems. I got six years out of my white Macbook before that with zero problems. I was hoping this machine would last for the same amount of time, if not more, but I'm now doubting that will happen.

**Update 18th June 2022**

About two years after the battery replacement the machine started to show the "repair recommended" warning for the battery in the menu bar. This was without any obvious signs of a problem. A few months later those started to appear: minor swelling.

After another 6 months the battery was running at about half capacity and the swelling got bad enough to affect the way the laptop would lay flat on a table and also some parts of the trackpad.

I put up with this for a while before finally deciding to replace the battery myself. I figured since the machine was now out of warranty i didn't want to invest too much more into it. [Ifixit's replacement guide](https://www.ifixit.com/Guide/MacBook+Pro+15-Inch+Touch+Bar+2018+Battery+Replacement/122269) rates the procedure as "difficult", estimating around 3hours.

It wasn't that difficult in reality, taking about 2hours and with good organisation of all the tiny screws to ensure putting it back together again was possible. The main problem was step 46, or at least the reverse of step 46.

I simply could not reattach the antenna cables to the logic board. When I examined them under some magnification it was clear they were damaged. When I looked at the connectors on the logic board they were damaged too. So i had manged to kill them in the process of disconnecting (or trying to reconnect them).

When I switched the laptop back on everything worked as it should, but now there was no Bluetooth or Wi-Fi. Soon I discovered I had also damaged the right speaker connection so now the laptop only has audio from the left.

Well fuck. I had got four years out of this laptop then. I picked up base spec M1 Air as Swisscom were selling them with a 30% discount (probably in anticipation of the M2 release) and it absolutely trounces the 2018 Macbook Pro, in almost every aspect, even with 1/4 of the RAM.

Apple's last generation Intel Macbook Pro line, with touchbar, are probably the worst ones they ever released. I'm not that bothered to see this one go.

<hr />

[^1]: Really bad: I have this device (keyboard) that I never look at, because that's how we learn to use it, but now I have to look at it because the Touch Bar is way above the home row and the actual functions change all the time depending on the context so I can't ever remember what is what or where. I'm still undecided on the Touch Bar - sometimes I think it's brilliant, other times I hate it.

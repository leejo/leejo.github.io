---
title: A Lot of HUF
layout: blog
tags:
    - f1
    - travel
    - software
---

I took a brief trip to Hungary to visit the final European Grand Prix. As in: the final Grand Prix in Europe that i hadn't yet been to. Until next year at least, when the European Grand Prix makes a comeback[^1]. At which point the final European Grand Prix i visit will be the actual European Grand Prix[^2].

Whilst Hungary is a [member state of the European Union](https://en.wikipedia.org/wiki/Member_state_of_the_European_Union) it is not a part of the [Eurozone](https://en.wikipedia.org/wiki/Eurozone). Essentially they kept their own currency, the Hungarian Forint (HUF). If you read through the history of Hungary's currency you have to wonder if their non-membership of the Eurozone is due to having faffed about with their currency many times over the years already[^3] and not wanting to do so again[^4].

<img src="{{ site.baseurl }}/images/2015/08/huf.jpg" width="500" />

Anyway it seems that most places in Hungary, or in this case Budapest, accept Euros so you *can* get away without withdrawing HUF. However i wanted to do so for two reasons. One being that the exchange rate isn't exactly favourable if you do use Euros within the country, the second being that i wanted to get hold of a currency that had caused me all sorts of problems several years back. Pure curiosity.

In my last job i wrote some software that communicated with acquiring banks. As part of a "keep it simple" approach it had no restrictions on the currencies you could provide - as long as the provided data was in the list of ISO 4217 currency codes you could transact in it[^5]. So when i was asked if we could support HUF i nodded, double checked the details in the standard, and said it was good to go.

A few weeks later we received a bug report from some rather irate Hungarian cardholders, stating that they had been charged one hundred times the value of their purchases. This seemed odd because, again, as part of a "keep it simple" approach there was no exponent handling in the software - you had to pass it the value of the transaction in minor units, which would then be forwarded on to the acquiring banks (as per other ISO standards). So €1 would be sent as 100 with the currency code EUR[^6], because it has a minor exponent of 2. It means you don't have to deal with integer division in the code, a wonderful source of bugs is eliminated.

The same principle follows for HUF because, [as per the ISO spec](https://en.wikipedia.org/wiki/ISO_4217#Active_codes) it has a minor exponent of 2... Or does it? Well yes it does, officially, but unofficially it doesn't because it's not used in real transactions anymore. The minor units in question, the fillér, have not been in circulation since 1999[^7]. In fact, inflation pushed the value of the Forint so high (or is that low?) that the lowest denomination coin is now 5 Ft. Curiously petrol stations will still use the defunct minor units in displays[^8]:

<img src="{{ site.baseurl }}/images/2015/08/filler.jpg" width="500" />

<div class="nav_text">The lesser seen fillér, accurate but at the same time defunct</div>

But they don't use it in the transaction, because 23.66 (Ft/l) * 423.9 (Ft) = 10029.474 Ft. Yet i was charged 10030 Ft because, as previously mentioned, the lowest denomination coin is 5 Ft. Rounding up applies here. Had they just said 424 Ft/l the total would have been 10031.84 and rounding down to 10030 would have applied. The exact same outcome!

When we sent transactional data to the banks for HUF we followed the ISO 4217 spec and used a minor exponent of 2. The above fill up would have been sent as 1002947 with a currency code of HUF (or 348). Unfortunately the banks decided that the unofficial logic applied here, and ignored the ISO spec, treating the currency as having no minor units. 1002947 Ft rather than 10029.47 Ft. That would be one expensive fill up.

The fix was trivial, to mark HUF as having no minor units and to include a comment in the code + commit message + bug tracking system as to why we were not adhering to the ISO spec. The lesson is clear though: just because you're following the specs to the letter don't assume anyone else is, *especially* when dealing with monetary transactions.

The picture at the top shows the last of the HUF i have left from my trip, 1030 Ft, or about €3.fiddy

<hr />

[^1]: It's been away since [2013](https://en.wikipedia.org/wiki/European_Grand_Prix)

[^2]: And just to confuse matters more, the European Grand Prix will be held in [Azerbaijan](https://en.wikipedia.org/wiki/List_of_transcontinental_countries#Azerbaijan), so it could in fact be called the European/Asian Grand Prix.

[^3]: [Some history](https://en.wikipedia.org/wiki/Hungarian_forint#History).

[^4]: Admittedly it's [more complex](https://en.wikipedia.org/wiki/Hungary_and_the_euro) than that.

[^5]: Even [Gold, Platinum and Silver](https://en.wikipedia.org/wiki/ISO_4217). Seems that Bitcoin is yet to be accepted by the standard.

[^6]: Or 978, depending on which spec or which part of the process you were dealing with.

[^7]: See that [history](https://en.wikipedia.org/wiki/Hungarian_forint#History) bit again.

[^8]: Amongst [others](https://en.wikipedia.org/wiki/Fill%C3%A9r), probably a psychological thing? I can't recall if every station used the .9 trick or if there were other values that would result in ±20 Ft on the final total.

---
title: Roaming With A Mondo Card
layout: blog
tags:
    - software
    - perl
    - banking
    - photography
---

I spent last weekend editing a few photographs from a short trip to Bahrain, in between that i was working on a perl library for the Mondo API. The thread the connects these two things is something i've mentioned before[^1]: credit/debit card fees.

I did my best to avoid using a credit/debit card whilst in Bahrain simply because, over the past few years, i've become acutely aware of the cost of doing so. Not specifically Bahrain, just anywhere beyond the United Kingdom. Of course i could get myself a Swiss issued card, but i'd be in exactly the same situation[^2]. Fees for using cards are the norm, not the exception.

If you do a bit of research you will not find a card that doesn't have some catch, be those foreign transaction fees, conversion fees, yearly/monthly service fees, a minimum spend/transactions per month, having to open another account with the bank, cash withdrawal fees. The list goes on and on and it is, frankly, ridiculous. Card issuers lure you in with "bonus" features and reward schemes like air miles, points, cash back, zero percentage on balance transfers for x months, and so on. But what about those who don't want any of this, who just want a replacement for cash without any of the mess[^3]?

**A Cashless Society?**

In the end i had to use my card to pay for the hotel, grab something to eat at the airport, and to withdraw some cash:

    NON-STERLING TRANSACTIO     5.43
    NON-STERLING TRANSACTIO     0.54
    CASH FEE                    3.00
    NON-STERLING TRANSACTIO     1.09
    NON-STERLING TRANSACTIO     0.02
    NON-STERLING TRANSACTIO     4.09

That's a total of £14.17 collected by my card issuer for doing nothing. FA fees[^4], before they even charge me interest for using the credit card. Now, i could have exchanged some currency for Bahraini dinar before i went but i would have been fleeced on the exchange rate and had to pay a commission fee, *if* i could find a bureau de change that had the currency available. I'd probably have ended up with some foreign currency left over when i got back, another cost.

When i moved abroad i decided to keep my UK accounts open, they're useful to have in one case (a UK credit card) and essential in another (NI contributions from my current account). As i still use the credit card i've ended up paying approximately £400 on non-sterling + cash fees over the past three years. The majority are the non-sterling transaction fees, they're typically small charges, but they add up[^1].

Keep in mind that i'm not running around paying for everything with a card because i have some aversion to cash. The credit/debit cards only get used when i generally can't use cash. Buying something online, paying those road tolls in France, settling a hotel bill? All card payments.

Card payments are convenient, but as long as it costs me they're never going to replace cash. Cash costs me nothing. Yeah yeah carrying cash is a risk, the fee merchants pay on their handling of cards are passed on to cash payments, blah blah blah. Look, as long as i am faced with the choice of paying €10 and it costing me €10 or paying €10 and it costing me €10 + a transaction fee + a crappy exchange rate + interest, i am always going to take the first option where possible. As long as this is the case your dream of a cashless society is stuck somewhere in a pipe.

It's not only the fees, the majority of banking systems are antiquated. Paying by card means not just getting the aforementioned fees but having to wait up to three days to find out exactly what those fees were. And they're antiquated on the frontend just as much as the backend, the phrase "banking API" could almost be considered an oxymoron.

**A Modern Bank**

With the arrival of my [Mondo](https://getmondo.co.uk/) card all the above issues are no more. Take a look at the following image:

<img border="1px" src="{{ site.url }}/images/2016/05/mondo_02.png" />

That's the withdrawal of cash from an ATM in Villars. The transaction appeared on the feed in the app within moments, giving me the approximate exchange rate. There was no "cash fee" and the exchange rate was accurate to that found on xe.com within a few pence. The exchange rate used was corrected a couple of days later, again accurate to the actual rate within a few pence.

The same transaction on my Lloyds issued card would have:

* not appeared on my online statement for up to three days
* used a worse exchange rate
* added £0.42 due to the 2.95% non-sterling transaction fee
* added £3.00 due to the cash fee (3.00%, minimum of £3.00)

So a transaction that would have cost me in the region of £3.50 on my old card actually cost me £0.15, and that £0.15 is down to the fluctuation of exchange rates between markets. Oh and you'll notice i could take a photo and attach it to the transaction, and it's correctly geo-tagged.

And it gets better:

<img border="1px" src="{{ site.url }}/images/2016/05/mondo_01.png" />

The Mondo API allows me to access my data through a JSON API. I can push items to my feed, download transactional data, all sorts of ideas and uses cases [can be built on top of the API](https://getmondo.co.uk/blog/2016/04/21/mondohack-iv/). There are already many [apps, libraries, and integrations available](https://github.com/rdingwall/awesome-mondo). The perl client library i've [released](https://metacpan.org/release/Business-Mondo) is just one of them.

**Out With The Old**

Of course Mondo still have some work to do. They don't offer the same products as traditional banks, but that's not what they're aiming for. Their card is a pre-paid debit card, not offering the same protections as a credit card. However they are headed in the right direction, they're getting rid of all those FA fees that for too long have been a barrier to actually achieving a cashless society. Or at least they're offering a product that makes others look extremely unattractive.

My Lloyds card will remain with me whilst Mondo is still in its early stages, but it will see very little use from now on. In with the new.

<hr />

[^1]: [Non-Sterling Transaction Fee]({{ site.url }}/2013/11/09/current_frustrations_with_lloyds/)

[^2]: [Swiss Credit Card Fees](https://www.google.ch/search?q=swiss+credit+card+fees&oq=swiss+credit+card+fees&ie=UTF-8#q=swiss+credit+card+fees+site:www.englishforum.ch)

[^3]: [Why are foreign card payments such a mess?](https://getmondo.co.uk/blog/2015/12/15/why-are-foreign-card-payments-such-a-mess/)

[^4]: I'll let you guess what that stands for.

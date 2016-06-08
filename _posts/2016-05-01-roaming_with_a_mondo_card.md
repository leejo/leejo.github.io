---
title: Roaming with a Mondo card
layout: blog
tags:
    - software
    - perl
    - banking
    - photography
---

I spent last weekend alternately editing photographs from a short trip to Bahrain and working on a Perl library for the Mondo API and the thread the connects these two things is something I've mentioned before: credit/debit card fees.

I did my best to avoid using a credit/debit card while in Bahrain simply because, over the past few years, I've become acutely aware of the cost of doing so. Not specifically in Bahrain, just anywhere beyond the United Kingdom. Of course I could just get myself a Swiss issued card for purchases there, but i'd be in exactly the same situation beyond Swiss borders[^1]. Fees for using cards are the norm, not the exception.

If you do a bit of research, I'm fairly sure you will not find a card that doesn't have some catch - be it foreign transaction fees, conversion fees, yearly/monthly service fees, a minimum spend/transactions per month, having to open another account with the bank or cash withdrawal fees. The list goes on and on and it is, frankly, ridiculous. Card issuers lure you in with 'bonus' features and reward schemes like air miles, points, cash back, zero percentage on balance transfers for x months, and so on. But what about those who don't want any of this, who just want a replacement for cash without any of the mess[^2]?

**A cashless society?**

In the end I had to use my card to pay for the hotel, grab something to eat at the airport and to withdraw some cash. Here's a breakdown of the fees:

    NON-STERLING TRANSACTIO     5.43
    NON-STERLING TRANSACTIO     0.54
    CASH FEE                    3.00
    NON-STERLING TRANSACTIO     1.09
    NON-STERLING TRANSACTIO     0.02
    NON-STERLING TRANSACTIO     4.09

That's a total of £14.17 collected by my card issuer for doing nothing. Real FA fees[^3], collected before they even charge me interest for using the credit card. Now, I could have exchanged some currency for Bahraini Dinar before I went but I would have been fleeced on the exchange rate and had to pay a commission fee - ***if*** I could find a bureau de change that had the currency. What's more, I'd probably have ended up with some foreign currency left over when I got back, another cost.

When I moved abroad I decided to keep my UK accounts open, they're useful to have in one case (a UK credit card) and essential in the other (NI contributions from my current account). As I still use the credit card I've ended up paying approximately £400 on non-sterling + cash fees over the past three years. Most are non-sterling transaction fees, they're typically small charges, but they add up[^3].

Keep in mind that I'm not running around paying for everything with a card because I have some aversion to cash. The credit/debit cards generally only get used when I can't use cash. Buying something online, paying those road tolls in France, settling a hotel bill? All card payments.

Card payments are convenient, but as long as it costs me they're never going to replace cash. Cash costs me nothing. Yeah yeah carrying cash is a risk, the card handling fee that merchants pay are passed on to cash payments, blah blah blah. Look, as long as I am faced with the choice of paying €10 and it costing me €10 or paying €10 and it costing me €10 + a transaction fee + a crappy exchange rate + interest, I am always going to take the first option where possible. And as long as this is the case your dream of a cashless society is stuck somewhere in a pipe.

It's not only the fees either, most banking systems are antiquated. Paying by card means not just getting the aforementioned fees but having to wait up to three days to find out exactly what those fees were. And they're antiquated on the frontend just as much as the backend, the phrase "banking API" could almost be considered an oxymoron.

**A modern bank**

With the arrival of my [Mondo](https://getmondo.co.uk/) card all the above issues are no more. Take a look at the following image from the app:

<img border="1px" src="{{ site.url }}/images/2016/05/mondo_02.png" />

That's the withdrawal of cash from an ATM in Villars-sur-Ollon. The transaction appeared on the app feed within moments, giving me the approximate exchange rate. There was no 'cash fee' and the exchange rate matched the one published on xe.com within a few pence. The exchange rate was corrected to the one used in the issuing country a few days later, again accurate to the actual rate within a few pence.

The same transaction on my UK-issued card would have:

* not appeared on my online statement for up to three days
* used a worse exchange rate
* added £0.42 due to the 2.95% non-sterling transaction fee
* added £3.00 due to the cash fee (3.00%, minimum of £3.00)

So a transaction that would have cost me in the region of £3.50 on my old card actually cost me £0.15, and that £0.15 is down to the fluctuation of exchange rates between markets. Oh and you'll notice I could take a photo and attach it to the transaction, and it's correctly geo-tagged.

And it gets better:

<img border="1px" src="{{ site.url }}/images/2016/05/mondo_01.png" />

The Mondo API allows me to access my data through a JSON API. I can push items to my feed, download transactional data, and all sorts of other ideas and use cases [can be built on top of the API](https://getmondo.co.uk/blog/2016/04/21/mondohack-iv/). There are already many [apps, libraries, and integrations available](https://github.com/rdingwall/awesome-mondo). The Perl client library I've [released](https://metacpan.org/release/Business-Mondo) is just one of them.

**Out With The Old**

Of course Mondo still has some work to do. It doesn't offer the same products as traditional banks, but that's not the goal here. The Mondo card is a pre-paid debit card the doesn't offer the same protections as a credit card. However, they are headed in the right direction, getting rid of all those fees that for too long have been a barrier to actually achieving a cashless society. At the very least they're offering a product that makes others look extremely unattractive.

My UK card will remain with me while Mondo is still in its early stages, but it will see very little use from now on. In with the new.

<hr />

[^1]: [Swiss Credit Card Fees](https://www.google.ch/search?q=swiss+credit+card+fees&oq=swiss+credit+card+fees&ie=UTF-8#q=swiss+credit+card+fees+site:www.englishforum.ch)

[^2]: [Why are foreign card payments such a mess?](https://getmondo.co.uk/blog/2015/12/15/why-are-foreign-card-payments-such-a-mess/)

[^3]: I'll let you guess what that stands for.

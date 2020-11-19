---
title: Some Kind of PayPal Refund Scam
layout: blog
tags:
    - photography
    - technicalities
    - paypal
---

I've been looking out for a cheap Hasselblad XPan for a couple of years; a camera discontinued in 2006[^1] and currently selling, second hand, for about double its original retail price. I've already had one for a while, but it's showing signs of impending failure: the shutter will seize up when I take it out on the slopes here, something that didn't used to happen, and when it *is* working the shutter sounds rather squeaky. I've also dropped it a couple of times, cracking the viewfinder in the process. But these things happen, and parts can be replaced.

<img width="625px" src="{{ site.baseurl }}/projects/alpine_panoramics/17_mont_blanc_dents.jpg" />

Anyway, I've taken this thing around the world and up mountains and gotten some [nice photos](/projects/alpine_panoramics/) out of it. I'd be happy to call it a day with panoramic photography, but i'm still working on a long term project with the camera that will not be complete for a few years yet. So I need a backup camera for when my current camera fails.

A thing of note is that these cameras are now difficult to repair because spare parts are in short supply, Hasselblad no longer service them so it's down to third parties to do that. Some of the failures are terminal. That means purchasing the camera is risky because you could get one that is about to fail but shows no signs of doing so. It could be a "mint" condition example that hasn't been used in fifteen years so all the internal lubricants have dried up to the point that it will fail quicker than a beaten up example that has been serviced recently.

So my requirements for the one I want to purchase are pretty simple: I really don't care about the cosmetic condition as long as the shutter mechanism and film advance are in good working order and the rangefinder calibration is accurate and the electronics are functioning. I want a beat up, travelled, used, ugly camera that continues to march on because it's proven its core functions are solid. Really I want [Koudelka's](https://www.magnumphotos.com/theory-and-practice/koudelka-shooting-holy-land-israel-palestine-documentary-conflict/) XPan.

And I found one on eBay recently that looked like a fit.

**And The Point Of This Preamble Is What Exactly?**

The camera is of sufficient niche but of high enough value to be a good vector for fraudsters. I guess you could call it ideal as it's not going to get any take down requests - it isn't made anymore and camera manufacturers don't have an incentive to monitor second hand sales for fraud.

A mint condition body with standard lens will now sell for approx £3,000. That's over twice what I paid for mine. An OK condition body alone might sell for £2,000 and one that's in really bad condition or "for parts" perhaps around £1,000.

The eBay listing I found was from a seller with a 100% positive feedback, with more than 110 ratings, and a handful in the last 12 months. They had been registered in the UK since 2006, so this was an established account. The thing I missed: they had no feedback ratings for selling, they had only ever received feedback for buying.

The auction itself looked legitimate - the details of the camera were believable and the title and photos of the auction didn't match any others when looking at recently completed eBay sales, nor could I find any matches by Googling. A red flag for auctions is if they use the same photos from other auctions or if the title/description has clearly been copied.

The camera looked beaten up, really beaten up. This isn't unusual for XPan bodies - their coating is a veneer that will peel away if you're out using the camera often enough. However this one also had a few dings and scratches indicative of it being dropped. Well that's purely cosmetic so probably not a problem. I've dropped mine a couple of times already, right? The shutter count was also high, a few thousand actuations, which can also be something that puts people off.

The auction stated that the camera had a proven record and had been serviced recently, meaning all those cosmetic things were not worth worrying about.

**Hook, Line, ...**

So I used the "Buy it now" option on the auction. The listing was just below £1,000, which seemed a little low for a working Xpan, but as I said this camera really looked beaten up. I figured a few things:

 * If the camera wasn't working then I could just resell it for parts
 * Or salvage some of the parts for my own Xpan
 * Or PayPal would have me covered, as they offer solid buyer protection
 * If PayPal *didn't* have me covered then my bank would

One thing to note is that this auction was a new listing when I stumbled upon it - It still had eBay's "new listing" tag, and I knew that if I didn't take it someone else would very quickly. So that played a part into me not spending enough time thinking about if this was a fraudulent listing or not.

And of course it was a fraudulent listing, I mean why wouldn't it be right? The way this happened was as follows:

 * 1) I used the "buy it now" option and made the payment via PayPal: Sun, 9 Feb, 12:39 (CET)
 * 2) The order was updated with a UPS tracking number: Sun, 9 Feb, 14:05
 * 3) The PayPal payment was "refunded": Sun, 9 Feb, 14:09
 * 4) There was a delay in the "eCheck payment" (the "refund"): Tue, 11 Feb, 16:0

Between 3 and 4 the original auction was deleted, I could no longer visit the listing. While I could see the item in my purchased items list the links were now leading to eBay's "we can't find that item" page. Most importantly the "refund" was in progress and PayPal's communication emails during this process read like this:

 * "You have a refund from XXXXX" - email subject
 * "XXXXX refunded £830.00 GBP from your purchase on 9 February 2020." - email body
 * "The money has been refunded to your PayPal balance" - email body
 * "It will be made available on or around 12 February 2020." - email body

The first three sentences here are misleading - I certainly didn't have a refund, it had not been refunded, and it wasn't in my PayPal balance. The last sentence was the important bit that actually made it clear that the previous statements were false. I had made the original payment using my credit card, the refund should have been processed onto my credit card and not into my PayPal balance. This looked like a massive flaw in PayPal's payment/refund process.

Sure enough the fraud involved sending the refund using an "eCheck" (what a ridiculous term, it's just a bank transfer) from the compromised[^2] PayPal account. So the fraudster withdrew my payment to their own account and then issued a refund by eCheck to source those funds from *another* account. Since the source of funds for the eCheck was either (now) invalid or lacked sufficient funds the "refund" process would keep trying to process the eCheck, and it would keep failing:

 * "You have a refund from XXXXX" - from PayPal. Sun, 9 Feb, 14:09 (CET)
 * "Your refund didn't complete" - Tue, 18 Feb, 14:53
 * "Delay in eCheck payment" - Thu, 20 Feb, 16:31
 * "Your refund didn't complete" - Wed, 26 Feb, 16:09
 * "You have a refund from XXXXX" - Wed, 26 Feb, 16:22
 * "Delay in eCheck payment" - Fri, 28 Feb, 14:48
 * "Your refund didn't complete" - Thu, 5 Mar, 14:55
 * "You have a refund from XXXXX" - Thu, 5 Mar, 15:21
 * "Delay in eCheck payment" - Mon, 9 Mar, 14:31
 * "Your refund didn't complete" - Fri, 13 Mar, 13:31

What on earth is going on here? The eCheck keeps failing, which is not surprising, but the person/thing that has taken over the account keeps issuing a new refund quickly after the previous doesn't complete. This seems like an attempt to keep the refund process in play, and after contacting PayPal I understood why.

**Contacting PayPal**

I used PayPal's dispute claim form to contact them on 10th Feb and have something done about the problem. I received a response on the 19th Feb saying the claim was denied because "refund previously issued".

What's interesting here is this was after the "Your refund didn't complete" message, so clearly there is a flaw in the claims process here - I assume there is some level of automation and getting an actual human to look at the process properly would take a lot of effort.

**Contacting The Bank**

I'd already decided to bypass PayPal and go straight to my bank, where I knew it would be easy to speak to someone quickly. I did this on 11th Feb in anticipation of PayPal denying my claim because, well, that's what they do it seems.

I got through to my credit card issuer quickly, spoke to their fraud/chargeback department and explained what had happen. They agreed there was clearly fraud involved so they said they would raise a chargeback. They said this would take a minimum of 15 days to allow the merchant (PayPal in this case) to respond and/or force the refund through.

I had to bump the claim email a couple of times, and eventually it started to move - I received the money back onto my credit card on 9th Mar. I then received an email from PayPal on 11th Mar saying that they had received a claim that they couldn't complete because "You opened this dispute with your bank or credit card issuer, and not with us. We can't provide additional details or updates on this claim because we don't have access to the investigation details."

So the two sides don't really speak to one another here, despite there being a claim from me on both sides, with all the relevant transaction details and reference numbers.

My bank told me there was still a 45 day period after the chargeback that the merchant could dispute it, and that would prolonge the process, but as I said I heard nothing more from PayPal.

Clearly there are some problems here.
 
**Problems With The PayPal Refund Process**

A seller should not be able to refund a payment if their PayPal balance is not sufficient to cover the refund amount or their source of funds (bank/card/whatever) cannot be debited immediately. None of this "eCheck" nonsense.

If the balance is insufficient and the source of funds fails then any "eCheck" should only be available by them contacting PayPal support and providing a legitimate reason. In the case of an "eCheck" their balance should be negated, be locked (no further use of the account) until the arrears are paid by the eCheck, and PayPal should honour the refund amount to the buyer immediately. This gives the seller reason to pause before refunding a payment if their balance will not cover it.

Disputes are automatically closed if a "refund is in process" but the nature of eCheck refunds mean they can and will fail, leaving the buyer in limbo for several weeks. The last email I received from PayPal was the final "Your refund didn't complete" message on 13th Mar. I assume the chargeback from the bank forced the refund cycle to end.

**Problems With The eBay And Seller Feedback Display**

Items can be deleted while the payment/refund process is still in process! This seems quite ridiculous. Of course this is an implementation detail, and eBay support will be able to see the original listing[^3], but the item being no longer visible makes appealing the payment/refund more difficult if you need to go outside the eBay support system. Given how closely linked eBay and PayPal are this seems a massive oversight.

Feedback displayed on listings is misleading. The feedback displayed should only be the selling feedback total, the buying feedback is irrelevant. eBay's feedback page does break the feedback down when clicking through to it, but it should be right there on the auction page. It's possible for a seller to have a high feedback rating, all positive, but *none* of it be for selling items. eBay/PayPal say that they protect the buyer but at the same time have a misleading display of feedback - that seems contradictory.

The irony of all this is that eBay, as a buyer experience, has improved over the last few years as it seems a lot of the bad sellers, counterfeiters, and so on, appear to have moved to Amazon; thus Amazon is now encountering many of the problems that eBay was seeing a decade or so ago, and the buyer experience on Amazon has gone down significantly.

**Problems With PayPal/eBay in General**

What's more worrying about all of this is that the original (compromised) seller account is still open and running on eBay. I assume the (also compromised) PayPal account is still open as well.

I couldn't file a claim against the seller on eBay because the item was deleted. My dispute on PayPal probably never made it past the first, presumably automated, support level.

I'm not surprised by all of this - In a previous job I sat in a meeting with some bank representatives, in relation to contactless payments, who told us the limit was set a such a point that meant it would be cheaper (to the bank) to just honour any chargebacks rather than waste time/money on investigating them. This is the way some parts of the dispute process work. It seems an almost £1,000 chargeback was not worth the effort for PayPal to dispute.

To be fair to eBay they have improved their buyer experience over the past few years, notwithstanding the aforementioned problems. Perhaps being split out of PayPal[^4] has led to this, but it is undeniable that the two companies are still strongly linked due to most listings offering or even requiring PayPal. So you get doubly hit by fees when you do sell through those platforms.

The reality is that these are still the best platforms to sell on if you want to reach the most buyers, they have massive market penetration. Sure here in Switzerland we have Galaxus and Ricardo, but they're localised. I still list most items on eBay as GBP listings. I just wish eBay/PayPal/Amazon would use a bit more of their billions to pay their staff better and crackdown on fraud more.

**So What About My XPan**

I sent it off to be repaired and serviced. All in, including postage to the Netherlands and back, the repair cost me about £500 and the Xpan is now like new again in terms of core functions.

I did get a letter from the carrier demanding another £500 for import duties as the repair shop had listed the (now massively inflated) value of the camera when returning it for insurance purposes. I refused to pay this and told them why, telling them that there was proof this was repair in the documentation included in the shipping and I had proof of my shipping the camera to the Netherlands. I haven't heard back from them yet, that was about six months ago.

This does raise another interesting question - how much is being made by various entities on the taxing of goods that are second/third/fourth hand and are long since unavailable to purchase new? Seems like a curious benefit to the coffers of those entities.

<hr />

[^1]: [XPan History](https://www.hasselblad.com/history/xpan/)

[^2]: I was now 99.9% sure this fraud involved an account take over

[^3]: Data is rarely deleted, it is just marked as so. This goes for any site, not specifically eBay.

[^4]: [PayPal history](https://en.wikipedia.org/wiki/PayPal#Spin-off_from_eBay_(2014%E2%80%93present))

---
title: Current Frustrations With Lloyds TSB
layout: blog
tags:
    - banking
    - bug_or_feature
    - living_abroad
    - 3d_secure
---
I've become increasingly frustrated with Lloyds TSB this past year. Reasons:

**Telephone verification is semi-useless** - This is used as two factor authentication when adding a new payment recipient, which is a fine idea in principle but fails when you are out of the country. So if you want to make a payment to a new recipient when out of the country, which i'm sure isn't that rare a use case, you can't. The failure is caused by the automated system not being able to call a mobile phone that is outside the UK. This is odd given that this technology is established and they have no problem sending SMS messages to the same number when outside the UK. Disparate systems no doubt.

**Bug in online banking credit card statement** - The online statement fails to display recent transactions, but not all transactions and not all the time. Although the shadow balance and true balance are shown correctly the transactions that contribute to the true balance may or may not be shown. It is clear they are missing as the table, which has alternate background colours for the rows, has the text missing. So you know *something* has happened but you don't know *what*[^1]. This bug is compounded by transactions not appearing for several days, which is a general quirk of the clearing system and not the issue. The bug only affects the most recent transactions page, so once the month cycles to the next all the transactions are displayed correctly. Essentially this means you may wait up to 30 days for a transaction to appear in your online statement. This is not how online banking should work. I reported this bug to Lloyds TSB, they said they were aware of the issue and it would be fixed soon. That was several months ago.

**"Faster Payments"** - This goes hand in hand with the above issue. When making a transfer from my *Lloyds* current account to my *Lloyds* credit card i see the "Faster Payment In Progress" screen and the money is debited from my current account immediately. The money doesn't appear in my credit card until at least 2 days later. This is not a faster payment. Although it is, again, probably a quirk of the clearing system it is misleading (and frankly wrong) to display the faster payment interstitial page when the recipient does not see the funds for more than a few hours.

**"Non-Sterling Transaction Fee"** - these have always existed but up until recently (this year?) they were hidden in the foreign exchange conversion, so now it is possible to see the actual impact. For me so far this year: £79. So let us pull some figures out of thin air for the UK market, because that's always fun:

* Several million Lloyds credit cards in circulation[^2]
* Approx £15billion spent on foreign transactions per year using credit cards[^3]
* Of which Lloyds owns about 10% market share[^4]
* Is about £1.5billion spent abroad on Lloyds credit cards.
* Charging 3% for "Non-Sterling" nets £45million per year.

A nice little earner. You can probably double that figure because Lloyds also charge similar fees on their debit cards.

**Their implementation of 3d Secure / Verified by Visa** - Is broken. That is to say they *negate* the reasons for 3d Secure from a user perspective by replacing a poorly implemented single-factor authentication system with zero-factor authentication. They claim, having casually talked to them about this, that they are doing fraud analysis on the transaction details; but knowing the technical details of the 3d Secure specification this sounds suspect. I imagine they are playing the *chargeback cost balancing game*[^5] and just letting through the majority of low value transactions. If i've lost you, the effect is thus: i never have to enter my 3d Secure password, i am simply passed through the process. I am not an exception, i have seen backend data that verifies this as a hack on Lloyds' part, where the ECI value does not correspond to the Authentication Result value. Someone at Lloyds obviously did the math and realised the cost of abandonments was greater than the cost of fraud so they've decided to bypass the system. MasterCard and Visa are partly to blame for this, more on this later[^6].

<hr />

[^1]: I do know what, i keep track of this myself.

[^2]: [http://www.asia-analytics.com/en/insights/case-studies/lloyds](http://www.asia-analytics.com/en/insights/case-studies/lloyds)

[^3]: [http://www.theukcardsassociation.org.uk/wm_documents/decade_of_cards_final.pdf](http://www.theukcardsassociation.org.uk/wm_documents/decade_of_cards_final.pdf) # Section 6 - £30billion spent on transactions abroad, with approx 50% of that on credit cards.

[^4]: [http://www.theukcardsassociation.org.uk/2012-facts-figures/index.asp](http://www.theukcardsassociation.org.uk/2012-facts-figures/index.asp) # Several million cards of 56million credit cards in circulation.

[^5]: "What's the minimum amount of fraud we can let through where the cost to refund the money to cardholders is lower than the cost to process the chargebacks"

[^6]: Maybe.

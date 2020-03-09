---
title: AUTHORS File As An Attack Vector (D)
layout: blog
tags:
    - technicalities
    - technology
    - version_control
    - github
---

<div class="footnote"><b>TL;DR</b>: If you have an AUTHORS file, or single public code repository, that contains both your work and personal emails, an attacker could figure out a colleague's work email, register a malicious typo'd version of your personal email, and then attempt phishing on your colleague via that malicious email.</div>

Ever received a spam/phishing email that contained enough parts that make it seem a bit *too* much of a coincidence? This was one of those cases.

On Sun 8 Mar 2020 07:58:00 -0700 (PDT) my boss received an email that appeared to come from me. Except *clearly* it didn't come from me as the content of the email didn't conform to my usual way of writing an email. The email content was minimal, an HTML body with his name and then a URL shortened link. As my boss is smart enough and experienced enough to know that the email looked like a phishing attempt he didn't click the link.

When I examined the link with `curl` it didn't appear to be malicious - the URL shortener had some tracking but was a simple rediect to a `.ru` URL. The URL that was redirected to contained a simple HTML document of nonsense text with no other assets, no javascript, no other redirects, nothing that looked like spam or anything to attack the user.

The kicker was the details of the from and reply-to fields in the phishing email. They looked like my personal email addresses, so it seems the point of the email was not to get my boss to click on the link but instead to reply to the email. So what's going on here?

**Email Headers Cannot Be Trusted**

You may know this already[^1]. When an email is sent there are various parts of the low level message that get parsed by your email client to display that information in a nicer way. There are loads of these, but the relevant ones here are:

```
To: "Boss" <boss@company.com>
Reply-To: "Lee" <somelongnamev@someprovider.com>
From: "Lee" <somelongname@someotherprovider.com.br>
```

None of this can be trusted as a spammer/attacker can put whatever they want into some of these fields. So they could put my personal details in the `From` and `Reply-To` fields. They didn't quite do that - they used a different TLD[^2] for the `From` address and they added an extra `v` character on the end of my person email address in the `Reply-To` field.

I guess they were trying to get my boss to reply to this email and then the social engineering could really begin? The extra character was enough that this email address could be mistaken for my actual email address, making it appear to come from me. Had they used my work email it would have been much clearer that the address was wrong.

The next question is where did the attacker get the information to be able to target my *boss* using details that could be mistaken as me? Not just obvious details, but details that were so old as to no longer be relevant - details from long before I started working at this company?

**AUTHORS**

The thing about my personal email `somelongname@someprovider.com` is that I haven't used it for years for sending messages. It's one of those addresses I used to use when I had someprovider.com as my ISP[^3] more than a decade ago, I continued to use it now and then until treating it as a "receive only" address about seven or eight years ago. I have at least three of these types of addresses. I'm sure you've got loads of them as well.

However, the email address was referenced in my git commits because when I started using github to upload public repositories I was still using this address. Later I started maintaining this code at work, as the company lets me do some of this. Thus both my personal and work emails are now within these repositories and so both got into an AUTHORS file:

```
Lee J <lee@company.com>
Lee Jo <somelongname@someprovider.com>
...
```

As far as I can tell these repositories are the *only* place where both my work email and this particular personal email can be linked. The *only* other way you could link them is a lot of manual searching and putting together various pieces, And seems like too much effort unless this was a very targeted attack. That doesn't seem likely.

**What To Do Next?**

As I say, I'm not 100% sure if this was us being targeted specifically, or if someone is trawling github for AUTHORS files to find potential victims. It's a very specific attack that requires three key things:

 * An AUTHORS file that contains a personal and work address that appear to be the same person
 * A work address where `@company.com` reveals the website for the company
 * A company site that lists employees of `company.com` so they can find victims

Of course the third step isn't essential - given that it's relatively easy to find out who works for a company[^4]. I think it was required here however, as my boss doesn't do social media.

But anyway, the point here is that the *only* way the attacker could have put these pieces together was through either an AUTHORS file or the git logs in a couple of our open source code repositories. I've deleted the AUTHORS files from version control, you may want to do the same. Of course this doesn't remove this attack vector completely - there's nothing stopping someone using the git logs to get the same information, in which case a stronger defense of not having your work address visible at all may need to be taken.

Another point here is that the effort put into the email content was minimal and was the thing the raised the red flag - it seems that if a bit more research/time were to be put into making the email seem legitimate then these could be much easier to fall for.

It's also worth noting that I haven't confirmed whether or not the `Reply-To` email does exist, but that's immaterial here. And, yes, potentially I'm reading too much into all of this, but it *does* seem like this is all too much of a coincidence.

<hr />

[^1]: [Email Headers](https://www.alyninc.com/2018/11/10/email-headers-what-can-they-tell-the-forensic-investigator/)

[^2]: Top-level domain: `.com`, `.co.uk`, etc.

[^3]: When everyone was using their ISPs builtin email service.

[^4]: LinkedIn, social media, trivial googling, etc.

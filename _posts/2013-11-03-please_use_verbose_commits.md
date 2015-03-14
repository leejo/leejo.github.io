---
title: Please Use Verbose Commit Messages
layout: blog
tags:
    - software
    - git
---

...

	commit abcdef1234567890abcdef1234567890abcdef12
	Author: Everyone <everyone@everywhere.com>
	Date:   All The Time

		XXX Use verbose commit message where possible

		When committing changes aim to use verbose commit messages where
		appropriate. This is not necessary all the time, as some commits
		will be trivial changes, but for any commit of significant size
		aim to explain three key elements: *what* has changed, *why* it
		has been changed, and if necessary *how* it has been changed [1].
		As a bonus you can include related instructions in the commit, for
		example usage instructions or even testing documentation [2].

		If this is difficult imagine you are sending the changes as a
		patch in an e-mail attachment to someone and you need to explain
		your intention in a few short paragraphs. Your e-mail would have
		a short subject with a reference to a ticketing system (if the
		changes link to a ticket, i am using XXX here as an example) and
		then the body of the message should detail the patch. Perhaps you
		might have the ticket reference in the body, rather than the head,
		but that means it won't show in some of the succinct log options.

		You will see the advantages immediately. Other users of your repo
		will be able to understand your commits without having to spend
		a lot of time reviewing the actual diff. Developers in your team
		will understand your intentions better in the code review.
		Contributers will be able to understand the history of the project
		better. Bisects will be more powerful as when you find the bad
		commit you see if this was down to a bug in the commit or failure
		to updates tests: if the intention of a commit is not clear and it
		breaks tests then what should we do? Revert the offending commit
		or fix the tests?

		If you use a commit model of frequent short WIP commits i suggest
		you work on a WIP branch and then squash merge your completed
		work onto a final branch, which you can then rebase/merge to your
		mainline as necessary [3]. Your WIP commits can be as terse as you
		like, but when you squash merge then be verbose.

		----

		[1] This is not a substitute from commenting your code, but you
		will see great benefit when doing a git blame and being able to
		link every single line of code to a verbose commit message.

		[2] It is helpful to be able to view the diff when writing a long
		commit message, so add a hook to your editor to display the diff.
		Here is a hook for vim, add this to you ~/.vimrc file to get a
		vertical split of the diff with the cursor in the right place
		ready for you to write the commit message:

			if match( bufname(1),'COMMIT_EDITMSG' ) != -1
				:silent !git diff --cached >/tmp/commit.diff
				:silent :vsplit /tmp/commit.diff
				:wincmd l
				:wincmd H
				:set spell
				:set ft=gitcommit
			endif

		[3] I hope you never rebase your WIP commits against mainline, you
		know that is bad right? No single commit should break any tests.
		Ever. Otherwise you hugely reduce the power of git bisect 

OK that was a somewhat longer commit message than i would normally make[^1], but i am trying to make a point. If you are using single line commit messages, or even multi line commit messages that don't really explain your intention, then you are making life a little bit more difficult than it needs to be for you team members, contributors, code reviewers, auditors, and so on. You can bend git logs to your will so being verbose in the commit body is cheap. It shouldn't take you more than a couple of minutes to write a good commit message, which will quite likely *save* you time in the future

This isn't necessary all the time. Say you have a private repo that you are using that isn't going to be forked or contributed to. Fine. Of course the trivial changes, "correct typo", "rename file(s)", "change ip in config", and so on don't necessarily need verbose commit messages[^2]. If you look at my "code" repo on my github you will see the majority of commit messages are terse, because i don't expect anyone to have use for this repo and many of the commits are trivial one line changes.

Why am i making these points? Because we have, for the most part, adopted the power of git but it seems that many public repositories have a majority of commit messages written as if they were using rcs. Rather than begging the question i decided to see what the mean commit message size is for the top trending repositories on github using a tool i wrote a while ago combined with a simple bash wrapper script[^3]. The results are as follows:

		/vhf/free-programming-books        --->ALL  145
		/TryGhost/Ghost                    --->ALL  212
		/limetext/lime                     --->ALL  172
		/HubSpot/offline                   --->ALL  120
		/PredictionIO/PredictionIO         --->ALL  137
		/Diogenesthecynic/FullScreenMario  --->ALL  177
		/HubSpot/odometer                  --->ALL  122
		/path/FastImageCache               --->ALL  169
		/adobe-webplatform/Snap.svg        --->ALL  123
		/jimhigson/oboe.js                 --->ALL  108
		/driftyco/ionicons                 --->ALL  107
		/madebymany/sir-trevor-js          --->ALL  158
		/twbs/bootstrap                    --->ALL  144
		/thecodepath/android_guides        --->ALL  109
		/angular/angular.js                --->ALL  266
		/jquery/jquery                     --->ALL  156
		/FortAwesome/Font-Awesome          --->ALL  128
		/benweet/stackedit                 --->ALL  119
		/jlukic/Semantic-UI                --->ALL  127
		/YaroslavGaponov/node-jvm          --->ALL  115
		/IFTTT/JazzHands                   --->ALL  129
		/takezoe/gitbucket                 --->ALL  132
		/alvarotrigo/fullPage.js           --->ALL  138
		/mgechev/angularjs-style-guide     --->ALL  116
		/Gazler/githug                     --->ALL  156

Taken across all 25 the mean commit message size for the last 200 commits of those repositories is **143** bytes. Since the size includes the commit message with the Author and Date we have to subtract the 38 bytes for the date and (being generous) 28 bytes for the Author. That means the actual bytes of the written commit message is just **77**. So the majority of those commit messages look something like this:

		commit 2bda99c18a0372eed02472e9d318676e180281da
		Author: Some Person <someper@gmail.com>
		Date:   Tue Sep 14 17:00:00 2010 -0100

			Here is the commit detail, sometimes a ticket ref but thats it

It doesn't seem to me that this is enough to express intention. Referencing an issue number is better but you have to remember that this pulls me away from terminal. Alright, i'm being a little simplistic here but one of the powers that git has is being fully functional when you are not online. Granted that is a rarity these days, but it is an argument for being verbose *as well as* including the issue/ticket number in the commit. I am making the assumption here that your ticketing system is adequate, if it is not then that is a greater argument for a verbose commit message. A while ago i contributed some patches to an open source repo and in trying to track down the source of the issue i found the offending commit. It looked something like this:

		use bar instead of foo

That's not fantastically helpful, there wasn't even a ticket reference to go on, so what was the true reason for this commit? After finding the ticketing system and the appropriate ticket i discovered that it was no more help:

		replace foo with bar

Knowing the project and what foo/bar did i'm guessing that this was either related to making the build of the software easier across other platforms, or was something to do with licensing. I *still* don't know the reasons. As time goes by this commit will become ever more confusing. Maybe we should adapt a term from another colloquialism[^4] and say this change will suffer from commit-rot quite quickly.

For examples of great commit messages take a look at the Linux kernel repo[^5], git's raison d'être, and see how easy it is to understand the intention of each commit. Notice the extra commit message tags that detail sign-off information, implying code review. 

I'm sure there are many projects with examples of great commit messages, perhaps this is a sign of more mature product or a higher level of organisation; with newer quickly changing smaller projects there may be a temptation to get stuff out to the world quickly, but i don't think this should be to the detriment of a useful commit history.

<hr />

[^1]: Actually not that much longer.

[^2]: Are these all trivial changes? Why are you renaming or moving the file(s)? Why are you changing the IP? Has something broken? Is something due to change?

[^3]: [Available here](https://github.com/leejo/code/commit/d127706d7052e9402897be76435bdc8ec97c625e).

[^4]: I'm thinking of [bit-rot](http://en.wikipedia.org/wiki/Bit_rot).

[^5]: [https://git.kernel.org/cgit/linux/kernel/git/torvalds/linux.git/log/?showmsg=1](https://git.kernel.org/cgit/linux/kernel/git/torvalds/linux.git/log/?showmsg=1)

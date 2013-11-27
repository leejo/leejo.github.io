---
title: False Positives With YouTube Search
layout: blog
tags:
    - software
    - bug_or_feature
---

There have been a few posts regarding YouTube functionality recently, specifically related to comments[^1]. Maybe there is a deeper issue here with Google attempting to shoehorn Google+ into yet another service, but that's another problem.

My concern here is that YouTube search seems to be broken for niche and/or filtered search strings. It would appear that YouTube/Google are inferring your search requirement rather than taking the exact string and using it explicitly in a search. This is not what i or anyone else would expect. If i search for "Alex De Grassi" filtered to the past week i expect youtube to return any video uploaded in the past week that has a title or description with the string "Alex De Grassi" in it.

If my search string and filters have no results i expect to see no results. I do not want to see [another damn cat video](http://www.youtube.com/watch?v=26BwpL4jef4) just because it shares the title with a piece of music written by the artist i searched for. There may be an argument that this fuzzy search mechanism, where related content is also searched for, is helpful for people who don't know what they want; but this is not how i expect a search engine to behave, it feels like we've gone backwards 15 years.

I'm sure in many cases people find this type of search useful. I don't. If i am quoting a search string i am saying i want the exact string matched. Currently i can search for a video and see dozens of results, none of which are even remotely relevant. A 100% search failure rate from a company that built its reputation on search accuracy.

<hr />

[^1]: [Well, more than a few](https://www.google.com/search?q=youtube+comments)

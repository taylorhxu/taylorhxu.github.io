---
layout: post
title: Publishing from R+knitr to WordPress
categories: [R language]
tags: [knitr, WordPress, RWordPress, Markdown]
---

Tal Galili [asked](http://stackoverflow.com/q/14660969/559676) a question on StackOverflow on publishing blog posts to WordPress from R + **knitr**. William K. Morris has written [a solution](http://wkmor1.wordpress.com/2012/07/01/rchievement-of-the-day-3-bloggin-from-r-14/) long time ago, and I tweaked it a little bit and created a function `knit2wp()` in the [development version](https://github.com/yihui/knitr) of **knitr**.

See the [page for WordPress](http://yihui.name/knitr/demo/wordpress/) in the **knitr** website for details. Below is a sample screenshot:

![knitr, R Markdown and WordPress](http://i.imgur.com/E7af1ET.png)

P.S. I meant to write a separate post about this, but I probably will not find time -- in case you have not [noticed](http://lists.stat.ucla.edu/pipermail/jss-announce/2013-January/000377.html), the [Journal of Statistical Software](http://www.jstatsoft.org/) ranked the first recently in terms of the impact factor in the category of "Statistics & Probability":

[![Impact factor of the Journal of Statistical Software](http://i.imgur.com/xC0MI6P.png)](http://i.imgur.com/xC0MI6P.png)

Although everybody agrees the impact factor is nonsense, I think this is still an indication of the impact of open-access journals. If I cannot read the full content of a paper from my Google search, I will not bother to read it at all. No, I'm lazy and I will not go the library.

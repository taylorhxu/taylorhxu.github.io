---
layout: post
title: 'The fun Package: Use R for Fun!'
categories:
- R language
tags:
- Five in a row
- fun
- games
- Mine sweeper
- R Package
- sudoku
---

A couple of days ago we released a package named [fun](http://cran.r-project.org/package=fun) to CRAN, but I did not dare to send an announcement to r-packages@r-project.org as usual. This package is a collection of some classical computer games (e.g. the Mine sweeper and Five in a row) as well as other funny stuff. Some examples:

{% highlight r %}
## install.packages('fun')
library(fun)
if (.Platform$OS.type == "windows") x11() else x11(type = "Xlib")
mine_sweeper()
{% endhighlight %}

![Mine Sweeper in R](http://i.imgur.com/U4oAT.png)

{% highlight r %}
library(fun)
gomoku()
{% endhighlight %}

![Five in a row in R](http://i.imgur.com/8jcQl.png)

You can take a look at the list of functions in this package by reading the HTML help page (go to `help.start()`), and I also need to mention the demos, e.g. see `demo('TurtleGraphics')` for a demo of Turtle graphics (how many people know the old Logo programming language?), and `demo(package = 'fun')` for a list of all demos in this package.

{% highlight r %}
demo('RealTurtle', package = 'fun')
{% endhighlight %}

![A turtle drawn in R](http://i.imgur.com/oWdOu.png)

Although these topics are not new, they can still be good programming exercises.

We started writing this package more than two years ago, but it was almost forgotten later until a few days ago someone mentioned the game "Five in a row" in [our web forum](http://cos.name/cn/). This forum is almost the Chinese version of R-help, and it is not unusual for people to bring forward all kinds of funny ideas with R. If you are at useR! 2011 right now, you probably have heard from George Zhang [about the Chinese R conferences](http://www.warwick.ac.uk/statsdept/useR-2011/schedule/LIGHTNING.HTML) these years, and this forum has been the sponsor and organizer ever since the first conference (which I initiated). However, please do not get a wrong impression that Chinese useRs are doing mine sweepers with R every day.

Feel free to share with us if you have more fun. The developers' page is at: <https://github.com/yihui/fun>

P. S. This package may remind some people about the [sudoku](http://cran.r-project.org/package=sudoku) package (e.g. [Joshua Wiley has noticed it](https://plus.google.com/109653178371807724268/posts/eGKq27aqK5b)), and some people may even remember this:

{% highlight r %}
library(fortunes)
fortune('sudoku')
{% endhighlight %}


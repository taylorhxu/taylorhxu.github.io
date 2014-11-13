---
layout: post
title: Be Careful with the Value Returned in R Functions
categories:
- R language
tags:
- function()
- line break
- return()
---

You are free to break the lines when writing R code, but be careful to R functions when there are operators `+` or `-` in your expression to return:

{% highlight r %}
f1 = function() {
    1 + 1
}
f1() # of course 2
f2 = function() {
   1
   + 1
}
f2() # returns 1
f3 = function() {
   return(1
   + 1)
}
f3() # 2; use return() if you want break lines, or
f4 = function() {
   1 +
   1
}
f4() # 2; don't put '+' in the beginning, as '+1==1'
{% endhighlight %}

These examples are quite simple, but sometimes you will forget this rule, e.g.:

{% highlight r %}
testMat = function(len = 50, digits = c(3, 5, 7, 9, 11, 13, 15, 17, 19)) {
    n = length(digits)
    matrix(1:0, 2 * len, n)
      + matrix(10^digits, 2 * len, n, byrow = TRUE)
}
{% endhighlight %}

Can you find out the error in the above function without reading my hints beforehand?


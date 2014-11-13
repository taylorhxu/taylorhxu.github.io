---
layout: post
title: multicol -- Multi-column Pages in LaTeX
categories:
- Computer Science
tags:
- LaTeX
- multicol
---

When I was adjusting my slides for a talk (to be given in Oct 16) in the Capital University of Economics and Business, I found the table of contents was a little bit too long to be placed in a single page while the titles of all sections are not so wide, thus I searched for some instructions on multi-column pages in LaTeX, and easily got this Wikipedia page: <http://en.wikibooks.org/wiki/LaTeX/Page_Layout>. Some codes as follows will just help us separate a part of texts into several columns:

{% highlight latex %}
...
\usepackage{multicol}
...
\begin{multicols}{3}    % 3 columns
   If you are using a standard Latex document class,
   then you can simply pass the optional argument twocolumn
   to the document class: \documentclass[twocolumn]{article}
   which will give the desired effect.
\end{multicols}
...
{% endhighlight %}

This is what my table of contents looks like now:

![multicol -- Multi-column Pages in LaTeX](http://i.imgur.com/MguIG.png)

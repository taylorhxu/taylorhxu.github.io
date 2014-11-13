---
layout: post
title: Numbered Figure/Table Captions in beamer
categories:
- Computer Science
tags:
- beamer
- Caption
- Figure
- LaTeX
- Numbered Caption
- Table
---

I'm really surprised that _most_ [beamer](http://latex-beamer.sourceforge.net/) slides I've ever seen have Figure/Table captions like this:

> Figure: blabla blabla

or

> Table: blabla blabla

which should have been Figure **1** or Table **2**.

Why are the caption numbers missing? This is because beamer does not produce these numbers by default. To enable numbered captions, you have to put this in the preamble of your LaTeX document:

{% highlight tex %}
\setbeamertemplate{caption}[numbered]
{% endhighlight %}

I'm a picky LaTeX users... I cannot stand captions without numbers.

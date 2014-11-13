---
layout: post
title: Font Families for the R PDF Device
categories:
- R language
tags:
- AvantGarde
- Bookman
- Courier
- Font Family
- Graphics
- Helvetica
- Helvetica-Narrow
- LaTeX
- NewCenturySchoolbook
- Palatino
- pdf()
- pdf.options()
- pgfSweave
- Sweave
- Times
---

Motivated by the excellent R package `pgfSweave`, I begin to notice the font families in my graphs when writing Sweave documents. The default font family for PDF graphs is `Helvetica`, which is, in most cases (I think), inconsistent with the LaTeX font styles. Some common font families are listed in `?postscript`, and we can take a look at them by:

{% highlight r %}
for (f in c("AvantGarde", "Bookman", "Courier", "Helvetica",
    "Helvetica-Narrow", "NewCenturySchoolbook", "Palatino", "Times")) {
    pdf.options(family = f)
    pdf(paste(f, ".pdf", sep = ""))
    set.seed(123)
    plot(rnorm(25), pch = 1:25, xlab = "xlab family", ylab = "ylab font",
        main = paste("Font Families in R (PDF):", f))
    text(13, 0, "Text in the Middle")
    mtext(sprintf("pdf.options(family = \"%s\")", f), side = 4)
    dev.off()
}
{% endhighlight %}

![Font Families for the R PDF Device](http://i.imgur.com/TqZWn.png)

It seems that `"Bookman"`, `"NewCenturySchoolbook"`, `"Palatino"` and `"Times"` can be better choices when using Sweave because they are serif fonts, which are usually more consistent with LaTeX PDF.


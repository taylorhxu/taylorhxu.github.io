---
layout: post
title: Medium inspired reading time estimate in Jekyll
date: 2014-11-27 09:43:25
---
Medium’s time to read feature is pleasing. It’s a piece of UX so obvious it is hard to see why someone didn’t think of it before. That’s what makes it so brilliant. A more subtle observation, which Matt Swanson makes in the link above, is that the on-page positioning is also clever. 

It’s a natural user action to glance at the scrollbar to check the page length. Placing the time to read component in the top right corner provides great usability.

Like many others I was keen to copy this in Jekyll. To mimic Medium we want to display something human friendly. Think “x minutes” rather than “y seconds”. It’s obvious that the solution looks like 

	var timeToRead = 
	Math.round( content.length() /avgWordsPerMinute ) 					

(but in Ruby - I’m thinking in JS at the moment), but those of us looking to take advantage of hosting on Github Pages run into the problem that it prevents the use of any plugins. We can use the Liquid templating language, but the Liquid filter divided_by has the slightly odd behaviour of returning the integer part of the result (essentially the floor), so lateral thinking is required.

My solution is to deal with the lower word count cases explicitly, then not care once we get above a certain threshold. Above this I assume the variance in reading speed trumps any inaccuracy introduced by taking the floor rather than rounding to the nearest minute. Wikipedia suggests aproofreading speed on screen of 180 wpm, so we end up with:

	assign words = content | number_of_words
	if words <= 90 
	assign reading_time = "30 sec" 
	elsif words < 270 %}
	assign reading_time = "1 min" 
	elsif words < 450 %}
	assign reading_time = "2 min" 
	elsif words < 630 %}
	assign reading_time = "3 min" 
	elsif words < 810 %}
	assign reading_time = "4 min" 
	elsif words < 990 %}
	assign reading_time = "5 min" 
	else 
	assign reading_time = words | divided_by:180 | append:" min" 
	endif




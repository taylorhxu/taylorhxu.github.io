---
layout: post
title: Indication of reading time
date: 2015-01-02 22:43:25
excerpt: Indication of reading time
---

### Indication of reading time

By simply adding the following code into `/_layouts/post.html`

```{% assign minutes = content | number_of_words | divided_by: 180 %}
{% if minutes == 0 %}
{% assign minutes = 1 %}
{% endif %} 
```

Then add the following to where indication is needed.

`<span class="post-meta small">{{ minutes }} minute read</span>`

Here is an example that how I use the indication of reading time along with my `post.html`

```<span class="post-meta">
        	<time datetime="{{ page.date | date_to_string }}">{{ page.date | date_to_string }}</time>
          {% if page.categories.size > 0 %}
          {{ page.categories | array_to_sentence_string | prepend: 'on ' }}
          {% endif %}
        </span>
<span class="post-meta small">{{ minutes }} minute read</span>
```

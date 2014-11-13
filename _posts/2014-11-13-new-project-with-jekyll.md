---
layout: post
title: New project with Jekyll
date: 2014-11-13 19:43:25
---
Since 2011, I have been working as a technology officer for a student-run educational charity. Therefore, I am in charge of the support, the maintenance of the website and such. The website is built with self-hosted WordPress, I built the website within one day back in 2012, as there was a necessity that an official website to be built in such short time. Since then I have been supporting the website, searching for new plugins to meet the requirements.

So far, the website has the following main functionalities:
1. Committee announcements
2. Volunteer directory 
3. Volunteer information page
4. contact forms with file submission 

Everything worked perfectly until last month, the website was attacked, and there were codes inserted into the .php files. That was a nightmare. 

I have thought about using a static site generator for this Non-profit charity, and the incidence triggered the change.

However there was one question, Jekyll itself allows plugins, but Jekyll with Github pages, I need to do some adjustments, based on the need of contacting with file submission.

Thankfully I found a solution: 
- [forms by Brace.io](http://forms.brace.io/)

And I don’t need a database for my contact form. This is just perfect. 

I just need to open your text editor, and paste the following code: 

`
<form action="//forms.brace.io/you@email.com">
  <input type="email" name="_replyto">
  <textarea name="body">
  <input type="submit" value="Send">
</form>
`

Simply change the email address to my email address. And it’s ready to go!

Now let’s take a look at [forms by Brace.io](http://forms.brace.io/)

![braceio.png](/images/braceio.png)

The Editing interface reminds me a little bit about tumblr. And you can add more text inputs and even *file submission*, the function that I really need, to the form.

This tool is provided free of charge with an upper limit of 1000 emails per month, if you need more, you can contact the team in due course, simply by email to: team@brace.io

Interested?

[Create your own form here](http://brace.io/sites/build/anon?template=formspree-example.brace.io)

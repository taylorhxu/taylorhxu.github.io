---
layout: post
title: Creating & publish Slidify presentation to Github 
date: 2015-01-25 09:33:56
categories: Programming
summary: Step by step tutorial on how to create a presentation and publish Slidify presentation to Github with the publish Command. 
tags: programming, 

---

### Publish
Slidify makes it easy to publish your slide decks online.

### Github Pages

Publishing to Github is as easy as running `publish` from inside the slide directory. You need to have`git` installed on your system, create an empty `github` repo and `ssh` access set up for `github`.

```
publish(user = "USER", repo = "REPO")
```


[slidify.org](http://slidify.org/start.html)

> Note. You will need to create an empty repo on github and replace USER > and REPO with your github username and reponame.

Slidify is not on CRAN as yet and needs to be installed from github. You can use Hadley's devtools package to accomplish this easily. You will also need slidifyLibraries which contains all external libraries required by Slidify.

```
require(devtools)

install_github("slidify", "ramnathv")

install_github("slidifyLibraries", "ramnathv")
```

### Load

`library(slidify)`

### Author Deck

This step will create a new directory ``mydeck`` and add the necessary scaffolding. If you have git installed, it will initialize it a ``git`` repo, checkout its ``gh-pages`` branch, add and commit everything. Finally, it will open ``index.Rmd`` for you to edit.

```
author("mydeck")
```

### Edit Deck

Write in RMarkdown, separating slides with a blank line followed by three dashes`---`.

### Generate Deck

```
slidify("index.Rmd")
```

### Push to Github

Login with your `github` account and create a new repository. Note that Github will prompt you to add a README file, but just use the defaults so that your repo is empty. You will need to have `git` installed on your computer and be able to push to `github` using `SSH`

```
# replace USER and REPO with your username and reponame
publish(user = "USER", repo = "REPO")
```

---
layout: post
title: Stock Price Visualisation
date: 2015-01-26 13:54:09
categories: programming
summary: By taking the Coursera Data Science course - Developing Data Products, I have created an interactive application using Shiny by RStudio.
tags: coursera, github, programming, r, shiny

---

# Overview

![](/images/stock/1.png)
 
This application is actually a modified and advanced version of an existing stock tool which is listed on [Shiny's tutorial series](http://shiny.rstudio.com/tutorial/lesson6/).

This app uses R's `quantmod` package, which detailed information can be found [here](http://www.quantmod.com/).

The function of this application is very easy to understand. By entering a stock ticker symbol into the textbox, the application would plot a the stock price within the given data range.

By default, Stock Price Visualisation(SPV) displays the GS(Goldman Sachs) ticker. To check a different stock, type in a stock symbol that Yahoo finance will recognise. Some common symbols are GOOG (Google), AAPL (Apple).

![](/images/stock/2.png)

As we can see here, the date range has been selected to be within 2014-11-13 and 2014-12-20. 

# ui.R

```{r}
	library(shiny)

shinyUI(fluidPage(
  titlePanel("Stock Price Visualisation"),
  
  sidebarLayout(
    sidebarPanel(
      helpText("Type in a stock to check. 
        Data will be collected from yahoo finance."),
     
      #Goldman OHLC from yahoo
      textInput("symb", "Ticker symbol", "GS"),
    
      dateRangeInput("dates", 
        "Date range",
        start = "2014-01-01", 
        end = as.character(Sys.Date())),
   
      actionButton("get", "Get Stock"),
      
      br(),
      br(),
      
      checkboxInput("log", "Plot y axis on log scale", 
        value = FALSE)
    
    ),
    
    mainPanel(plotOutput("plot"))
  )
))
```


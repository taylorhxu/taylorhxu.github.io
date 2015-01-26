---
layout: post
title: Stock Price Visualisation
date: 2015-01-26 13:54:09
categories: programming
summary: By taking the Coursera Data Science course - Developing Data Products, I have created an interactive application using Shiny by RStudio.
tags: coursera, github, programming, r, shiny

---

### Overview

![](/images/stock/1.png)
 
This application is actually a modified and advanced version of an existing stock tool which is listed on [Shiny's tutorial series](http://shiny.rstudio.com/tutorial/lesson6/).

This app uses R's `quantmod` package, which detailed information can be found [here](http://www.quantmod.com/).

The function of this application is very easy to understand. By entering a stock ticker symbol into the textbox, the application would plot a the stock price within the given date range.

By default, Stock Price Visualisation(SPV) displays the GS(Goldman Sachs) ticker. To check a different stock, type in a stock symbol that Yahoo finance will recognise. Some common symbols are GOOG (Google), AAPL (Apple).

![](/images/stock/2.png)

As we can see here, the date range has been selected to be within 2014-11-13 and 2014-12-20. 

Let's see the R scripts.

### ui.R

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
### server.R

```{r}
	# server.R

library(quantmod)
source("helpers.R")

shinyServer(function(input, output) {

  output$plot <- renderPlot({
    data <- getSymbols(input$symb, src = "yahoo", 
      from = input$dates[1],
      to = input$dates[2],
      auto.assign = FALSE)
                 
    chartSeries(data, theme = chartTheme("white"), 
      type = "candles", log.scale = input$log, TA = NULL)
      addVo() #add volume 
      addBBands() #add Bollinger Bands 
      addCCI()
     
  })
  
})
```

### helpers.R

```{r}
	if (!exists(".inflation")) {
  .inflation <- getSymbols('CPIAUCNS', src = 'FRED', 
     auto.assign = FALSE)
}  

# adjusts yahoo finance data with the monthly consumer price index 
# values provided by the Federal Reserve of St. Louis
# historical prices are returned in present values 
adjust <- function(data) {
             
      
      adjust_month <- function(month) {               
        date <- substr(min(time(month[1]), inf.latest), 1, 7)
        coredata(month) * latestcpi / .inflation[date][[1]]
      }
      
      adjs <- lapply(months, adjust_month)
      adj <- do.call("rbind", adjs)
      axts <- xts(adj, order.by = time(data))
      axts[ , 5] <- Vo(data)
      axts
}

```

Although I am not a statistician, but by enrolling myself onto the Data science course on Coursera, has been a wonderful experience to me. From an engineer's point of view, learning by doing is the best way of getting things into my head. And also, it is always nice to see my work is actually running. 

To finish, I am having great fun R and I hope I can develop more applications in the near future. As my interest lies in the area of biomedical healthcare related projects, I am hoping to develop another application on that. 

All files in the post and more work can be found on my [Github](https://github.com/taylorhxu).

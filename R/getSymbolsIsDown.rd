```{=tex}
\name{getSymbolsIsDown}
\alias{getSymbolsIsDown}
\title{Download Yahoo! Finance Data}
\usage{
getSymbolsIsDown(ticker)
}
\description{
The function downloads Yahoo! Finance company historical data. It supports historical prices, dividends only, stock splits and capital gain.  
It has 5 arguments, which are: getSymbolsIsDown(tickerList, fromDate, toDate, interval, events)  
The only required argument is the tickerList. The rest of the arguments defaults to: beginning of data, current date, daily, and historical.   
For tickerList argument you can reference to a list object which includes a list of tickers, or if just searching for one company, directly include the ticker.  
For the fromDate argument you need to specify starting date in format "Year-Month-Day". If not specified, it will start from oldest company information that Yahoo! Finance has.  
For the toDate argument you need to specify starting date in format "Year-Month-Day". If not specified, it will end with current date.  
Interval argument accepts the following: daily, weekly, and monthly. It can be written all uppercase, all lowercase, or only title case.  
Finally, events argument accepts the following: historical (for Historical Prices), dividends (for Dividends Only), splits (for Stock Splits), and capital (for Capital Gain). It can be written all uppercase, all lowercase, or only title case.
}
\examples{
getSymbolsIsDown("MSFT") # Return
getSymbolsIsDown("MSFT", "2021-01-01", "2022-01-01", daily, historical)
myList<-c("BABA", "MSFT", "AAPL")
getSymbolsIsDown(myList)
getSymbolsIsDown(myList, , , ,dividends)
getSymbolsIsDown(myList, , , ,splits)
getSymbolsIsDown(myList, , , ,capital)
}
```

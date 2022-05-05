```{=tex}
\name{getSymbolsIsDown}
\alias{getSymbolsIsDown}
\title{Download Yahoo! Finance Data}
\usage{
getSymbolsIsDown(ticker)
}
\arguments{
  \item{tickerList}{A Yahoo! Finance Ticker, or a reference to several of them in a list object.}
  \item{fromDate}{From date in "Year-Month-Day" format, defaults to oldest data.}
  \item{toDate}{To date in "Year-Month-Day" format, defaults to today's date.}
  \item{interval}{Accepts the following: daily, weekly, or monthly. It can be written all uppercase, all lowercase, or only title case. Defaults to daily.}
  \item{Events}{Accepts the following: historical (for Historical Prices), dividends (for Dividends Only), splits (for Stock Splits), and capital (for Capital Gain). It can be written all uppercase, all lowercase, or only title case. Defaults to historical}
}
\description{
The function downloads Yahoo! Finance company historical data. It supports historical prices, dividends only, stock splits and capital gain.
It has 5 arguments, which are: getSymbolsIsDown(tickerList, fromDate, toDate, interval, events)
The only required argument is the tickerList. The rest of the arguments defaults to: beginning of data, current date, daily, and historical.  
}
\examples{
getSymbolsIsDown("MSFT")

getSymbolsIsDown("MSFT", "2021-01-01", "2022-01-01", daily, historical)

myList<-c("BABA", "MSFT", "AAPL")
getSymbolsIsDown(myList)
getSymbolsIsDown(myList, , , ,dividends)
getSymbolsIsDown(myList, , , ,splits)
getSymbolsIsDown(myList, , , ,capital)
}
```

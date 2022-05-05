getSymbolsIsDown <- function(tickerList,fromDate="1970-01-01",toDate=Sys.Date(),interval="Daily",events="Historical") {

  if (!require(xts)) {

    stop("xts library not installed")

  } else {

    fromDate <- ((as.numeric(as.Date(fromDate)-as.Date(0, origin="1899-12-30", tz='UTC')))-25569)*86400
    toDate <- ((as.numeric(as.Date(toDate)-as.Date(0, origin="1899-12-30", tz='UTC')))-25569)*86400

    if (interval == "Daily"  | interval == "daily" | interval == "DAILY") {
      interval="1d"
    } else if (interval == "Weekly" | interval == "weekly" | interval == "WEEKLY") {
      interval="1wk"
    } else if (interval == "Monthly" | interval == "monthly" | interval == "MONTHLY") {
      interval="1mo"
    } else {
      stop("No interval set. Please input either Daily, Weekly or Monthly parameter.")
    }

    if (events=="Historical" | events=="historical" | events=="HISTORICAL") {
      events="history"
    } else if (events=="Dividends" | events=="dividends" | events=="DIVIDENDS") {
      events="div"
    } else if (events=="Splits" | events=="splits" | events=="SPLITS") {
      events="split"
    } else if (events=="Capital" | events=="capital" | events=="CAPITAL") {
      events="capitalGain"
    } else {
      stop("No event set. Please input either Historical, Dividends, Splits or Capital parameter.")
    }

    for (i in tickerList) {
      myURL <- paste0("https://query1.finance.yahoo.com/v7/finance/download/",i,"?period1=",fromDate,"&period2=",toDate,"&interval=",interval,"&events=",events,"&includeAdjustedClose=true")
      X_Manual <- read.csv(myURL)
      X_Manual <- xts(X_Manual[, -1], order.by=as.Date(X_Manual$Date))
      myDim <- dim(X_Manual)[2]
      for (x in 1:myDim) {
        colnames(X_Manual)[x]<-paste0(i,".",colnames(X_Manual[,x]))
      }
      assign(i, X_Manual, envir = .GlobalEnv)
    }

  }

}

install.packages("quantmod")
library(quantmod)

startDate = as.Date("20014-06-01")
endDate = as.Date("2014-012-31")

# get stock info by symbols/tickers
getSymbols(c("CRM", "DATA", "MKTO", "CSCO"), from = startDate, to= endDate)

# chartSeries is the main function doing all the work in quantmod.
chartSeries(CRM, subset='last 3 months')
addBBands()

CRM['2010-06-01::2011-01-01']

# Get financial statements from Google Finance:
getFin('CRM', src="google")
viewFin(CRM.f)

head(CRM)

findPeaks(sin(1:10))
library(dplyr)
library(lubridate)

### Interaction with plots
makeAndPlotToPNG <- function(filename, makePlot){
  png(filename)
  powerData <- getSelectedData()
  makePlot(powerData)
  dev.off()
}

addXAxisWithCorrectTicks <- function(){
  axis(
    1,  # In the bottom of the plot 
    at=c(1, 1440, 2880), # At the first, middle and last positions 
    labels=c("Thu", "Fri", "Sat")
  )
}

### Interaction with data
getSelectedData <- function(){
  path <- "household_power_consumption.txt"
  beginning <- "2007-02-01"
  ending <- "2007-02-02"
  
  data <- readDataFromFile(path)
  date_selector <- getSelectorBetweenDates(data, beginning, ending)
  data %>% dplyr::filter(date_selector)
}

getSelectorBetweenDates <- function(data, beginning, ending){
  data$Date <- dmy(data$Date)
  (data$Date >= ymd(beginning) & data$Date <= ymd(ending))
}

readDataFromFile <- function(path){
  fread(
    path, 
    sep=";", 
    header=TRUE, 
    na.strings="?", 
    stringsAsFactors=FALSE
  )
}

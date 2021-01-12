source("utils.R")

makePlot1 <- function(powerData){
  hist(
    powerData$Global_active_power, 
    main="Global Active Power", 
    xlab="Global Active Power (kilowatts)", 
    col="red"
  )
}

plot1ToPNG <- function(){
  makeAndPlotToPNG("plot1.png", makePlot1)
}

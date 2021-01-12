source("utils.R")
source("plot2.R")
source("plot3.R")

makePlot4 <- function(powerData){
  par(mfcol=c(2,2))
  makePlot41(powerData)
  makePlot42(powerData)
  makePlot43(powerData)
  makePlot44(powerData)
}

makePlot41 <- function(powerData){
  makePlot2(powerData)
}

makePlot42 <- function(powerData){
  makePlot3(powerData)
}

makePlot43 <- function(powerData){
  plot(
    powerData$Voltage, 
    xlab="datetime", 
    ylab="Voltage", 
    type="l", 
    xaxt="n"
  )
  
  addXAxisWithCorrectTicks()
}

makePlot44 <- function(powerData){
  plot(
    powerData$Global_reactive_power, 
    xlab="datetime", 
    ylab="Global_reactive_power", 
    type="l", 
    xaxt="n"
  )
  
  addXAxisWithCorrectTicks()
}
 
plot4ToPNG <- function(){
  makeAndPlotToPNG("plot4.png", makePlot4)
}

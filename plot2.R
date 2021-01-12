source("utils.R")

makePlot2 <- function(powerData){
  plot(
    powerData$Global_active_power, 
    xlab="", 
    ylab="Global Active Power (kiliwatts)", 
    type="l", 
    xaxt="n"  # Don't plot x axis now, because we need 
              # to add the correct ticks manually
  )
  
  addXAxisWithCorrectTicks()
}

plot2ToPNG <- function(){
  makeAndPlotToPNG("plot2.png", makePlot2)
}

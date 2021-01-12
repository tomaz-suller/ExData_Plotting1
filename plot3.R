source("utils.R")

makePlot3 <- function(powerData){
  plot(
    powerData$Sub_metering_1, 
    col="black", 
    xlab="", 
    ylab="Energy sub metering", 
    type="l", 
    xaxt="n"  # Don't plot x axis now, because we need 
              # to add the correct ticks manually
  )
  lines(powerData$Sub_metering_2, col="red")
  lines(powerData$Sub_metering_3, col="blue")
  
  legend(
    "topright", 
    c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), 
    col=c("black", "red", "blue"), 
    lty=1,
    cex=0.7,
    xjust=1
  )
  
  addXAxisWithCorrectTicks()
}

plot3ToPNG <- function(){
  makeAndPlotToPNG("plot3.png", makePlot3)
}

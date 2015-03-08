#Import a dataframe with power data from Feb 1st and 2nd 2007.
source("./createDF.R")

#Create a collection of plots and display them in a 2x2 grid
par(mfrow = c(2,2))
with(power, {
  #top left
  plot(Timestamp, Global_active_power, xlab = NA, ylab = "Global Active Power")
  
  #top right
  plot(Timestamp, Voltage, type = "l", xlab = "datetime")
  
  #bottom left: assign names and color, plot 3 lines, then add legend
  pnames = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3")
  pcolors = c("black", "red", "blue")
  plot(Timestamp, Sub_metering_1, type = "l", xlab = NA, ylab = "Energy sub metering")
  lines(Timestamp, Sub_metering_2, col = "red")
  lines(Timestamp, Sub_metering_3, col = "blue")
  legend("topright", legend = pnames, col = pcolors, lty = 1)

  #bottom left
  plot(Timestamp, Global_reactive_power, type = "l", xlab = "datetime")
  })
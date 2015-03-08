#Import a dataframe with power data from Feb 1st and 2nd 2007.
source("./createDF.R")

#Store the names and colors of the plotlines
pnames = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3")
pcolors = c("black", "red", "blue")

#create a plot with three lines and a legend
with(power, {
  plot(Timestamp, Sub_metering_1, type = "l", xlab = NA, ylab = "Energy sub metering")
  lines(Timestamp, Sub_metering_2, col = "red")
  lines(Timestamp, Sub_metering_3, col = "blue")
})
legend("topright", legend = pnames, col = pcolors, lty = 1)

#copy to a PNG file
dev.copy(png, "plot3.png")
dev.off()
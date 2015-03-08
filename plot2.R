#Import a dataframe with power data from Feb 1st and 2nd 2007.
source("./createDF.R")

#create a lineplot then copy it to a PNG file
with(power, plot(Timestamp, Global_active_power, type = "l",xlab = NA,
                 ylab = "Global Active Power (kilowatts)"))
dev.copy(png, "plot2.png")
dev.off()
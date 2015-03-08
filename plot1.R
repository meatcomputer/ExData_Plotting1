# Use the createDF.R script to import a dataframe named power
source("./createDF.R")

#Display a histogram, then copy it into a PNG file.
with(power, hist(Global_active_power, col = "red3", xlab = "Global Active Power (kilowatts)",
                 ylab = "Frequency", main = "Global Active Power"))

dev.copy(png, "plot1.png")
dev.off()
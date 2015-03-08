library(lubridate)
## Download the file from the web, checking to make sure it doesn't exist already.
if(!file.exists("household_power_consumption.zip")){
  download.file("https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip",
                "household_power_consumption.zip")
  unzip("household_power_consumption.zip")
}

#Create a dataframe with only records pertaining to Feb 1 and 2 of 2007. Skiping records 
#   forces us to apply the header as a separate step.
power <- read.table("household_power_consumption.txt", sep = ";", skip = 66637, nrows = 2880, 
                stringsAsFactors = FALSE)
names(power) <- c("Date","Time","Global_active_power","Global_reactive_power","Voltage",
                  "Global_intensity","Sub_metering_1","Sub_metering_2","Sub_metering_3" )
power$Timestamp <- dmy_hms(paste(power$Date, power$Time))
## Libraries
require(dplyr)
library(lubridate)
Sys.setlocale("LC_ALL","English")

## loading data
coursedata = as.data.frame(read.table("household_power_consumption.txt", sep=";", header=TRUE,  na.strings = "?"))

coursedata$Time<-with(coursedata, dmy(Date) + hms(Time))
coursedata$Date = dmy(coursedata$Date)
coursedata$Time <- as.POSIXct(coursedata$Time)
coursedata = filter(coursedata,
                    coursedata$Date == as.Date("2007-02-01") |
                      coursedata$Date == as.Date("2007-02-02"))


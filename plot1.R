
png(filename="plot1.png")

hist(na.omit(as.numeric(coursedata$Global_active_power)),xlab = 'Global Active Power (kilowatts)',col = 'red',main = 'Global Active Power')

dev.off()

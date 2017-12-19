
png(filename = 'plot2.png')

## png default is 480X480 no need to specify

plot(coursedata$Time,
     coursedata$Global_active_power,
     type = 'n',
     ylab = 'Global Active Power(Kilowatts)',
     xlab = " ")
lines(coursedata$Time,coursedata$Global_active_power)
dev.off()


?png

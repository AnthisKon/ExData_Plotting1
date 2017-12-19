png('plot4.png')
par(mfrow=c(2,2))

# Plot 1
plot(coursedata$Time,
     coursedata$Global_active_power,
     type = 'n',
     ylab = 'Global Active Power(Kilowatts)',
     xlab = " ")
lines(coursedata$Time,coursedata$Global_active_power)

# PLot 2
plot(coursedata$Time,
     coursedata$Voltage,
     type = 'n',
     ylab = 'Voltage',
     xlab = "datetime")
lines(coursedata$Time,coursedata$Voltage)

# plot 3
with(coursedata,
     plot(Time,
          Sub_metering_1,
          type = 'n',
          ylab = 'Energy Submetering',
          xlab = ""))
with(coursedata,
     lines(Time,
           Sub_metering_1,
           col = 'black'))
with(coursedata,
     lines(Time,
           Sub_metering_2,
           col = 'red'))
with(coursedata,
     lines(Time,
           Sub_metering_3,
           col = 'blue'))
legend('topright',
       lty = 1,
       legend = c('Sub_metering_1',
                  'Sub_metering_2',
                  'Sub_metering_3'),
       col = c('black',
               'red',
               'blue'),
       bty  = 'n')

# plot 4
plot(coursedata$Time,
     coursedata$Global_reactive_power,
     type = 'n',
     ylab = 'Global_reactive_power',
     xlab = "datetime ")
lines(coursedata$Time,coursedata$Global_reactive_power)
dev.off()

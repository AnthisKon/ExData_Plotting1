
png('plot3.png',)
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
               'blue'))
dev.off()

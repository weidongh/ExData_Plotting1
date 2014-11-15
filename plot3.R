plot3 <- function(file) {    
    data <- read.csv(file, header=TRUE, sep=';', colClasses=c(rep('character', 2), rep('numeric', 7)), nrows=100000, na.string='?')
    data <- data[data$Date == '1/2/2007' | data$Date == '2/2/2007',  ]
    data$DateTime = strptime(paste(data$Date, data$Time), '%d/%m/%Y %H:%M:%S')
    png('plot3.png')
    plot(data$DateTime, data$Sub_metering_1, type='l', ylab='Energy Sub Metering', col='black', xlab='') 
    lines(data$DateTime, data$Sub_metering_2, type='l', col='red')  
    lines(data$DateTime, data$Sub_metering_3, type='l', col='blue')  
    legend('topright', c('Sub_metering_1', 'Sub_metering_2', 'Sub_metering_3'), col=c('black', 'red', 'blue'), lwd=2)
    dev.off()
}

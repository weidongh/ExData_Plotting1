plot2 <- function(file) {    
    data <- read.csv(file, header=TRUE, sep=';', colClasses=c(rep('character', 2), rep('numeric', 7)), nrows=100000, na.string='?')
    data <- data[data$Date == '1/2/2007' | data$Date == '2/2/2007',  ]
    data$DateTime = strptime(paste(data$Date, data$Time), '%d/%m/%Y %H:%M:%S')
    png('plot2.png')
    plot(data$DateTime, data$Global_active_power, type='l', ylab='Global Active Power (kilowatts)', xlab='')   
    dev.off()
}

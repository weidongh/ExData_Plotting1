plot1 <- function(file) {    
    data <- read.csv(file, header=TRUE, sep=';', colClasses=c(rep('character', 2), rep('numeric', 7)), nrows=100000, na.string='?')
    data <- data[data$Date == '1/2/2007' | data$Date == '2/2/2007', ]
    data$Date <- as.Date(data$Date, '%d/%m/%Y')
    png('plot1.png')
    hist(data$Global_active_power, col='red')
    dev.off()   
}
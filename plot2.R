## Read in data
data <- read.table("/Users/bhu235/Documents/RWD/household_power_consumption.txt", header=FALSE,sep=";",skip = 66637, nrows = 2880)
names(data) <- names(read.table("/Users/bhu235/Documents/RWD/household_power_consumption.txt", header=TRUE,sep=";",nrows=1))
data$dayOfWeek <- strptime(paste(data$Date, data$Time), format='%d/%m/%Y %H:%M:%S')

png("plot2.png",width=800,height=800)
plot(data$dayOfWeek,data$Global_active_power, type="l",ylab="Global Active Power (kilowatts)",family="sans",xlab="")
dev.off()
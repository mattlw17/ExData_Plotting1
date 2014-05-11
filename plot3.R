## Read in data
data <- read.table("/Users/bhu235/Documents/RWD/household_power_consumption.txt", header=FALSE,sep=";",skip = 66637, nrows = 2880)
names(data) <- names(read.table("/Users/bhu235/Documents/RWD/household_power_consumption.txt", header=TRUE,sep=";",nrows=1))
data$dayOfWeek <- strptime(paste(data$Date, data$Time), format='%d/%m/%Y %H:%M:%S')

png("plot3.png",width=800,height=800)
plot(data$dayOfWeek,data$Sub_metering_1, type="l",ylab="Energy Sub Metering",family="sans",xlab="")
lines(data$dayOfWeek,data$Sub_metering_2,col="red")
lines(data$dayOfWeek,data$Sub_metering_3,col="blue")
op <- par(family = "serif")
legend("topright",c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),col=c("black","red","blue"),lwd=c(2.5,2.5,2.5))
dev.off()
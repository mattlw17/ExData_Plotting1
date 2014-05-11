## Read in data
data <- read.table("/Users/bhu235/Documents/RWD/household_power_consumption.txt", header=FALSE,sep=";",skip = 66637, nrows = 2880)
names(data) <- names(read.table("/Users/bhu235/Documents/RWD/household_power_consumption.txt", header=TRUE,sep=";",nrows=1))


png("plot1.png",width=800,height=800)
hist(data$Global_active_power, breaks=12,xlab="Global Active Power",col="red",family="sans",main="Global Active Power")
dev.off()
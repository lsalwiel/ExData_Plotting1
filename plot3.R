##Data set is large and assumed to be on local computer
##Read Data and subset for plot 2
hpc <- read.csv("household_power_consumption.txt", sep=";", header=TRUE,stringsAsFactors=FALSE,na.strings="?")
hpc1 <- hpc[(hpc$Date=="1/2/2007" | hpc$Date=="2/2/2007" ), ]
#formatting for time and date
hpc1 <- filter(hpc,Date %in% c("1/2/2007","2/2/2007")) 
hpc1$DateTime <- strptime(paste(hpc1$Date,hpc1$Time),"%d/%m/%Y %H:%M:%S")
## ##plot and create png file
png("plot3.png",width=480,height=480)
plot(hpc1$DateTime, hpc1$Sub_metering_1,type="l",ylab="Energy sub metering",xlab=NA,col="black")
lines(hpc1$DateTime, hpc1$Sub_metering_2, col="red")
lines(hpc1$DateTime, hpc1$Sub_metering_3, col="blue")
legend("topright", lty=1, col = c("black", "red", "blue"), legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))
dev.off()
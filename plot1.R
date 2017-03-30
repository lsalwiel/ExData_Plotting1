##Data set is large and assumed to be on local computer
##Read Data and subset for plot 1
hpc <- read.csv("household_power_consumption.txt", sep=";", header=TRUE,stringsAsFactors=FALSE,na.strings="?")
        hpc1 <- hpc[(hpc$Date=="1/2/2007" | hpc$Date=="2/2/2007" ), ]
        
##Plot1 and create png file  
dev.copy(png, file="plot1.png", height=480, width=480)
        dev.off()
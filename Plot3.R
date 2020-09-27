# Plot 3
setwd("~/Downloads")
png("plot3.png", width=480, height=480)
Data <- read.delim("household_power_consumption 2.txt", h=T, sep=";", stringsAsFactors=FALSE)
Data2 <- Data[Data$Date %in% c("1/2/2007","2/2/2007") ,]
datetime <- strptime(paste(Data2$Date, Data2$Time, sep=" "), "%d/%m/%Y %H:%M:%S") 
Data2$Sub_metering_1 <- as.numeric(Data2$Sub_metering_1)
Data2$Sub_metering_2 <- as.numeric(Data2$Sub_metering_2)
Data2$Sub_metering_3 <- as.numeric(Data2$Sub_metering_3)
plot(datetime, Data2$Sub_metering_1, type ="l", xlab="", ylab="Energy submetering") # Here we make the plot. 
lines(datetime, Data2$Sub_metering_2, type ="l", col="red")
lines(datetime, Data2$Sub_metering_3, type ="l", col="blue")
legend("topright", lty=1, col=c("black","red","blue"),legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"))
dev.off()
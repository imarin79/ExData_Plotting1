# Plot 4
setwd("~/Downloads")
png("plot4.png", width=480, height=480)
Data <- read.delim("household_power_consumption 2.txt", h=T, sep=";", stringsAsFactors=FALSE)
Data2 <- Data[Data$Date %in% c("1/2/2007","2/2/2007") ,]
par(mfcol = c(2,2))
plot(datetime, Data2$Global_active_power, type ="l", xlab="", ylab="Global Active Power (kilowatts)") # Here we make the plot. 
plot(datetime, Data2$Sub_metering_1, type ="l", xlab="", ylab="Energy submetering") # Here we make the plot. 
lines(datetime, Data2$Sub_metering_2, type ="l", col="red")
lines(datetime, Data2$Sub_metering_3, type ="l", col="blue")
datetime <- strptime(paste(Data2$Date, Data2$Time, sep=" "), "%d/%m/%Y %H:%M:%S") 
Data2$Voltage <- as.numeric(Data2$Voltage)
plot(datetime, Data2$Voltage, type ="l", xlab="datetime", ylab="Voltage") # Here we make the plot. 
Data2$Global_reactive_power <- as.numeric(Data2$Global_reactive_power)
plot(datetime, Data2$Global_reactive_power, type ="l", xlab="datetime", ylab="Global_reactive_power") # Here we make the plot. 
dev.off()
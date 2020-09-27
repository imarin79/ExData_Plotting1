# Plot 2.
setwd("~/Downloads")
png("plot2.png", width=480, height=480)
Data <- read.delim("household_power_consumption 2.txt", h=T, sep=";", stringsAsFactors=FALSE) #First, we read the txt file. Here we separate columns with ;
Data2 <- Data[Data$Date %in% c("1/2/2007","2/2/2007") ,] #Here I extract these specific dates from the Data
datetime <- strptime(paste(Data2$Date, Data2$Time, sep=" "), "%d/%m/%Y %H:%M:%S") 
Data2$Global_active_power <- as.numeric(Data2$Global_active_power)
plot(datetime, Data2$Global_active_power, type ="l", xlab="", ylab="Global Active Power (kilowatts)") # Here we make the plot. 
dev.off()
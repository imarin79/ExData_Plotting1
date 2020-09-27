#Plot 1
setwd("~/Downloads")
png("plot1.png", width=480, height=480) # To save the plot, just put it on the top of the code.
Data <- read.delim("household_power_consumption 2.txt", h=T, sep=";") #First, we read the txt file. Here we separate
Data2 <- Data[Data$Date %in% c("1/2/2007","2/2/2007") ,] #Here I extract these specific dates from the Data
Data2$Global_active_power <- as.numeric(Data2$Global_active_power)
hist(Data2$Global_active_power, col= "red",xlab="Global Active Power (kilowatts)",ylab="Frequency", main="Global Active Power")
dev.off() # It is important to dev.off, so you can run and save the next plot. 


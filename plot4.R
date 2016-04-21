## Date: 21 April 2016
## Creator: ##########
## Purpose: Create 4 panel plot of Global Active Power, Voltage, Energy sub_metering and Global Reactive Power vs day
##
## NOTES: 

# Load necessary data
power <- read.table("household_power_consumption.txt", sep=";", na.strings="?", skip=66637 ,nrows=2880)

# Convert date and time to date
date <- strptime(paste(power$V1,power$V2), "%d/%m/%Y %H:%M:%S")

# Set up 4 panel plot
par(mfrow=c(2,2),mar=c(4,4,1,1),cex=0.75)

#1 Initialize line plot of Global Active Power and add labels
plot(date,power$V3,type="l",xlab="",ylab="Global Active Power")

#2 Initialize line plot of Voltage and add labels
plot(date,power$V5,type="l",xlab="datetime",ylab="Voltage")

#3 Initialize line plot of Energy sub metering in 3 colours and add labels
plot(date,power$V7,type="l",xlab="",ylab="Energy sub metering")
lines(date,power$V8,col="red")
lines(date,power$V9,col="blue")
legend("topright",lty=c(1,1,1),col=c("black","red","blue"),legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),y.intersp=0.5,adj=0.15,cex=0.9,bty="n")

#4 Initialize line plot of Global Reactive Power and add labels
plot(date,power$V4,type="l",xlab="datetime",ylab="Global_reactive_power")

# Save to .png file
dev.copy(png,file="plot4.png")
dev.off()
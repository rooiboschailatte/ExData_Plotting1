## Date: 21 April 2016
## Creator: ##########
## Purpose: Create Exploratory line graph of Energy sub_metering vs day
##
## NOTES: 

# Load necessary data
power <- read.table("household_power_consumption.txt", sep=";", na.strings="?", skip=66637 ,nrows=2880)

# Convert date and time to date
date <- strptime(paste(power$V1,power$V2), "%d/%m/%Y %H:%M:%S")

# Initialize line plot of Energy sub metering in 3 colours and add labels
plot(date,power$V7,type="l",xlab="",ylab="Energy sub metering")
lines(date,power$V8,col="red")
lines(date,power$V9,col="blue")
legend("topright",lty=c(1,1,1),col=c("black","red","blue"),legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),y.intersp=0.5,adj=0.15,cex=0.9)

# Save to .png file
dev.copy(png,file="plot3.png")
dev.off()
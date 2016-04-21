## Date: 21 April 2016
## Creator: ##########
## Purpose: Create Exploratory line graph of Global Active Power vs day
##
## NOTES: 

# Load necessary data
power <- read.table("household_power_consumption.txt", sep=";", na.strings="?", skip=66637 ,nrows=2880)

# Convert date and time to date
date <- strptime(paste(power$V1,power$V2), "%d/%m/%Y %H:%M:%S")

# Initialize line plot of Global Active Power and add labels
plot(date,power$V3,type="l",xlab="",ylab="Global Active Power (kilowatts)")

# Save to .png file
dev.copy(png,file="plot2.png")
dev.off()
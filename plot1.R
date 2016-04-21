## Date: 21 April 2016
## Creator: ##########
## Purpose: Create Exploratory histogram of Global Active Power
##
## NOTES: 

# Load necessary data
power <- read.table("household_power_consumption.txt", sep=";", na.strings="?", skip=66637 ,nrows=2880)

# Initialize histogram of Global Active Power in red and add labels
hist(power$V3,col="red",main="Global Active Power",xlab="Global Active Power (kilowatts)")

# Save to .png file
dev.copy(png,file="plot1.png")
dev.off()
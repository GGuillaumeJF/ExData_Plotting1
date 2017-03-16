# Coursera Exploratory Data Analysis course
# Course Project 1
# Reconstruction of plots using the base plotting system
# Plot 1
# Author : Guillaume Goffaux

# The data are assumed in the same directory
# The names of the columns are read
first_rows <- read.table("household_power_consumption.txt",header = TRUE,sep = ";",na.strings ="?",nrows= 1)
Names_dataset <- names(first_rows)

# The specified lines are read : from the dates 2007-02-01 and 2007-02-02
Dataset <- read.table("household_power_consumption.txt",header = FALSE,sep = ";",na.strings ="?",nrows= 2880,skip = 66637)
# The dataset variables are named
names(Dataset) <- Names_dataset

# First plot
hist(Dataset$Global_active_power,col="red",main = "Global Active Power",xlab = "Global Active Power (kilowatts)")
# Copy in a PNG file
dev.copy(png,"plot1.png",width=480,height=480)
dev.off()

# Coursera Exploratory Data Analysis course
# Course Project 1
# Reconstruction of plots using the base plotting system
# Plot 2
# Author : Guillaume Goffaux

# The data are assumed in the same directory
# The names of the columns are read
first_rows <- read.table("household_power_consumption.txt",header = TRUE,sep = ";",na.strings ="?",nrows= 1)
Names_dataset <- names(first_rows)

# The specified lines are read : from the dates 2007-02-01 and 2007-02-02
Dataset <- read.table("household_power_consumption.txt",header = FALSE,sep = ";",na.strings ="?",nrows= 2880,skip = 66637)
# The dataset variables are named
names(Dataset) <- Names_dataset

# The Date and Time variables are converted to Date/Time classes
Datetime_dataset <- strptime(paste(Dataset$Date,Dataset$Time,""),format = "%d/%m/%Y %H:%M:%S")

# Second plot
plot(Datetime_dataset,Dataset$Global_active_power,ylab = "Global Active Power (kilowatts)",lty = 1,type="l",xlab="")
# In order to have English weekdays
Sys.setlocale("LC_TIME","English_Canada.1252")
# Copy in a PNG file
dev.copy(png,"plot2.png",width=480,height=480)
dev.off()


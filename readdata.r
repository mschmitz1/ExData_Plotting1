# Initial script for data preparation
# Data was manually downloaded because reading data from the web is not part
# of this course.
# Library sqldf is used
library(sqldf)
eingabe <- file("household_power_consumption.txt")
# Necessary records are select with the SQL statement, so only needed data is read in
powerConsum <- sqldf('select * from eingabe where Date = "1/2/2007" or Date = "2/2/2007"',
	file.format = list(sep = ";"))
# Package lubridate is used for date / time functions
library(lubridate)
powerConsum$datetime <- parse_date_time(paste(powerConsum$Date, powerConsum$Time), "%d/%m/%y %h:%m:%s")

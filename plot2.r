# xTicks are german locale for "Thu, Fri, Sat", so it would be
# rather time-consuming trying to change them
with(powerConsum, plot(datetime, Global_active_power, type = "l",
	xlab = "", ylab = "Global Active Power (kilowatts)"))
# Write plot as PNG file with given size
dev.copy(png, file="plot2.png", width = 480, height = 480)
# Close device
dev.off()
	

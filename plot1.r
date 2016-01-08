# Plot is generated with this statement; no annotation necessary
hist(powerConsum$Global_active_power, col = "red", 
	main = "Global Active Power",
	xlab = "Global Active Power (kilowatts)")
# Write plot as PNG file with given size
dev.copy(png, file="plot1.png", width = 480, height = 480)
# Close device
dev.off()

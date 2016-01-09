# Generating plot
with(powerConsum, {
	plot(datetime, Sub_metering_1, type = "n",
		xlab = "", ylab = "Energy sub metering")
	lines(datetime, Sub_metering_1, col = "black")
	lines(datetime, Sub_metering_2, col = "red")
	lines(datetime, Sub_metering_3, col = "blue")
	legend("topright", col = c("black", "red", "blue"), lwd = 1,
		legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))
	}
)
# Write plot as PNG file with given size
dev.copy(png, file="plot3.png", width = 480, height = 480)
# Close device
dev.off()

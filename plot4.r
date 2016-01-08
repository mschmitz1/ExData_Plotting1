par(mfrow = c(2, 2))
# xTicks are german locale for "Thu, Fri, Sat", so it would be
# rather time-consuming trying to change them
with(powerConsum, plot(datetime, Global_active_power, type = "l",
	xlab = "", ylab = "Global Active Power (kilowatts)"))
# xTicks are german locale for "Thu, Fri, Sat", so it would be
# rather time-consuming trying to change them
with(powerConsum, plot(datetime, Voltage, type = "l"))
# xTicks are german locale for "Thu, Fri, Sat", so it would be
# rather time-consuming trying to change them
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
# xTicks are german locale for "Thu, Fri, Sat", so it would be
# rather time-consuming trying to change them
with(powerConsum, plot(datetime, Global_reactive_power, type = "l"))
# Write plot as PNG file with given size
dev.copy(png, file="plot4.png", width = 480, height = 480)
# Close device
dev.off()

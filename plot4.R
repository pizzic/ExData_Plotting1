plot4 <- function() {
	library(graphics)
	source("read.file.R")
	data <- read.file()
	
	# Create the plot.
	par(bg = "white", mfcol = c(2,2))

	# Create the first plot.
	plot(data$Date, data$Global_active_power, type = "l", xlab = "", 
		ylab = "Global Active Power")

	# Create the second plot.
	plot(data$Date, data$Sub_metering_1, type = "l", xlab = "", 
		ylab = "Energy sub metering")
	lines(data$Date, data$Sub_metering_2, type = "l", col = "red")
	lines(data$Date, data$Sub_metering_3, type = "l", col = "blue")
	legend("topright", col = c("black", "red", "blue"), 
		legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), 
		lty = "solid", bty = "n")

	# Create the third plot.
	plot(data$Date, data$Voltage, type = "l", xlab = "datetime", ylab = "Voltage")
	
	# Create fourth plot.
	plot(data$Date, data$Global_reactive_power, type = "l", xlab = "datetime", 
		ylab = "Global_reactive_power")
		
	# Copy to PNG file.
	dev.copy(png, file = "plot4.png")
	dev.off()
	
}
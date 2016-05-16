plot3 <- function() {
	library(graphics)
	source("read.file.R")
	data <- read.file()
	
	# Create the plot.
	par(bg = "white", mfcol = c(1,1))
	plot(data$Date, data$Sub_metering_1, type = "l", xlab = "", 
		ylab = "Energy sub metering")
	lines(data$Date, data$Sub_metering_2, type = "l", col = "red")
	lines(data$Date, data$Sub_metering_3, type = "l", col = "blue")
	legend("topright", col = c("black", "red", "blue"), 
		legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), 
		lty = "solid")
	
	# Copy to PNG file.
	dev.copy(png, file = "plot3.png")
	dev.off()

	
}
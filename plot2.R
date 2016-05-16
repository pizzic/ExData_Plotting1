plot2 <- function() {
	library(graphics)
	source("read.file.R")
	data <- read.file()
	
	# Create the plot.
	par(bg = "white", mfcol = c(1,1))
	plot(data$Date, data$Global_active_power, type = "l", xlab = "", 
		ylab = "Global Active Power (kilowatts)")
	
	# Copy to PNG file.
	dev.copy(png, file = "plot2.png")
	dev.off()

}
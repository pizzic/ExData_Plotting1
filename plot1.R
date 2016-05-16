plot1 <- function () {
	library(graphics)
	source("read.file.R")
	data <- read.file()
	
	# Create the plot.
	par(bg = "white", mfcol = c(1,1))
	hist(data$Global_active_power, col="red", main = "Global Active Power", xlab = "Global Active Power (kilowatts)", bg = "white")
	
	# Copy to PNG file.
	dev.copy(png, file = "plot1.png")
	dev.off()
}
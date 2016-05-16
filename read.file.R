read.file <- function() {
	# Read in the file.  Reading only the lines corresponding to 
	# 2007-02-01 and 2007-02-02.
	data <- read.table(file="../household_power_consumption.txt", sep = ";", header = FALSE, na.strings="?", colClasses = c("character", "character", "numeric", "numeric", "numeric", "numeric", "numeric", "numeric", "numeric"), skip=66637, nrows=69518-66638, comment.char="")

	# Convert the dates.
	data$V1 <- strptime(paste(data$V1, data$V2), "%d/%m/%Y %T")

	# Name the columns.
	names(data) <- c("Date", "Time", "Global_active_power", "Global_reactive_power", "Voltage", "Global_intensity", "Sub_metering_1", "Sub_metering_2", "Sub_metering_3")
	
	data
}
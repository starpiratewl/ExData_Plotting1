
## plot2

Sys.setlocale("LC_TIME", "USA")

setwd("D:\\wangliang\\coursera\\Course4\\week1\\data")


alldata <- read.table(file = "household_power_consumption.txt", header = T, sep = ";", skip = 66636, nrow = 2880)


names(alldata) <- c("Date","Time","Global_active_power","Global_reactive_power","Voltage","Global_intensity","Sub_metering_1","Sub_metering_2","Sub_metering_3")



timeseq <- strptime(paste(alldata$Date,alldata$Time), "%d/%m/%Y %H:%M:%S")

globalactivepower <- as.numeric(alldata$Global_active_power)

png(filename = "plot2.png", width = 480, height = 480, units = "px", pointsize = 12, bg = "white", res = 72)

plot(timeseq, globalactivepower, type="l", xlab="", ylab="Global Active Power (kilowatts)")

dev.off()


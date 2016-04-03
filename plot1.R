
## plot11

setwd("D:\\wangliang\\coursera\\Course4\\week1\\data")


alldata <- read.table(file = "household_power_consumption.txt", header = T, sep = ";", skip = 66636, nrow = 2880)


names(alldata) <- c("Date","Time","Global_active_power","Global_reactive_power","Voltage","Global_intensity","Sub_metering_1","Sub_metering_2","Sub_metering_3")

png(filename = "plot1.png", width = 480, height = 480, units = "px", pointsize = 12, bg = "white", res = 72)
hist(alldata$Global_active_power, xlab = "Global Active Power(kilowatts)", main = "Global Active Power", col = "orangered2")

dev.off()



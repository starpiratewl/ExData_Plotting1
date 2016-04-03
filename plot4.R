## plot4


Sys.setlocale("LC_TIME", "USA")

setwd("D:\\wangliang\\coursera\\Course4\\week1\\data")


alldata <- read.table(file = "household_power_consumption.txt", header = T, sep = ";", skip = 66636, nrow = 2880)


names(alldata) <- c("Date","Time","Global_active_power","Global_reactive_power","Voltage","Global_intensity","Sub_metering_1","Sub_metering_2","Sub_metering_3")

timeseq <- strptime(paste(alldata$Date,alldata$Time), "%d/%m/%Y %H:%M:%S")

globalactivepower <- as.numeric(alldata$Global_active_power)

voltage <- as.numeric(alldata$Voltage)

globalreactivepower <- as.numeric(alldata$Global_reactive_power)

submetering1 <- as.numeric(alldata$Sub_metering_1)
submetering2 <- as.numeric(alldata$Sub_metering_2)
submetering3 <- as.numeric(alldata$Sub_metering_3)



par(mfrow = c(2, 2), mar = c(4, 4, 2, 1))

plot(timeseq, globalactivepower, type="l", xlab="", ylab="Global Active Power")

plot(timeseq, voltage, type="l", ylab="Voltage", xlab = "datetime")




plot(timeseq , submetering1, type="l", ylab="Energy Sub metering", xlab="")
lines(timeseq, submetering2, col = "red")
lines(timeseq, submetering3, col = "blue")
legend("topright", col=c("black", "red", "blue"), lty=1, lwd=2, legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))

plot(timeseq, globalreactivepower, type="l", xlab="datetime", ylab="Global_reactive_power")



dev.copy(png, file="plot4.png", height=480, width=480,units = "px", pointsize = 12, bg = "white", res = 72)

dev.off()

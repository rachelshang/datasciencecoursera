# using data frame created in plot1.R

png(file="../Desktop/plot4.png")

par(mar=c(4,4,2,2))
par(mfrow=c(2,2))

# 1st plot
plot (df$dt, df$V3, type="l", xlab="", ylab = "Global Active Power (kilowatts)")

# 2nd plot
plot(df$dt, df$V5, type="l", xlab="datetime", ylab="Voltage")

# 3rd plot
plot(df$dt, df$V7, type="l", xlab="", ylab="Energy sub metering")
lines(df$dt, df$V8, col="red")
lines(df$dt, df$V9, col="blue")
legend("topright", c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lty=c(1,1,1), col=c("black", "red", "blue"), cex=.75, xjust=1)

# 4th plot
plot(df$dt, df$V4, type="l", xlab="datetime", ylab="Global_reactive_power")

dev.off()
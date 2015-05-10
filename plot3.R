# use data frame created in plot1.R
png(file="../Desktop/plot3.png")
plot(df$dt, df$V7, type="l", xlab="", ylab="Energy sub metering")
lines(df$dt, df$V8, col="red")
lines(df$dt, df$V9, col="blue")
legend("topright", c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lty=c(1,1,1), col=c("black", "red", "blue"), cex=.75, xjust=1)
dev.off()
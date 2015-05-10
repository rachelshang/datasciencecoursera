
## use the dataframe df created from plot1.R 
df$dt <- strptime(paste(df$V1, df$V2), format="%d/%m/%Y %H:%M:%S")
png(file="../Desktop/plot2.png")
plot (df$dt, df$V3, type="l", xlab="", ylab = "Global Active Power (kilowatts)")
dev.off()

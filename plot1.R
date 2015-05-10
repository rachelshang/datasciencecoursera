## using grep in linux to identify the 1/2/2007 and 2/2/2007 data 
## are between line 66638 and 69517, total 2880 lines. 
## 
fl <- "./household_power_consumption.txt"
df <- read.table(fl, header=FALSE, skip=66637, nrow=2880, sep=";")
png(file="../Desktop/plot1.png")
hist(df$V3, xlab="Global Active Power (kilowatts)", ylab = "Frequency", main="Global Active Power", col="red")
dev.off()

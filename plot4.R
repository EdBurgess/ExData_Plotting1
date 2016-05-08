#n
# This script assumes that the data file has been downloaded and unzipped in the working directory
#
df=read.csv("household_power_consumption.txt",header=TRUE,sep=";",colClasses=c("character","character","numeric","numeric","numeric","numeric","numeric","numeric","numeric"),na.strings="?")
Date1<-subset(df,Date=="1/2/2007" | Date=="2/2/2007")
Date1$Date<-strptime(paste(Date1$Date,Date1$Time,sep=" "),"%d/%m/%Y %H:%M:%S")
par(mfcol=c(2,2))
plot(Date1$Date,Date1$Global_active_power,type="l",xlab="",ylab="Global Active Power (kilowatts)")
plot(Date1$Date,Date1$Sub_metering_1,type="l",xlab="",ylab="Energy sub metering")
lines(Date1$Date,Date1$Sub_metering_2,type="l",col="red")
lines(Date1$Date,Date1$Sub_metering_3,type="l",col="blue")
legend("topright",c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),lty=c(1,1,1),col=c("black","blue","red"),bty="n")
plot(Date1$Date,Date1$Voltage,type="l",xlab="datetime",ylab="Voltage")
plot(Date1$Date,Date1$Global_reactive_power,type="l",xlab="datetime",ylab="Global_reactive_power")
dev.copy(png,file="plot4.png")
dev.off()

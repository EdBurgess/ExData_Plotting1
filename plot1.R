#
#  This script assumes that the data file has been downloaded and unzipped in the working directory
#
df=read.csv("household_power_consumption.txt",header=TRUE,sep=";",colClasses=c("character","character","numeric","numeric","numeric","numeric","numeric","numeric","numeric"),na.strings="?")
Date1<-subset(df,Date=="1/2/2007" | Date=="2/2/2007")
hist(Date1$Global_active_power,col="red",main="Global Active Power",xlab="Global Active Power (kilowatts)")
dev.copy(png,file="plot1.png")
dev.off()

setwd("C:\\Users\\HP\\Desktop\\Dano")
data<-read.table("household_power_consumption.txt",sep=";",header = TRUE)
head(data)
dim(data)

#########Plot4

png("plot4.png", width = 480, height = 480)

par(mfrow = c(2, 2))

plot.ts(data_vrai$Global_active_power/500,ylab="Global Active Power (kilowatts)",xlab=" ",axes=FALSE)
axis(2)
axis(side=1,at=c(500,1500,2500),labels=c("Thu","Fri","Sat"))

plot.ts(as.numeric(data_vrai$Voltage),ylab="Voltage",xlab=" ",axes=FALSE)
axis(2)
axis(side=1,at=c(500,1500,2500),labels=c("Thu","Fri","Sat"))

ts.plot(ts(as.numeric(data_vrai$Sub_metering_1)),ts(as.numeric(data_vrai$Sub_metering_2)),ts(as.numeric(data_vrai$Sub_metering_3)),ylab="Energy Sub Metering",xlab=" ",col=c("black","red","blue"))

plot.ts(as.numeric(data_vrai$Global_reactive_power),ylab="Global_reactive_power (kilowatts)",xlab=" ",axes=FALSE)
axis(2)
axis(side=1,at=c(500,1500,2500),labels=c("Thu","Fri","Sat"))

dev.off()

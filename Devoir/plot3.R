setwd("C:\\Users\\HP\\Desktop\\Dano")
data<-read.table("household_power_consumption.txt",sep=";",header = TRUE)
head(data)
dim(data)

#########Plot3
png("plot3.png", width = 480, height = 480)

ts.plot(ts(data_vrai$Sub_metering_1),ts(data_vrai$Sub_metering_2),ts(data_vrai$Sub_metering_3),ylab="Energy Sub Metering",xlab=" ",col=c("black","red","green"))

dev.off()

setwd("C:\\Users\\HP\\Desktop\\Dano")
data<-read.table("household_power_consumption.txt",sep=";",header = TRUE)
head(data)
dim(data)

#########Plot2
png("plot2.png", width = 480, height = 480)

plot.ts(data_vrai$Global_active_power/500,ylab="Global Active Power (kilowatts)",xlab=" ",axes=FALSE)
axis(2)
axis(side=1,at=c(500,1500,2500),labels=c("Thu","Fri","Sat"))

dev.off()

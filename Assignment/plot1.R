setwd("C:\\Users\\HP\\Desktop\\Dano")
data<-read.table("household_power_consumption.txt",sep=";",header = TRUE)
head(data)
dim(data)

data_vrai<-subset(data,data$Date=="1/2/2007" | data$Date=="2/2/2007",drop=TRUE)
table(data_vrai$Date)

data_vrai$Global_active_power<-as.numeric(data_vrai$Global_active_power)


#########Plot1
png("plot1.png", width = 480, height = 480)
hist(data_vrai$Global_active_power/500,col="red", main="Global Active Power",xlab = "Global Active Power (kilowatts)")
dev.off()

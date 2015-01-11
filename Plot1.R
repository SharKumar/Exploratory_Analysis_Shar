# Reading data
Week1<-read.csv("C:/Users/Comp/Downloads/household_power_consumption.txt",sep=';')

# Subsetting data
Week1_subset<-subset(Week1,Date=="1/2/2007" | Date=="2/2/2007")
Week1_subset$Date<-as.Date(as.character(Week1_subset$Date), format="%d/%m/%Y")

# Converting Factors to Numeric values
Week1_subset$Global_active_power<- as.numeric(as.character(Week1_subset$Global_active_power))
Week1_subset$Global_reactive_power<- as.numeric(as.character(Week1_subset$Global_reactive_power))
Week1_subset$Global_intensity<- as.numeric(as.character(Week1_subset$Global_intensity))
Week1_subset$Voltage<- as.numeric(as.character(Week1_subset$Voltage))
Week1_subset$Sub_metering_1<- as.numeric(as.character(Week1_subset$Sub_metering_1))
Week1_subset$Sub_metering_2<- as.numeric(as.character(Week1_subset$Sub_metering_2))

## Plot1

png(filename="Plot1.png")
hist(Week1_subset$Global_active_power,col="Red",main="Global Active Power",xlab="Global Active Power (kilowatts)")
dev.off()







                   
                   
              

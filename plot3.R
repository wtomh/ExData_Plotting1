poweruse.data <- read.csv('household_power_consumption.txt',header=TRUE,sep=";", na.strings = "?",colClasses=c("character","character","real","real","real","real","real","real","real"))
poweruse.sub <- subset(poweruse.data , Date == '1/2/2007' |  Date == '2/2/2007' ,) 

date=poweruse.sub$Date
hour=poweruse.sub$Time
datefix=paste(date, hour)

plot(strptime(datefix,"%d/%m/%Y %H:%M:%S"),poweruse.sub$Sub_metering_1,type="l",xlab="",ylab="Energy Submetering (kilowatts)", yaxt="n",ylim=c(0, 37))
lines(strptime(datefix,"%d/%m/%Y %H:%M:%S"),poweruse.sub$Sub_metering_2,type="l",col="red")
lines(strptime(datefix,"%d/%m/%Y %H:%M:%S"),as.integer(poweruse.sub$Sub_metering_3),type="l",col="blue")
legend("topright", lty=c(1,1,1), col = c("black", "red", "blue"), legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))
pts=c(0,10,20,30)
axis(2,at=pts)
dev.copy(png,filename="plot3.png",width=480,height=480,units="px");
dev.off ();

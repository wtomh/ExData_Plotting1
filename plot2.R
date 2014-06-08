poweruse.data <- read.csv('household_power_consumption.txt',header=TRUE,sep=";", na.strings = "?",colClasses=c("character","character","real","real","real","real","real","real","real"))
poweruse.sub <- subset(poweruse.data , Date == '1/2/2007' |  Date == '2/2/2007' ,) 

date=poweruse.sub$Date
hour=poweruse.sub$Time
datefix=paste(date, hour)

plot(strptime(datefix,"%d/%m/%Y %H:%M:%S"),poweruse.sub$Global_active_power,type="l",xlab="",ylab="Global Active Power")
dev.copy(png,filename="plot2.png",width=480,height=480,units="px");
dev.off ();

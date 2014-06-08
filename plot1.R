poweruse.data <- read.csv('household_power_consumption.txt',header=TRUE,sep=";", na.strings = "?",colClasses=c("character","character","real","real","real","real","real","real","real"))
poweruse.sub <- subset(poweruse.data , Date == '1/2/2007' |  Date == '2/2/2007' ,) 

hist(poweruse.sub$Global_active_power,col="red",main="Global Active Power",xlab="Global Active Power (kilowatts)")
dev.copy(png,filename="plot1.png",width=480,height=480,units="px");
dev.off ();

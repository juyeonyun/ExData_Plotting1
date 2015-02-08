# Plot 4
par(mfrow=c(2,2))
## plot1
hist(df_sub$Global_active_power, 
     col = "red",
     xlab = "Global Active Power (kilowatts)",
     main="Global Active Power")

## plot2
plot(df_sub$Timestamp, df_sub$Voltage, type="l", 
     xlab = "datetime",
     ylab = "Voltage")

## plot3
plot(df_sub$Timestamp, df_sub$Sub_metering_1, col="black", type="l", ylab="Energy sub metering", xlab="")
lines(df_sub$Timestamp, df_sub$Sub_metering_2, col="red")
lines(df_sub$Timestamp, df_sub$Sub_metering_3, col="blue")
legend("topright", 
       col=c("black", "red", "blue"), 
       c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"),
       lty=c(1,1), lwd=c(1,1))

## plot4
plot(df_sub$Timestamp, df_sub$Global_reactive_power, type="l", 
     xlab = "datetime",
     ylab = "Global_reactive_power")

dev.copy(png, file="plot4.png", width=480, height=480)
dev.off()

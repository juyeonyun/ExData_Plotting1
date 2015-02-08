# creating the Plot 3

plot(df_sub$Timestamp, df_sub$Sub_metering_1, col="black", type="l", ylab="Energy sub metering", xlab="")
lines(df_sub$Timestamp, df_sub$Sub_metering_2, col="red")
lines(df_sub$Timestamp, df_sub$Sub_metering_3, col="blue")
legend("topright", 
       col = c("black", "red", "blue"), 
       c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"),
       lty = c(1,1), lwd = c(1,1))

# copy plot to png file
dev.copy(png, file="plot3.png", width=480, height=480)

# close connection to png device
dev.off()

# creating the Plot 2

plot(df_sub$Timestamp, df_sub$Global_active_power, type="l", 
     xlab = "",
     ylab = "Global Active Power (kilowatts)")

# copy plot to png file
dev.copy(png, file = "plot2.png", width = 480, height = 480, units = "px")

# close connection to png device
dev.off()

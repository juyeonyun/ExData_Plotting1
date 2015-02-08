# creating the Plot 1

hist(df_sub$Global_active_power, 
     col = "red",
     xlab = "Global Active Power (kilowatts)",
     main = "Global Active Power")

# copy plot to png file
dev.copy(png, file="plot1.png", width=480, height=480)

# close connection to png device
dev.off()

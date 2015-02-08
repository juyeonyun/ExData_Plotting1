# load dataset into R

setwd("/Users/juyeon/Documents/Study/Coursera/Exploratory Data Analysis/Assignment")

filename <- "household_power_consumption.txt"
df <- read.table(filename, header=TRUE, sep=";", na.strings="?")

# subset the data only from 2/1/2007 and 2/2/2007
df_sub <- df[df$Date %in% c("1/2/2007", "2/2/2007"),]

# convert date and time variables to Date/Time class
df_sub$Timestamp <- strptime(paste(df_sub$Date, df_sub$Time), "%d/%m/%Y %H:%M:%S")
df_sub$Date <- as.Date(df_sub$Date, "%d/%m/%Y")

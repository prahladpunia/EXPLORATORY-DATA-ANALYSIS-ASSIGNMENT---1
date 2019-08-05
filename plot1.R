## EXPLORATORY DATA ANALYSIS - ASSIGNMENT -1
##Author - Prahlad
##Date - 05 Aug 2019
##Database -  household_power_consumption.txt
##Plot1.R - Global Active Power 

#Reading the data from "household_power_consumption.txt"
HH_power <- read.table("household_power_consumption.txt",skip=1,sep=";")

## naming all the variables (columns)
names(HH_power) <- c("Date","Time","Global_active_power","Global_reactive_power","Voltage","Global_intensity","Sub_metering_1","Sub_metering_2","Sub_metering_3")

## Subsetting power consumption data for the required two days

subpower <- subset(HH_power,HH_power$Date=="1/2/2007" | HH_power$Date =="2/2/2007")

# Histogram plot function to get the Plot1- Global Active Power
hist(as.numeric(as.character(subpower$Global_active_power)),col="red",main="Global Active Power",xlab="Global Active Power(kilowatts)")

## Adding the main Titlr to Histogram - Plot1
title(main="Global Active Power")

## Adding sub heading for Plot-1
legend("topright", c("Plot-1"))


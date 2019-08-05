## EXPLORATORY DATA ANALYSIS - ASSIGNMENT -1
##Author - Prahlad
##Date - 05 Aug 2019
##Database -  household_power_consumption.txt
##Plot2.R - Daily Average HouseHold Consumption - Global Active Power (kws) 

#Reading the data from "household_power_consumption.txt"

HH_power <- read.table("household_power_consumption.txt",skip=1,sep=";")

## naming all the variables (columns)

names(HH_power) <- c("Date","Time","Global_active_power","Global_reactive_power","Voltage","Global_intensity","Sub_metering_1","Sub_metering_2","Sub_metering_3")

subpower <- subset(HH_power,HH_power$Date=="1/2/2007" | HH_power$Date =="2/2/2007")

## Transform the Date and Time variables from "ch" into objects of type Date and POSIXlt respectively

subpower$Date <- as.Date(subpower$Date, format="%d/%m/%Y")

subpower$Time <- strptime(subpower$Time, format="%H:%M:%S")

## First day 
subpower[1:1440,"Time"] <- format(subpower[1:1440,"Time"],"2007-02-01 %H:%M:%S")

## Second day

subpower[1441:2880,"Time"] <- format(subpower[1441:2880,"Time"],"2007-02-02 %H:%M:%S")

# calling the basic plot function

plot(subpower$Time,as.numeric(as.character(subpower$Global_active_power)),type="l",xlab="",ylab="Global Active Power (kilowatts)") 


## Adding the main Titlr to Histogram - Plot1

title(main="Global Active Power Vs Time")

## Adding sub heading for Plot-1
##legend("bottomleft", c("Plot-2"))


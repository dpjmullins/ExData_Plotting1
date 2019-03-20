# set up environment
setwd("P:\\David\\data_science_course\\C4_PA1_exploratory_plots")

## libraries
library(readr)


# read in data

elec <- 
  read_delim(
    file = "C4_PA1_household_power_consumption.txt",
    delim = ";",
    col_names = T,
    na = c("", "NA", "?"))

## subset for relevant dates
elec <- elec[elec$Date %in% c("1/2/2007", "2/2/2007"),]

## change Date column format
elec$Date <- as.Date( strptime(elec$Date, format = "%d/%m/%Y") )

png("plot1.png")
  hist(
    x = elec$Global_active_power, 
    breaks = 12, 
    col = "red",
    main = "Global Active Power",
    xlab = "Global Active Power (kilowatts)",
    ylab  ="Frequency"
  )
dev.off()

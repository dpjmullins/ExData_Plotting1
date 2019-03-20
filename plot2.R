## Convert time data to a time series specifying that the data is every minute
# 1440 minutes in a day
time_series <- ts(elec$Global_active_power, frequency = 1440, start = 0, end = 2)

png("plot2.png")

plot(
  x = time_series,
  xaxt = 'n', ## suppresses x-axis ticks
  ylab = 'Global Active Power (kilowatts)',
  xlab = ''
)
axis(side = 1, labels = c("Thu", "Fri", "Sat"), at = c(0, 1, 2))

dev.off()

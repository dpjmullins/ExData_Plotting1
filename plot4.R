png("plot4.png")

## change plot area to 2*2
par(mfrow = c(2, 2))

# First plot
time_series <- ts(elec$Global_active_power, frequency = 1440, start = 0, end = 2)
plot(
  x = time_series,
  xaxt = 'n', ## suppresses x-axis ticks
  ylab = 'Global Active Power',
  xlab = ''
)
axis(side = 1, labels = c("Thu", "Fri", "Sat"), at = c(0, 1, 2))

# Second plot
time_series_volt <- ts(elec$Voltage, frequency = 1440, start = 0, end = 2)
plot(
  x = time_series_volt,
  xaxt = 'n', ## suppresses x-axis ticks
  ylab = 'Voltage',
  xlab = 'datetime'
)
axis(side = 1, labels = c("Thu", "Fri", "Sat"), at = c(0, 1, 2))

# Third plot
cols_subset <- grep("Sub_metering", colnames(elec), value = T)
time_series_2 <- ts(elec[cols_subset], frequency = 1440, start = 0, end = 2, names = cols_subset)
line_cols <- c("black", "red", "blue")
ts.plot(
  x = time_series_2,
  ylab = 'Energy sub metering',
  xlab = '',
  gpars = list(
    col = line_cols,
    xaxt = 'n' ## suppresses x-axis ticks
  )
)
axis(side = 1, labels = c("Thu", "Fri", "Sat"), at = c(0, 1, 2))
legend("topright", legend = cols_subset, col = line_cols, lty=1, bty="n")

# Fourth plot
time_series_grp <- ts(elec$Global_reactive_power, frequency = 1440, start = 0, end = 2)
plot(
  x = time_series_grp,
  xaxt = 'n', ## suppresses x-axis ticks
  ylab = 'Global_reactive_power',
  xlab = 'datetime'
)
axis(side = 1, labels = c("Thu", "Fri", "Sat"), at = c(0, 1, 2))

dev.off()
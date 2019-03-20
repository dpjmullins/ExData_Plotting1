## Convert time data to a time series specifying that the data is every minute
# 1440 minutes in a day
cols_subset <- grep("Sub_metering", colnames(elec), value = T)
time_series_2 <- ts(elec[cols_subset], frequency = 1440, start = 0, end = 2, names = cols_subset)

line_cols <- c("black", "red", "blue")
  
png("plot3.png")

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
legend("topright", legend = cols_subset, col = line_cols, lty=1)

dev.off()

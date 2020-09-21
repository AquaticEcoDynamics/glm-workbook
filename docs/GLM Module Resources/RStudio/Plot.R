# Plot something from lake.csv
# Read in the lake file
lake_file <- read.csv("output/lake.csv")
# Get the any variable, and the time column
# names(lake_file)
Lake_Level <- lake_file$Lake.Level
time <- as.POSIXlt(lake_file$time)
# Make a plot 
plot(time, Lake_Level, col = 'white'
     , ylab = "Water level (m)" , xlab = "Time (year)"
     , ylim = c(min(Lake_Level) , max(Lake_Level) )
                )
lines(time,Lake_Level, col="blue")

# Plot something from WQ_x
WQ_5 <- read.csv("output/WQ_5.csv")
time_5 <- as.POSIXlt(WQ_5$time)
plot(time_5, WQ_5$temp, col ="white"
    , ylab= "Temperature ("~degree~"C)", xlab= "Time (year)")
lines(time_5, WQ_5$temp, col='red', lwd=1)

# Plot temperature in 3D (this might take a few minutes)
plot_temp("output/output.nc")

# Plot any other variable in 3D
plot_var("output/output.nc", "the name of the variable")
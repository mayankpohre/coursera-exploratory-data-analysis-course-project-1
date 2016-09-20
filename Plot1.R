library(dplyr)
library(lubridate)

# reading relevant data
data <- read.table("household_power_consumption.txt", sep = ";", skip = 66637, nrows = 2880)

# cleaning Data and selecting data for plot
data <- data %>% select(V3) %>% mutate(V3 = as.numeric(as.character(V3)))

# create histogram
hist(data$V3, col = "red", main = "Global Active Power",xlab = "Global Active Power (killowatts)", ylab = "Frequency")
dev.copy(png, file="plot1.png", width=480, height=480)
dev.off()

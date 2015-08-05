# Exploratory-Data-Analysis
setwd("C:/Users/CarlosJosé/Desktop/Data Mining/Jonhs Hopkins/Ciencia de Datos/Exploratory Data Analysis")

source("loading_data.R")

plot1 <- paste(getwd(), "/graficos/plot1.png", sep = "")
if(!file.exists(plot1)){
	png("graficos/plot1.png", width = 480, height = 480)
	hist(cargardatos$Global_active_power, main = "Global Active Power", xlab = "Global Active Power (kilowatts)", ylab = "Frequency", col = "red")
	dev.off()
} else {
	hist(cargardatos$Global_active_power, main = "Global Active Power", xlab = "Global Active Power (kilowatts)", ylab = "Frequency", col = "red")
}

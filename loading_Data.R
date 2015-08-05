  setwd("C:/Users/CarlosJosé/Desktop/Data Mining/Jonhs Hopkins/Ciencia de Datos/Exploratory Data Analysis")
  datos <- "household_power_consumption.txt"
	cargardatos <- read.table(datos, header=TRUE, sep=";", colClasses=c("character", "character", rep("numeric",7)), na="?")
	cargardatos$Time <- strptime(paste(cargardatos$Date, cargardatos$Time), "%d/%m/%Y %H:%M:%S")
	cargardatos$Date <- as.Date(cargardatos$Date, "%d/%m/%Y")
	fechas <- as.Date(c("2007-02-01", "2007-02-02"), "%Y-%m-%d")
	cargardatos <- subset(cargardatos, Date %in% fechas)
	datosresumidos <- paste(getwd(), "/", "datos", "/", "datosresumidos", ".rds", sep="")
	saveRDS(cargardatos, datosresumidos)

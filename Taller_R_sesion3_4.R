
# IMPORTAR DATOS ----------------------------------------------------------

download.file(
  url="https://archive.ics.uci.edu/ml/machine-learning-databases/wine/wine.data",
               destfile = "vinos.data")
misDatos1 <- read.table("vinos.data", header=T, sep=",")
misDatos1

misDatos2 <- read.csv("Data_Banco.csv", header=T, sep=",")
str(misDatos)
class(misDatos2)
head(misDatos2)
tail(misDatos2)

misDatos2 <- read.table("dataset_con_encabezado.txt", skip=8, header=T, sep=",")
misDatos2

misDatos3 <- read.table(
  "https://archive.ics.uci.edu/ml/machine-learning-databases/wine/wine.data", sep = ",")
misDatos3
head(misDatos3)
colnames(misDatos3) <- c("cultivas", "Alcohol", "Malic acid", "Ash",
                         "Alcalinity of ash", "Magnesium", "Total phenols",
                         "V8","V9","V10","V11","V12", "V13")
misDatos3

download.file(
  url="https://raw.githubusercontent.com/jboscomendoza/r-principiantes-bookdown/master/datos/breast-cancer-wis.data",
  dest="breast-cancer-wis.data")
misDatos4 <- read.table("breast-cancer-wis.data", header=F, sep=",")
misDatos4

library(readxl)
#install.packages("readxl")
misDatos5 <- read_excel("ComidaRapida.xlsx")
mean(misDatos5$McDonalds)
min(misDatos5)

# EXPORTAR DATOS ----------------------------------------------------------
write.table(misDatos4, file = "cancer.txt", sep = ",", dec = ".", col.names = TRUE)
write.csv(misDatos4, file="cancer2.csv")


# FACTOR ------------------------------------------------------------------


sexo <- c("M", "H","H", "H","M", "H","H", "H","M", "H","M", "H","H", "H")
table(sexo)
sexo <- factor(sexo)
sexo
sexo <- factor(sexo, levels = c("H","M"), labels = c("Hombre", "Mujer"))
sexo

# 1: Quito
# 2: Guayaquil
# 3: Ambato
# 4: Cuenca

ciudad <- c(3, 2, 2, 1, 1, 4, 3 ,2)
ciudad <- factor(ciudad)
ciudad
ciudad <- factor(ciudad, levels = c(1, 2, 3, 4), labels = c("Quito", "Guayaquil", "Ambato", "Cuenca"))
ciudad
levels(ciudad)

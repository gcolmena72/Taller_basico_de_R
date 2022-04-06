
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

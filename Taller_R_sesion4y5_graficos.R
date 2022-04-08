
# GRAFICOS ----------------------------------------------------------------

# Usaremos los dataset mtcars e iris
iris
mtcars


# HISTOGRAMA --------------------------------------------------------------

hist(mtcars$mpg)
hist(mtcars$wt)

# Histograma coloreado
hist(mtcars$mpg, breaks = 8, col = "magenta")

# Histograma con titulo y nombre de los ejes:
hist(iris$Sepal.Length, col = "#CB4D22", 
     main = "Histograma de Sepal.Length", 
     xlab = "Lenght",
     ylab = "Frecuencia")

# Histograma agregando la curva de una normal:
x <- mtcars$mpg
h <- hist(x, breaks = 8, col = "orange", xlab="Miles Per Gallon",
          main="Histograma con curva normal")
h$breaks
h$counts
xfit <- seq(min(x),max(x), length=40)
yfit <- dnorm(xfit, mean=mean(x), sd=sd(x))
yfit <- yfit*diff(h$mids[1:2])*length(x)
lines(xfit, yfit, col="blue", lwd=2)

# BARPLOT -----------------------------------------------------------------

# Simple:
counts <- table(mtcars$gear)
barplot(counts, main="Car Distribution", xlab="Number of Gears", col="blue")

# Barplot horizontal
counts <- table(mtcars$gear)
barplot(counts, main="Car Distribution", xlab="Number of Gears", col="blue",
        horiz = TRUE, names.arg = c("3 Gears", "4 Gears", "5 Gears"))

# Barplot sectorizado:
counts <- table(mtcars$vs, mtcars$gear)
barplot(counts, main="Car Distribution vs Gear and VS", xlab="Number of Gears",
        col=c("blue","red"),
        legend=rownames(counts))

iris
color <- c("yellow", "red", "blue", "orange", "purple", "white", "pink")
barplot(table(iris$Sepal.Length), main="Frecuencias de Sepal.Length",
        xlab="Sepal.Length",
        ylab = "Frecuencias",
        col=color)

# MULTIPLOT ---------------------------------------------------------------
op <- par(mfrow=c(2,2))
hist(mtcars$mpg, breaks = 8, col = "orange", xlab="Miles Per Gallon",
          main="Histograma con curva normal")
hist(mtcars$hp, breaks = 8, col = "green", xlab="Miles Per Gallon",
          main="Histograma con curva normal")
hist(mtcars$drat, breaks = 8, col = "purple", xlab="Miles Per Gallon",
     main="Histograma con curva normal")
barplot(table(mtcars$gear), main="Car Distribution", xlab="Number of Gears", col="blue")
par(op)

# GRAFICOS DE LINEA -------------------------------------------------------
x <- 1:10
y1 <- c(3 , 1, 5, 2, 3, 8, 4, 7, 6 , 9)

plot(x, y1, type = "l", col="blue", lwd=5)
plot(x, y1, type = "b", col="green", lwd=3)

y2 <- c(5, 1, 4, 6, 2, 3, 7, 8, 2, 2)
y3 <- c(3, 3, 3, 4, 4, 5, 5, 5, 7, 7)
plot(x, y1, type="b")
lines(x, y2, type="b", col="red")
lines(x, y3, type="b", col="green")
legend("topleft", legend=c("L1", "L2", "L3"),
       col = c("black", "red", "green"),
       lwd=1)
plot(x, y1, type="b", pch=16)

# PIE PLOT ----------------------------------------------------------------

# Usaremos la funcion pie( ) que viene con R base

# Ejemplo Simple Pie Chart
slices <- c(10, 12,4, 16, 8)
lbls <- c("US", "UK", "Australia", "Germany", "France")
pie(slices, labels = lbls, main="Pie Chart of Countries", clockwise = TRUE)
colores <- c("chartreuse3", "darkorange1", "red", "yellow", "blue", "deeppink2")
pie(slices, labels=lbls, col=colores, cex=0.8,
    main = "Pie Chart of Countries", clockwise = TRUE)
legend("bottomright", legend = lbls, fill =  colores, text.font=1, bg='lightblue')

# Pie Chart con porcentajes
pct <- round(slices/sum(slices)*100)
lbls <- paste(lbls, pct) # add percents to labels
lbls <- paste(lbls,"%",sep="") # ad % to labels
pie(slices,labels = lbls, col=rainbow(length(lbls)),
    main="Pie Chart of Countries", clockwise = TRUE)

# 3D Exploded Pie Chart
library(plotrix)
pie3D(slices,labels=lbls,explode=0.1,
      main="Pie Chart of Countries ")

# Pie Chart from data frame with Appended Sample Sizes
mytable <- table(iris$Species)
lbls <- paste(names(mytable), "\n", mytable, sep="")
pie(mytable, labels = lbls, col=rainbow(length(lbls)), 
    main="Pie Chart of Species\n (with sample sizes)")

# TABLAS DE FRECUENCIAS ---------------------------------------------------

x <- c(LETTERS[1:5], LETTERS[2:7], "B", "B", "C")
x
mitabla <- table(x)
mitabla

barplot(mitabla, col="#CC1619") # Barplot de frecuencias absolutas

mitabla_prob <- mitabla / sum(mitabla)
mitabla_prob 
barplot(mitabla_prob , col="#2D8B3F") # Barplot de frecuencias relativas

mitabla_porc <- mitabla_prob * 100
mitabla_porc
barplot(mitabla_porc, col="#525252") # Barplot de frecuencias relativas porcentual

mitabla_porc2 <- paste(round(mitabla_porc, 2), "%")
mitabla_porc2
# PENDIENTE ERROR:
#names(mitabla_porc2) <- names(mitabla_porc)
# mitabla_porc2
# mitabla_porc2 <- as.numeric(mitabla_porc2)
# mitabla_porc2
# barplot(mitabla_porc2, col="#525252")

# Crear tabla de frecuencias acumuladas
mitabla_cumsum <- cumsum(mitabla)
mitabla_cumsum

library(fdth)
iris
attach(iris)
d1 <- fdt(Petal.Length, breaks="Sturges")
d1
plot(d1, type="fh")
plot(d1, type="rfh")
plot(d1, type="rfph")
plot(d1, type="fp", col="red")
plot(d1, type="cfp", col = "blue")

# SCATTERPLOT -------------------------------------------------------------
attach(mtcars)
plot(wt,mpg, main="Diagrama de dispersion de mpg vs wt",
     xlab="Car Weight", ylab = "Millas por Galon", pch=15, col="#976894")
abline(lm(mpg ~ wt), col="red")    # Y ~ x

resultado <- lm(mpg ~ wt)
summary(resultado)

d <- read.csv(file="http://gauss.inf.um.es/datos/tiendas.csv", header = T,
              sep=";")
d
plot(d$peso, d$altura)

plot(d$peso, d$altura,
     xlab="Peso",
     ylab="Altura",
     main = "Peso - Altura",
     xlim = c(0, 10000),
     ylim = c(80, 220),
     col= factor(d$uso),
     pch =d$capacidad.person.)

d$capacidad.person.
a <- factor(d$uso)

legend("topleft",
       legend = levels(factor(d$uso)),
       pch = 15,
       col= factor(levels(factor(d$uso))))

# BOXPLOT -----------------------------------------------------------------


boxplot(Sepal.Length, main="Diagrama de caja y bigotes", border = c("green"))

# Boxplot horizontal:
boxplot(Petal.Length, main="Diagrama de caja y bigotes",
        border = c("purple"), horizontal=TRUE)

# Varios Boxplot:
boxplot(Petal.Length, Sepal.Length,
        main="Diagrama de caja y bigotes",
        names = c("Petal.Length", "Sepal.Length"),
        border = c("blue", "magenta"))

boxplot(Petal.Length, Sepal.Length,
        main="Diagrama de caja y bigotes",
        names = c("Petal.Length", "Sepal.Length"),
        border = c("blue", "magenta"), horizontal=TRUE)

# Multiples Boxplots dividiendo la pantalla
irisVer <- subset(iris, Species=="versicolor")
irisSet <- subset(iris, Species=="setosa")
irisVir <- subset(iris, Species=="virginica")

op <- par(mfrow=c(1, 3), mar=c(6,3,2,1))
boxplot(irisVer[,1:4], main="Versicolor", ylim=c(0,8), las=2, col=rainbow(4))
boxplot(irisSet[,1:4], main="Setosa", ylim=c(0,8), las=2, col=heat.colors(4))
boxplot(irisVir[,1:4], main="Virginicaa", ylim=c(0,8), las=2, col=topo.colors(4))
par(op)

# CORRELOGRAMA ------------------------------------------------------------
data <- iris[,1:4]
install.packages("psych")
library(psych)
corPlot(data, cex=1.2, main="Matriz de correlacion")

# MATRIX SCATTER PLOT -----------------------------------------------------

vinos <- read.table("http://archive.ics.uci.edu/ml/machine-learning-databases/wine/wine.data",
                    sep=",")
vinos
install.packages("car")
library(car)
scatterplotMatrix(vinos[2:6])

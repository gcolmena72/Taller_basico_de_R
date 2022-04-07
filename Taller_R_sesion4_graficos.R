
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



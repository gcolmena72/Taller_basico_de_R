# Universidad Yachay Tech
# Grupo de Probabilidad y Estadistica
# Autor: Gustavo Colmenares
# gcolmenares@yachaytech.edu.ec
# gcolmena@gmail.com

# Taller Basico de R - Sesiones 1 y 2

# Para crear comentarios en R usar el simbolo #
# Usar simbolo # antes de la cadena de caracteres

# SHORTCUTS ------------------------------
# Guardar script Ctrl+S / Cmd+S
# Shortcut para Insertar una seccion: Ctrl+May+R
# Shortcut para limpiar la consola: Ctrl+L
# Shortcut para ejecutar una (1) linea (linea actual): Ctrl+Enter
# Shortcut para convertir una linea en comentarios: Ctrl+May+C
# Shortcut para colocar el operador asignacion: Alt -

# %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
# ASIGNACION --------------------------------------------------------------

2 + 3 + 5
sqrt(12)
(2 + (3 * 5)) / 2

2 + 3 + 5 ; sqrt(12) ; (2 + (3 * 5)) / 2
# comentario
#
#
a <- sqrt(12)

peso <- 87
altura <- 1.73
peso / altura ^2
resultado <- a * peso
resultado

estatura <- 1.73
peso <- 83
estatura
peso

resultado <- peso * estatura
resultado2 <- resultado + 5
# Tipo de datos numeric
a <- 5
a

typeof(a)
class(a)

# Para crear un entero agregan una L al numero
a <- 5L
a
typeof(a)
class(a)

# Tipo logico
c <- TRUE
c
d <- FALSE
d
typeof(d)

# Tipo caracter
pais <- "ecuador"
pais
typeof(pais)

x <- -5
log(x)

resultado <- "Pedro"; edad <- 15; estatura <-  1.60

# COERCION ----------------------------------------------------------------
as.character(5)
as.numeric("cinco")
as.numeric(TRUE)
is.character(5)
is.numeric(5)
5 < 3
"casa">"barco"

ls()
ls(pat = "e")

rm(edad)
ls()
rm (c, d)
ls()
rm(list = ls(pat="a"))
ls()

ls.str()

# GUARDAR WORKSPACE -------------------------------------------------------
save.image(file = "mis_objetos_en_memoria.RData")
save(altura, estatura, file = "mis_dos_objetos_en_memoria.RData")
saveRDS(x, file = "mi_objeto.rds")

rm(x, altura)

load("mis_dos_objetos.RData")
history()

# Valor absoluto
abs(-7) # valor absoluto
ceiling(5.3) # Devuelve el primer entero mayor a 5.3
floor(5.99)
10%%3 # Operador modulo
round(3.1415)
round(3.141516,2)
round(2119.1921)
round(2119.8921)

# VECTORES ----------------------------------------------------------------
3
is.vector(3)
is.vector("tres")
is.vector(c)
length(TRUE)

r2 <- c(1, 2, 3, 5, 8, 13)
r3 <- c("arbol", "casa", "persona")
length(r2)
length(r3)
rm(r3)

r3 <- c(TRUE, TRUE, FALSE, FALSE, TRUE)

mivector <- c(TRUE, TRUE, FALSE)
length(mivector)

mivector <- c(mivector, FALSE)
length(mivector)

mv1 <- c(1, 3, 5)
mv2 <- c(2, 4, 6)
mv3 <- c(mv1, mv2, mv1, mv1, mv2)
mv3

f1 <- c(1, 3, 8, "Ecuador")
f1
class(f1)
class(mv2)

mivector1 <- c(2, 15, 0, 7, 7, 6, 8, 20, 7)
mivector1
mivector1 + 2
r1 <- mivector1 * 2
r1

# SECUENCIAS --------------------------------------------------------------
1:10
10:1
1:1000
-43:-30
67.23:75
-2.48:2
166:170.05
a <- 1:100
class(a)
typeof(a)

# VECTORIZACION -----------------------------------------------------------

mivector1 %% 2
mivector1 > 7
mivector1 == 7

x <- c(2, 4, 5, 6, 7, 9)
y <- c(-1, 0, 100, -20, 80, 2)
length(x)
length(y)

sum <- x + y
sum
res <-  x - y
res
mult <- x * y
mult

# Algunas funciones pueden recibir como argumento un vector
z <- sqrt(x)
z
q <- sin(y)

# Funciones estadisticas
x
mean(x)
median(y)
sum(x)
max(x)
min(x)
range(x)
var(x)
sd(x)

v <- c(2, 2, 2, 5, 6, 4, 4, 4)
unique(v)

# VALORES PERDIDOS (NA) ---------------------------------------------------
altura <- c(165, 178, 184, NA, 175, NA, 153, 175)
altura
mean(altura)
mean(altura, na.rm = TRUE)

# ACCEDER A LOS ELEMENTOS DE UN VECTOR ------------------------------------
altura
altura[2]
altura[-4] # vector altura sin la posicion 4
altura[c(2, 4, 6)]

# otras funciones utiles en vectores
sort(altura)
sort(altura, decreasing = T)
which(altura == 175)
which(altura <= 175)

seq(1:10)
seq(4:40)
seq(5, 10, 0.1)
seq(20, -20, -0.5)
set.seed(34)

seq(0, 1, length.out = 11)
seq(stats::rnorm(20)) # effectively 'along'
seq(1, 9, by = 2)     # matches 'end'
seq(1, 9, by = pi)    # stays below 'end'
seq(1, 6, by = 3)
seq(1.575, 5.125, by = 0.05)
seq(17) # same as 1:17, or even better seq_len(17)

# VECTORES PREDEFINIDOS EN R ----------------------------------------------
letters
letters[1:5]
LETTERS
month.name[1:6]

# MATRICES ----------------------------------------------------------------
x
y
conc <- cbind(x, y)
conc2 <- rbind(x, y)
conc2

matrix(1:8, nrow = 2, ncol = 4 )
matrix(1:8, 2, 4)
matrix(1:8, nrow = 2, ncol = 4, byrow = TRUE)
matrix(1:8, nr = 2, nc = 4, byrow = TRUE)

matrix(1:12, nrow = 3, ncol = 3)
matrix(1:8, nrow = 4, ncol = 2)

p <- matrix(c(1, 2, 3, 11, 12, 13), nrow = 2, byrow = TRUE)
p

rownames(p) <- c("fila 1", "fila 2")
colnames(p) <- c("col 1", "col 2", "col 3")
p

matrix(0, 3, 3)
dim(p)

# las matrices tambien pueden contener NAs
vector_1 <- c(NA, 1, 2)
vector_2 <- c(3, 4, NA)
M1 <- rbind(vector_1, vector_2)
M1

# OPERACIONES CON MATRICES ------------------------------------------------
M2 <- matrix(1:20, 4, 5)
M2

# suma:
M2 + 1
M2 * 2
M2 ^2
M2 / 2

M2
M2_t <- t(M2)
M2_t

# Suma de matrices
A <- matrix(c(10, 8, 5, 12), ncol=2, byrow = T)
A
B <- matrix(c(5, 3, 15, 6), ncol=2, byrow = T)
B
A + B
A - B

# Multiplicacion elemento a elemento
A * B

# Producto matricial
A %*% B

# determinante
det(A)
det(B)

# Inversa
M <- solve(A)
M

A %*% M

# Resolver un sistema de ecuaciones
solve(A, B)

# Descomposicion QR y el Rango de la matriz
qr(A)$rank
qr(B)$rank
qr(A)$qr

# Autovalores y autovectores
eigen(A)
eigen(A)$vectors
eigen(A)$values

svd(A)

#Cholesky
chol(A)
isSymmetric()

# ACCESO A LOS ELEMENTOS DE UNA MATRIZ ------------------------------------
M1
M2
M2[3, 2]

M2[2, ]
M2[ , 4]

M2[ ,-c(1, 3)]

M2[-1, -3]

sqrt(M2)
sin(M2)

data()
USAccDeaths
iris
iris

a <- c("maria", "pedro", "juan", "ana")

matrix(1,nrow=2, ncol=2, byrow = T)

# DATA FRAMES -------------------------------------------------------------
midf <- data.frame("estudiante"=1:6,
                   "seccion"=c("a","b","c","d","a","b"),
                   "calificacion"=c(1.2, 6.4, 4.5, 1.6, 7.4, 4.5),
                   "aprobacion"=as.logical(c(F, T, F, F, T, F)))

# error
# midf <- data.frame("estudiante"=1:4,
#                    "seccion"=c("a","b","c","d","a","b"),
#                    "calificacion"=c(1.2, 6.4, 4.5, 1.6, 7.4, 4.5),
#                    "aprobacion"=as.logical(c(F, T, F, F, T, F)))

dim(midf)
length(midf)
colnames(midf)
rownames(midf)
rownames(midf) <- c("Pedro", "Maria", "Manuel", "Ana", "Miguel", "Belkis")
midf

rownames(midf) <- paste('id_', 1:6, sep = "")
midf

#  PASTE ------------------------------------------------------------------
paste("ABC", 123, sep="-")
paste(c("ABC", "DEF", "GH"), c("x", "y", "z"), sep="-")


midf
summary(midf)

# ACCESO A LOS ELEMENTOS DE UNA DATA FRAME --------------------------------
midf
midf$estudiante
midf$seccion
calif <- midf$calificacion
calif
mean(calif)

names(midf)
midf[,3]
midf[2,]

# Otra forma de extrae una variable
midf[["calificacion"]]
midf[[3]]

# crear un sub data frame
midf2 <- midf[c("seccion", "calificacion")]
midf2

midf[2, 2:4]

subset(midf, subset=calificacion>=6)
subset(midf, subset=seccion=="a")
subset(midf, subset=calificacion>=6 & seccion=="a")
subset(midf, subset=calificacion<6, select=c("estudiante", "aprobacion", "seccion"))

data()
iris
class(iris)
length(iris)
dim(iris)
str(iris)

colnames(iris)
names(iris)


iris$Sepal.Length
attach(iris)

mean(Sepal.Width)
var(Sepal.Width)


# EDA EXPLORATORY DATA ANALYSIS -------------------------------------------
head(iris)
tail(iris)
iris[40:60, ]
max(Sepal.Length)
min(Sepal.Length)

summary(iris)
summary(Petal.Length)

range(Petal.Length)

iris[125:135,]
iris[,2:3]
iris[25:35,2:3]

l.petalos <- iris[,3]
l.petalos

# LISTAS ------------------------------------------------------------------
mi_vector <- 1:10
mi_matriz <- matrix(1:4,nrow = 2)
mi_df <- data.frame("num"=1:3, "let"=c("a", "b", "c"))
mi_df

mi_lista <- list("un_vector"= mi_vector, "una_matriz" = mi_matriz, "un_df" = mi_df)
mi_lista

# Podemos crear una lista que contenga otras listas:
lista_recursiva <- list("lista1" = mi_lista, "lista2" = mi_lista)
lista_recursiva

dim(lista_recursiva)

# Para extraer elementos de una liksta:
mi_lista$una_matriz
mi_lista[[1]]
mi_lista$un_df[2]

mi_lista / 2

# MANEJO DE PAQUETES ------------------------------------------------------

.libPaths()
library()
search()

# Para obtener la descripcion:
packageDescription("stats")

help("stats")
installed.packages()

#install.packages("fdth")
library(fdth)
#update.packages()



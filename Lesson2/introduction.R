#========================================================
# Curso: Data Analytis
# Nombre: Kenyi Hancco
# Fecha: 18/16/2022
# Tema: Introducción a herramientas básicas de R
#========================================================

#========================
# 1. Herramientas básicas
#========================

nombre <- c("Dax", "Angel", "Arturo", "Beatriz", "Daniel")
apellido <- c("Celaya", "Manzilla", "Narvaez", "Figueroa")
edades <- c(28, 18, 21, 25, 24)
estudia <-c("si", "no", "no", "si", "no")

# Cambiar directorio de trabajo
getwd() # Permite saber nuestra ruta actual de trabajo

# Windows
setwd("D:/Data Sciencie/Diplomado DS for Bussines/R/Lesson2") # Recibe como parametro la nueva ruta

# MacOs
setwd("/Users/kenyihq/Development/Data-Sciencie/Diplomado-DS-GEM/R/r-practice/Lesson2") # Recibe como parametro la nueva ruta
getwd() # Verificamos nuevamente nuestra ruta de trabajo

# Tipo de datos

# Numeros
1:10 # Genera una lista de 1 a 10
1:10:2 # Genera una lista de 1 a 10 con saltos de 2
1:10:.5 # Genera una lista de 1 a 10 con saltos de 0.5


# Texto
"Hola" # Genera una cadena de texto
"Hola"[1] # Genera el primer caracter de la cadena
"Hola"[1:2] # Genera una subcadena de la cadena
"Hola"[1:2,1] # Genera una subcadena de la cadena y solo el primer caracter


# Booleanos
TRUE # Genera un valor booleano verdadero
FALSE # Genera un valor booleano falso


# Listas
list(1,2,3,4,5) # Genera una lista con los valores 1,2,3,4,5
list(1,2,3,4,5,6,7,8,9,10) # Genera una lista con los valores 1,2,3,4,5,6,7,8,9,10
list(1,2,3,4,5,6,7,8,9,10, replece = "X") # Genera una lista con los valores 1,2,3,4,5,6,7,8,9,10 y reemplaza los valores por X
list(1,2,3,4,5,6,7,8,9,10, replece = "X", na.rm = TRUE) # Genera una lista con los valores 1,2,3,4,5,6,7,8,9,10 y reemplaza los valores por X y elimina los valores NA


# Matrices
matrix(1:10, nrow = 2) # Genera una matriz de 2x5 con los valores 1,2,3,4,5
matrix(1:10, nrow = 2, ncol = 3) # Genera una matriz de 2x3 con los valores 1,2,3,4,5,6,7,8,9,10
matrix(1:10, nrow = 2, ncol = 3, byrow = TRUE) # Genera una matriz de 2x3 con los valores 1,2,3,4,5,6,7,8,9,10
matrix(1:10, nrow = 2, ncol = 3, byrow = TRUE, rownames = c("A", "B")) # Genera una matriz de 2x3 con los valores 1,2,3,4,5,6,7,8,9,10 y nombra las filas A y B
matrix(1:10, nrow = 2, ncol = 3, byrow = TRUE, rownames = c("A", "B"), colnames = c("X", "Y", "Z")) # Genera una matriz de 2x3 con los valores 1,2,3,4,5,6,7,8,9,10 y nombra las filas A y B y las columnas X,Y,Z
matrix(1:10, nrow = 2, ncol = 3, byrow = TRUE, rownames = c("A", "B"), colnames = c("X", "Y", "Z"), dimnames = list(c("A", "B"), c("X", "Y", "Z"))) # Genera una matriz de 2x3 con los valores 1,2,3,4,5,6,7,8,9,10 y nombra las filas A y B y las columnas X,Y,Z y las dimensiones A y B


# Arreglos
array(1:10) # Genera un arreglo con los valores 1,2,3,4,5
array(1:10, dim = 2) # Genera un arreglo de 2x5 con los valores 1,2,3,4,5
array(1:10, dim = 2, byrow = TRUE) # Genera un arreglo de 2x5 con los valores 1,2,3,4,5 y nombra las filas A y B
array(1:10, dim = 2, byrow = TRUE, rownames = c("A", "B")) # Genera un arreglo de 2x5 con los valores 1,2,3,4,5 y nombra las filas A y B
array(1:10, dim = 2, byrow = TRUE, rownames = c("A", "B"), colnames = c("X", "Y", "Z")) # Genera un arreglo de 2x5 con los valores 1,2,3,4,5 y nombra las filas A y B y las columnas X,Y,Z
array(1:10, dim = 2, byrow = TRUE, rownames = c("A", "B"), colnames = c("X", "Y", "Z"), dimnames = list(c("A", "B"), c("X", "Y", "Z"))) # Genera un arreglo de 2x5 con los valores 1,2,3,4,5 y nombra las filas A y B y las columnas X,Y,Z y las dimensiones A y B


# Data Frames
data.frame(1:10) # Genera un data frame con los valores 1,2,3,4,5
data.frame(1:10, rownames = c("A", "B")) # Genera un data frame con los valores 1,2,3,4,5 y nombra las filas A y B
data.frame(1:10, rownames = c("A", "B"), colnames = c("X", "Y", "Z")) # Genera un data frame con los valores 1,2,3,4,5 y nombra las filas A y B y las columnas X,Y,Z
data.frame(1:10, rownames = c("A", "B"), colnames = c("X", "Y", "Z"), dimnames = list(c("A", "B"), c("X", "Y", "Z"))) # Genera un data frame con los valores 1,2,3,4,5 y nombra las filas A y B y las columnas X,Y,Z y las dimensiones A y B


# Tuplas
c(1,2,3,4,5) # Genera una tupla con los valores 1,2,3,4,5
c(1,2,3,4,5,6,7,8,9,10) # Genera una tupla con los valores 1,2,3,4,5,6,7,8,9,10
c(1,2,3,4,5,6,7,8,9,10, replece = "X") # Genera una tupla con los valores 1,2,3,4,5,6,7,8,9,10 y reemplaza los valores por X
c(1,2,3,4,5,6,7,8,9,10, replece = "X", na.rm = TRUE) # Genera una tupla con los valores 1,2,3,4,5,6,7,8,9,10 y reemplaza los valores por X y elimina los valores NA


# Conjuntos
setdiff(1:10, 1:5) # Genera un conjunto con los valores 1,2,3,4,6,7,8,9,10
setdiff(1:10, 1:5, complement = TRUE) # Genera un conjunto con los valores 5,6,7,8,9,10
setdiff(1:10, 1:5, complement = TRUE, ordered = TRUE) # Genera un conjunto con los valores 5,6,7,8,9,10 y ordena los valores
setdiff(1:10, 1:5, complement = TRUE, ordered = TRUE, by = "X") # Genera un conjunto con los valores 5,6,7,8,9,10 y ordena los valores por X
setdiff(1:10, 1:5, complement = TRUE, ordered = TRUE, by = "X", na.rm = TRUE) # Genera un conjunto con los valores 5,6,7,8,9,10 y ordena los valores por X y elimina los valores NA


# Conjuntos de datos
setdiff(data.frame(1:10), data.frame(1:5)) # Genera un conjunto de datos con los valores 1,2,3,4,6,7,8,9,10
setdiff(data.frame(1:10), data.frame(1:5), complement = TRUE) # Genera un conjunto de datos con los valores 5,6,7,8,9,10
setdiff(data.frame(1:10), data.frame(1:5), complement = TRUE, ordered = TRUE) # Genera un conjunto de datos con los valores 5,6,7,8,9,10 y ordena los valores
setdiff(data.frame(1:10), data.frame(1:5), complement = TRUE, ordered = TRUE, by = "X") # Genera un conjunto de datos con los valores 5,6,7,8,9,10 y ordena los valores por X
setdiff(data.frame(1:10), data.frame(1:5), complement = TRUE, ordered = TRUE, by = "X", na.rm = TRUE) # Genera un conjunto de datos con los valores 5,6,7,8,9,10 y ordena los valores por X y elimina los valores NA


# Conjuntos de tuplas
setdiff(c(1,2,3,4,5), c(1,2,3,4)) # Genera un conjunto de tuplas con los valores 5,6,7,8,9,10
setdiff(c(1,2,3,4,5), c(1,2,3,4), complement = TRUE) # Genera un conjunto de tuplas con los valores 5,6,7,8,9,10
setdiff(c(1,2,3,4,5), c(1,2,3,4), complement = TRUE, ordered = TRUE) # Genera un conjunto de tuplas con los valores 5,6,7,8,9,10 y ordena los valores
setdiff(c(1,2,3,4,5), c(1,2,3,4), complement = TRUE, ordered = TRUE, by = "X") # Genera un conjunto de tuplas con los valores 5,6,7,8,9,10 y ordena los valores por X
setdiff(c(1,2,3,4,5), c(1,2,3,4), complement = TRUE, ordered = TRUE, by = "X", na.rm = TRUE) # Genera un conjunto de tuplas con los valores 5,6,7,8,9,10 y ordena los valores por X y elimina los valores NA


# Conjuntos de data frames
setdiff(data.frame(1:10), data.frame(1:5)) # Genera un conjunto de datos con los valores 1,2,3,4,6,7,8,9,10
setdiff(data.frame(1:10), data.frame(1:5), complement = TRUE) # Genera un conjunto de datos con los valores 5,6,7,8,9,10
setdiff(data.frame(1:10), data.frame(1:5), complement = TRUE, ordered = TRUE) # Genera un conjunto de datos con los valores 5,6,7,8,9,10 y ordena los valores
setdiff(data.frame(1:10), data.frame(1:5), complement = TRUE, ordered = TRUE, by = "X") # Genera un conjunto de datos con los valores 5,6,7,8,9,10 y ordena los valores por X
setdiff(data.frame(1:10), data.frame(1:5), complement = TRUE, ordered = TRUE, by = "X", na.rm = TRUE) # Genera un conjunto de datos con los valores 5,6,7,8,9,10 y ordena los valores por X y elimina los valores NA


# Conjuntos de tuplas de data frames
setdiff(data.frame(c(1,2,3,4,5)), data.frame(c(1,2,3,4))) # Genera un conjunto de datos con los valores 5,6,7,8,9,10
setdiff(data.frame(c(1,2,3,4,5)), data.frame(c(1,2,3,4)), complement = TRUE) # Genera un conjunto de datos con los valores 5,6,7,8,9,10
setdiff(data.frame(c(1,2,3,4,5)), data.frame(c(1,2,3,4)), complement = TRUE, ordered = TRUE) # Genera un conjunto de datos con los valores 5,6,7,8,9,10 y ordena los valores
setdiff(data.frame(c(1,2,3,4,5)), data.frame(c(1,2,3,4)), complement = TRUE, ordered = TRUE, by = "X") # Genera un conjunto de datos con los valores 5,6,7,8,9,10 y ordena los valores por X
setdiff(data.frame(c(1,2,3,4,5)), data.frame(c(1,2,3,4)), complement = TRUE, ordered = TRUE, by = "X", na.rm = TRUE) # Genera un conjunto de datos con los valores 5,6,7,8,9,10 y ordena los valores por X y elimina los valores NA


# Conjuntos de matrices
setdiff(1:10, 1:5) # Genera un conjunto de matrices con los valores 1,2,3,4,6,7,8,9,10
setdiff(1:10, 1:5, complement = TRUE) # Genera un conjunto de matrices con los valores 5,6,7,8,9,10
setdiff(1:10, 1:5, complement = TRUE, ordered = TRUE) # Genera un conjunto de matrices con los valores 5,6,7,8,9,10 y ordena los valores
setdiff(1:10, 1:5, complement = TRUE, ordered = TRUE, by = "X") # Genera un conjunto de matrices con los valores 5,6,7,8,9,10 y ordena los valores por X
setdiff(1:10, 1:5, complement = TRUE, ordered = TRUE, by = "X", na.rm = TRUE) # Genera un conjunto de matrices con los valores 5,6,7,8,9,10 y ordena los valores por X y elimina los valores NA


# Conjuntos de tuplas de matrices
setdiff(c(1,2,3,4,5), c(1,2,3,4)) # Genera un conjunto de matrices con los valores 5,6,7,8,9,10
setdiff(c(1,2,3,4,5), c(1,2,3,4), complement = TRUE) # Genera un conjunto de matrices con los valores 5,6,7,8,9,10
setdiff(c(1,2,3,4,5), c(1,2,3,4), complement = TRUE, ordered = TRUE) # Genera un conjunto de matrices con los valores 5,6,7,8,9,10 y ordena los valores
setdiff(c(1,2,3,4,5), c(1,2,3,4), complement = TRUE, ordered = TRUE, by = "X") # Genera un conjunto de matrices con los valores 5,6,7,8,9,10 y ordena los valores por X
setdiff(c(1,2,3,4,5), c(1,2,3,4), complement = TRUE, ordered = TRUE, by = "X", na.rm = TRUE) # Genera un conjunto de matrices con los valores 5,6,7,8,9,10 y ordena los valores por X y elimina los valores NA


# Asiganación de objetos
año <- 2022
mes <- "Junio"
dia <- "18"
print(dia)

logico <- TRUE
print(logico)

class(año) # Permite saber la clase de un objeto
typeof(año) # Permite saber el tipo de un objeto

# Eliminar objetos
rm(año, logico) # Elimina el objeto año y el objeto logico
año

# Mecanismo de ayuda
help(matrix) # Permite saber la documentación de una función
?matrix # Permite saber la documentación de una función

#===========================
# 2. Instalacion de paquetes
#===========================

sessionInfo() # Permite saber información de la sesión actual

# Permite instalar un paquete
install.packages("dplyr") # Recibe como parametro el nombre del paquete
library("dplyr") # Permite instalar un paquete
library(help="dplyr")


#===========================
# 3. Creación de objetos
#===========================

v1 <- 1:10 # Crea un vector de valores 1,2,3,4,5,6,7,8,9,10
v1 # Muestra el vector de valores 1,2,3,4,5,6,7,8,9,10

v2 <- c(1,2,3,4,5) # Crea un vector de valores 1,2,3,4,5
v2 # Muestra el vector de valores 1,2,3,4,5

v3 <- 100:150
v3

rm(v1, v2, v3) # Elimina los objetos v1, v2 y v3

# Matriz
m1 <- matrix(1:20, nrow=5, ncol=4) # Crea una matriz vacía
m1

m2 <- matrix(1:20, nrow=5, ncol=4, byrow=TRUE) # Crea una matriz vacía y la ordena por filas
m2

m3 <- matrix(sample(c("Bueno", "Malo", "Muy bueno", "Muy malo"), 20, replace=TRUE), nrow=5, ncol=4) # Crea una matriz con valores aleatorios
m3

# Factores
f1 <- factor(1:10) # Crea un factor con valores 1,2,3,4,5,6,7,8,9,10



# leer archivos css

banda_csv <- read.csv("bandas_cri.csv")
banda_csv

banda_csv$DEPARTAMENTO

data.frame(banda_csv$DEPARTAMENTO)


puno <- banda_csv$DEPARTAMENTO[21]
puno


# leer archivos excel
# install.packages("readxl")
library(readxl)
auto <- read_excel("auto.xlsx")
auto

auto$make <- factor(auto$make)
auto$make

rm(auto$make)

auto$price
auto






#===========================
# 4. Operaciones con objetos
#===========================




#========================
# 3. Funciones básicas
#========================


# Función que suma dos números
suma <- function(a, b) {
  return(a + b)
}


# Función que resta dos números
resta <- function(a, b) {
  return(a - b)
}


# Función que multiplica dos números
multiplica <- function(a, b) {
  return(a * b)
}


# Función que divide dos números
divide <- function(a, b) {
  return(a / b)
}
#========================================================
# Curso: Data Analytis
# Nombre: Kenyi Hancco
# Fecha: 19/16/2022
# Tema: Manejo y transformacion de datos
#========================================================

#=========================================
# Ubicarnos en el directorio de trabajo
#=========================================

# Crear un directorio de trabajo y las guardas en una variable

window_dir <- "D:/Data Sciencie/Diplomado DS for Bussines/R/Lesson2"
mac_dir <- "/Users/kenyihq/Development/Data-Sciencie/Diplomado-DS-GEM/R/r-practice/Lesson2"

# Cambiar directorio de trabajo
getwd() # Permite saber nuestra ruta actual de trabajo

# Windows
setwd(window_dir) # Recibe como parametro la nueva ruta
# MacOs
setwd(mac_dir) # Recibe como parametro la nueva ruta

getwd() # Verificamos nuevamente nuestra ruta de trabajo


#====================================
# 1. Manipulacion de datos con dplyr
#====================================

# install.packages("dplyr") # Instalar el paquete dplyr
library(dplyr) # Importar el paquete dplyr

sessionInfo() # Verificar la version de R

library(help=dplyr) # Verificar la version de dplyr

# Cargar el archivo de base de datos

install.packages("ggplot2movies") # Instalar el paquete ggplot2movies
library(ggplot2movies) # Importar el paquete ggplot2movies
library(help=ggplot2movies) # Verificar la version de ggplot2movies

data(movies) # Cargar el archivo de base de datos

mov <- movies # Guardar el archivo de base de datos en una variable
mov$title[1000:1005] # Mostrar los primeros 5 registros del archivo de base de datos

#====================
# 1.1. Comando Select
#====================
help(select) # Verificar la ayuda del comando select

mov2 <- select(mov, Pelicula=title, Anio=year, Duracion=length, Rating=rating, Votos=votes) # Seleccionar los campos que se requieren
mov3 <- select(mov, starts_with("r")) # Seleccionar los registros que comienzan con la letra A
mov4 <- select(mov, ends_with("a")) # Seleccionar los registros que terminan con la letra A
mov5 <- select(mov, contains("a")) # Seleccionar los registros que contienen la letra A

#===================
# 1.2 Comando slice
#===================
help(slice) # Verificar la ayuda del comando slice

mov6 <- slice(mov, 1:10) # Seleccionar los primeros 10 registros
mov7 <- slice_sample(mov, n=10) # Seleccionar los primeros 10 registros de forma aleatoria



# Practice

select(mov7, Pelicula=title, Anio=year, Duracion=length, Rating=rating, Votos=votes)






# Ciclo para recorrer una lista de directorios

v1 <- list(1:20)

for(i in v1){
    print(i)
    }


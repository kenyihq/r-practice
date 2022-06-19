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

# Practica, seleccionar los primeros 10 registros de forma aleatoria y mostrar el titulo de cada uno
select(mov7, Pelicula=title, Anio=year, Duracion=length, Rating=rating, Votos=votes) # Seleccionar los campos que se requieren

#=====================
# 1.3 Comando filter
#=====================
help(filter) # Verificar la ayuda del comando filter
mov8 <- filter(mov, year ==2002) # Seleccionar los registros que tengan el año 2002
mov9 <- filter(mov, year ==2002 & length > 120) # Seleccionar los registros que tengan el año 2002 y la duracion mayor a 120 minutos
mov10 <- filter(mov, year ==2002 & length > 120 & rating > 7) # Seleccionar los registros que tengan el año 2002, la duracion mayor a 120 minutos y el rating mayor a 7
mov11 <- filter(mov, year == 2002 | length > 120) # Seleccionar los registros que tengan el año 2002 o la duracion mayor a 120 minutos
mov12 <- filter(mov, year %in% c(2002, 2003)) # Seleccionar los registros que tengan el año 2002 o 2003
mov13 <- filter(mov, year %in% c(2002, 2003) & length > 120) # Seleccionar los registros que tengan el año 2002 o 2003 y la duracion mayor a 120 minutos
mov14 <- filter(mov, year %in% c(2002, 2003) & length > 120 & rating > 7) # Seleccionar los registros que tengan el año 2002 o 2003, la duracion mayor a 120 minutos y el rating mayor a 7
mov15 <- filter(mov, year %in% c(2002, 2003) | length > 120) # Seleccionar los registros que tengan el año 2002 o 2003 o la duracion mayor a 120 minutos
mov16 <- filter(mov, year %in% c(2002, 2003) | length > 120 & rating > 7) # Seleccionar los registros que tengan el año 2002 o 2003 o la duracion mayor a 120 minutos y el rating mayor a 7


#=====================
# 1.4 Comando mutate
#=====================

mov17 <- mutate(mov, ratio=rating/votes) # Mutar los campos que se requieren
mov18 <- mutate(mov, rating_level=ifelse(rating > 6, "Buena", "Mala")) # Mutar los campos que se requieren
mov19 <- mutate(mov, rating_level=case_when(
    rating <= 3 ~ "Malo", rating <= 6 ~ "Regular", rating > 6 ~ "Buena")) # Mutar los campos que se requieren
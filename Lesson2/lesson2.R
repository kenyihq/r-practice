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


#====================
# 1.1. Comando Select
#====================








# Ciclo para recorrer una lista de directorios

v1 <- list(1:20)

for(i in v1){
    print(i)
    }


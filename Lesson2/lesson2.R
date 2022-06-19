#========================================================
# Curso: Data Analytis
# Nombre: Kenyi Hancco
# Fecha: 19/16/2022
# Tema: Introducción a herramientas básicas de R
#========================================================

#=========================================
# 1. Ubicarnos en el directorio de trabajo
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









# Ciclo para recorrer una lista de directorios

v1 <- list(1:20)

for(i in v1){
    print(i)
    }


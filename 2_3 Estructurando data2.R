
{
  library(dplyr)
  library(tidyr)
  library(readxl)
} # LIBRERÍAS


############################################  2021 ############################################################################################
####################################################################################################################################################



{
  ############################################ ENERO 2021 ####################################################
  #///////////////////////////////////////////////////////////////////////////////////////////////////////////
  
  setwd("C:/Users/Administrator/Documents/GitHub/Sector-Financiero-Peru/data/raw data/Informacion Estadistica de Banca Multiple/Indicadores de las Empresas Bancarias/Indicadores Financieros/2021")  
  a<-read_xlsx("B-2401-en2020.xls",skip = 5) #quitamos 5 espacios (título y 4 1ras filas)
  
  a<-a[complete.cases(a),] # solo elegimos filas completas (sin vacios)
  
  options(scipen=999) # para desactivar la nomenclatura cientifica de numeros
  #View(a)
  #names(a)
  
  #names(a)[10] #seleccionamos el valor 10
  a<-a[,-10] # quitamos la columna 10 #usa dplyr como ejercicio recuerda usar "-" y select
  
  
  names(a)<- c("variables", "BBVA","B. del Comercio", "BCP",
               "Pichincha","BIF","Scotiabank",
               "Citibank","Interbank","Mibanco",
               "GNB","Falabella","Santander","Ripley","Azteca","ICBC",
               "Total Banca Multiple")
  #View(a)
  
  exc = !names(a) %in% "variables" # una forma de elegir todo excepto una columna de un vector
  exc # va a aplicar todo excepto a la primera columna
  a[,exc] # ven? no aparece la columns "variables"
  a[,exc] = sapply(a[,exc],as.character) # lo convierto a character. Es buena practica convertir siempre a character tus datos numericos y luego pasarlos a numeric recien. Por que? Porque a veces por alguna razon te puede salir tipo factor o character y tener problemas y no darte cuenta hasta el proceso de modelacion 
  a[,exc] = sapply(a[,exc],as.numeric) # lo convierto a numerico
  a[,exc] = round(a[,exc],2) #redondeo a 2 cifras
  #View(a)
  
  
  
  a %>% gather() #%>% View() #REUNIR TODAS LAS COLUMNAS EN UNA 1RA UNO DEBAJO DE OTRA
  a %>% gather(Bancos) #%>% View() #nombre de la 1ra columna: "Bancos"
  a %>% gather(Bancos,valores) #%>% View() #nombre de la 2da columna: "valores"
  a %>% gather(Bancos,valores,-variables) #%>% #View() #Agrupar por la observaciones "variables"
  
  b<-a %>% gather(Bancos,valores,-variables)
  b %>% spread(variables,valores) #%>% View() #Distribuir las variables(serán columnas)
  # según los valores
  
  
  i<-b %>% spread(variables,valores)
  i$Periodo= as.Date("2020-01-31")
  
  i<-i[order(names(i))]
  
  # Guardando la data en carpeta "dataprocesada"
  
  setwd("C:/Users/Administrator/Documents/GitHub/Sector-Financiero-Peru/data/dataprocesada/Informacion Estadistica de Banca Multiple/Indicadores de las Empresas Bancarias/Indicadores Financieros")
  saveRDS(i,file="en2020.RDS")
  
  en2020<-i
  
  
} # ENERO 2020


{
  ############################################ FEBRERO 2020 ####################################################
  #///////////////////////////////////////////////////////////////////////////////////////////////////////////
  setwd("C:/Users/Administrator/Documents/GitHub/Sector-Financiero-Peru/data/raw data/Informacion Estadistica de Banca Multiple/Indicadores de las Empresas Bancarias/Indicadores Financieros/2020")
  
  
  a<-read_xlsx("B-2401-fe2020.xls",skip = 5) #quitamos 5 espacios (título y 4 1ras filas)
  
  a<-a[complete.cases(a),] # solo elegimos filas completas (sin vacios)
  
  options(scipen=999) # para desactivar la nomenclatura cientifica de numeros
  #View(a)
  names(a)
  
  names(a)[10] #seleccionamos el valor 10
  a<-a[,-10] # quitamos la columna 10 #usa dplyr como ejercicio recuerda usar "-" y select
  
  
  names(a)<- c("variables", "BBVA","B. del Comercio", "BCP",
               "Pichincha","BIF","Scotiabank",
               "Citibank","Interbank","Mibanco",
               "GNB","Falabella","Santander","Ripley","Azteca","ICBC",
               "Total Banca Multiple")
  #View(a)
  
  exc = !names(a) %in% "variables" # una forma de elegir todo excepto una columna de un vector
  exc # va a aplicar todo excepto a la primera columna
  a[,exc] # ven? no aparece la columns "variables"
  a[,exc] = sapply(a[,exc],as.character) # lo convierto a character. Es buena practica convertir siempre a character tus datos numericos y luego pasarlos a numeric recien. Por que? Porque a veces por alguna razon te puede salir tipo factor o character y tener problemas y no darte cuenta hasta el proceso de modelacion 
  a[,exc] = sapply(a[,exc],as.numeric) # lo convierto a numerico
  a[,exc] = round(a[,exc],2) #redondeo a 2 cifras
  #View(a)
  
  
  
  a %>% gather() #%>% View() #REUNIR TODAS LAS COLUMNAS EN UNA 1RA UNO DEBAJO DE OTRA
  a %>% gather(Bancos) #%>% View() #nombre de la 1ra columna: "Bancos"
  a %>% gather(Bancos,valores) #%>% View() #nombre de la 2da columna: "valores"
  a %>% gather(Bancos,valores,-variables) #%>% #View() #Agrupar por la observaciones "variables"
  
  b<-a %>% gather(Bancos,valores,-variables)
  b %>% spread(variables,valores) #%>% View() #Distribuir las variables(serán columnas)
  # según los valores
  
  
  i<-b %>% spread(variables,valores)
  i$Periodo= as.Date("2020-02-29")
  
  i<-i[order(names(i))]
  
  # Guardando la data en carpeta "dataprocesada"
  
  setwd("C:/Users/Administrator/Documents/GitHub/Sector-Financiero-Peru/data/dataprocesada/Informacion Estadistica de Banca Multiple/Indicadores de las Empresas Bancarias/Indicadores Financieros")
  saveRDS(i,file="fe2020.RDS")
  
  fe2020<-i
  
} # FEBRERO 2020


{
  ############################################ MARZO 2020 ####################################################
  #///////////////////////////////////////////////////////////////////////////////////////////////////////////
  
  setwd("C:/Users/Administrator/Documents/GitHub/Sector-Financiero-Peru/data/raw data/Informacion Estadistica de Banca Multiple/Indicadores de las Empresas Bancarias/Indicadores Financieros/2020")
  
  
  a<-read_xlsx("B-2401-ma2020.xls",skip = 5) #quitamos 5 espacios (título y 4 1ras filas)
  
  a<-a[complete.cases(a),] # solo elegimos filas completas (sin vacios)
  
  options(scipen=999) # para desactivar la nomenclatura cientifica de numeros
  #View(a)
  #names(a)
  
  a<-a[,-10] # quitamos la columna 10 #usa dplyr como ejercicio recuerda usar "-" y select
  
  #names(a)
  names(a)<- c("variables", "BBVA","B. del Comercio", "BCP",
               "Pichincha","BIF","Scotiabank",
               "Citibank","Interbank","Mibanco",
               "GNB","Falabella","Santander","Ripley","Azteca","ICBC",
               "Total Banca Multiple")
  #View(a)
  #names(a)
  
  exc = !names(a) %in% "variables" # una forma de elegir todo excepto una columna de un vector
  exc # va a aplicar todo excepto a la primera columna
  a[,exc] # ven? no aparece la columns "variables"
  a[,exc] = sapply(a[,exc],as.character) # lo convierto a character. Es buena practica convertir siempre a character tus datos numericos y luego pasarlos a numeric recien. Por que? Porque a veces por alguna razon te puede salir tipo factor o character y tener problemas y no darte cuenta hasta el proceso de modelacion 
  a[,exc] = sapply(a[,exc],as.numeric) # lo convierto a numerico
  a[,exc] = round(a[,exc],2) #redondeo a 2 cifras
  #View(a)
  
  
  
  a %>% gather() #%>% View() #REUNIR TODAS LAS COLUMNAS EN UNA 1RA UNO DEBAJO DE OTRA
  a %>% gather(Bancos) #%>% View() #nombre de la 1ra columna: "Bancos"
  a %>% gather(Bancos,valores) #%>% View() #nombre de la 2da columna: "valores"
  a %>% gather(Bancos,valores,-variables) #%>% #View() #Agrupar por la observaciones "variables"
  
  b<-a %>% gather(Bancos,valores,-variables)
  b %>% spread(variables,valores) #%>% View() #Distribuir las variables(serán columnas)
  # según los valores
  
  
  i<-b %>% spread(variables,valores)
  i$Periodo= as.Date("2020-03-31")
  
  
  i<-i[order(names(i))]
  # Guardando la data en carpeta "dataprocesada"
  
  setwd("C:/Users/Administrator/Documents/GitHub/Sector-Financiero-Peru/data/dataprocesada/Informacion Estadistica de Banca Multiple/Indicadores de las Empresas Bancarias/Indicadores Financieros")
  saveRDS(i,file="ma2020.RDS")
  
  ma2020<-i 
  
} # MARZO 2020


{
  ############################################ ABRIL 2020 ####################################################
  #///////////////////////////////////////////////////////////////////////////////////////////////////////////
  
  setwd("C:/Users/Administrator/Documents/GitHub/Sector-Financiero-Peru/data/raw data/Informacion Estadistica de Banca Multiple/Indicadores de las Empresas Bancarias/Indicadores Financieros/2020")
  
  
  
  a<-read_xlsx("B-2401-ab2020.xls",skip = 5) #quitamos 5 espacios (título y 4 1ras filas)
  
  a<-a[complete.cases(a),] # solo elegimos filas completas (sin vacios)
  
  options(scipen=999) # para desactivar la nomenclatura cientifica de numeros
  #View(a)
  #names(a)
  
  names(a)[10] #seleccionamos el valor 10
  a<-a[,-10] # quitamos la columna 10 #usa dplyr como ejercicio recuerda usar "-" y select
  
  #names(a)
  names(a)<- c("variables", "BBVA","B. del Comercio", "BCP",
               "Pichincha","BIF","Scotiabank",
               "Citibank","Interbank","Mibanco",
               "GNB","Falabella","Santander","Ripley","Azteca","ICBC",
               "Total Banca Multiple")
  #View(a)
  #names(a)
  
  exc = !names(a) %in% "variables" # una forma de elegir todo excepto una columna de un vector
  exc # va a aplicar todo excepto a la primera columna
  a[,exc] # ven? no aparece la columns "variables"
  a[,exc] = sapply(a[,exc],as.character) # lo convierto a character. Es buena practica convertir siempre a character tus datos numericos y luego pasarlos a numeric recien. Por que? Porque a veces por alguna razon te puede salir tipo factor o character y tener problemas y no darte cuenta hasta el proceso de modelacion 
  a[,exc] = sapply(a[,exc],as.numeric) # lo convierto a numerico
  a[,exc] = round(a[,exc],2) #redondeo a 2 cifras
  #View(a)
  
  
  
  a %>% gather() #%>% View() #REUNIR TODAS LAS COLUMNAS EN UNA 1RA UNO DEBAJO DE OTRA
  a %>% gather(Bancos) #%>% View() #nombre de la 1ra columna: "Bancos"
  a %>% gather(Bancos,valores) #%>% View() #nombre de la 2da columna: "valores"
  a %>% gather(Bancos,valores,-variables) #%>% #View() #Agrupar por la observaciones "variables"
  
  b<-a %>% gather(Bancos,valores,-variables)
  b %>% spread(variables,valores) #%>% View() #Distribuir las variables(serán columnas)
  # según los valores
  
  
  i<-b %>% spread(variables,valores)
  i$Periodo= as.Date("2020-04-30")
  
  i<-i[order(names(i))]
  
  # Guardando la data en carpeta "dataprocesada"
  
  setwd("C:/Users/Administrator/Documents/GitHub/Sector-Financiero-Peru/data/dataprocesada/Informacion Estadistica de Banca Multiple/Indicadores de las Empresas Bancarias/Indicadores Financieros")
  saveRDS(i,file="ab2020.RDS")
  
  ab2020<-i 
  #View(ab2020)
} # ABRIL 2020


{
  ############################################ MAYO 2020 ####################################################
  #///////////////////////////////////////////////////////////////////////////////////////////////////////////
  
  setwd("C:/Users/Administrator/Documents/GitHub/Sector-Financiero-Peru/data/raw data/Informacion Estadistica de Banca Multiple/Indicadores de las Empresas Bancarias/Indicadores Financieros/2020")
  
  a<-read_xlsx("B-2401-my2020.xls",skip = 5) #quitamos 5 espacios (título y 4 1ras filas)
  
  a<-a[complete.cases(a),] # solo elegimos filas completas (sin vacios)
  
  options(scipen=999) # para desactivar la nomenclatura cientifica de numeros
  #View(a)
  names(a)
  
  names(a)[10] #seleccionamos el valor 10
  a<-a[,-10] # quitamos la columna 10 #usa dplyr como ejercicio recuerda usar "-" y select
  
  #names(a)
  names(a)<- c("variables", "BBVA","B. del Comercio", "BCP",
               "Pichincha","BIF","Scotiabank",
               "Citibank","Interbank","Mibanco",
               "GNB","Falabella","Santander","Ripley","Azteca","ICBC",
               "Total Banca Multiple")
  #View(a)
  #names(a)
  
  exc = !names(a) %in% "variables" # una forma de elegir todo excepto una columna de un vector
  exc # va a aplicar todo excepto a la primera columna
  a[,exc] # ven? no aparece la columns "variables"
  a[,exc] = sapply(a[,exc],as.character) # lo convierto a character. Es buena practica convertir siempre a character tus datos numericos y luego pasarlos a numeric recien. Por que? Porque a veces por alguna razon te puede salir tipo factor o character y tener problemas y no darte cuenta hasta el proceso de modelacion 
  a[,exc] = sapply(a[,exc],as.numeric) # lo convierto a numerico
  a[,exc] = round(a[,exc],2) #redondeo a 2 cifras
  #View(a)
  
  
  
  a %>% gather() #%>% View() #REUNIR TODAS LAS COLUMNAS EN UNA 1RA UNO DEBAJO DE OTRA
  a %>% gather(Bancos) #%>% View() #nombre de la 1ra columna: "Bancos"
  a %>% gather(Bancos,valores) #%>% View() #nombre de la 2da columna: "valores"
  a %>% gather(Bancos,valores,-variables) #%>% #View() #Agrupar por la observaciones "variables"
  
  b<-a %>% gather(Bancos,valores,-variables)
  b %>% spread(variables,valores) #%>% View() #Distribuir las variables(serán columnas)
  # según los valores
  
  
  i<-b %>% spread(variables,valores)
  i$Periodo= as.Date("2020-05-31")
  
  i<-i[order(names(i))]
  
  # Guardando la data en carpeta "dataprocesada"
  
  setwd("C:/Users/Administrator/Documents/GitHub/Sector-Financiero-Peru/data/dataprocesada/Informacion Estadistica de Banca Multiple/Indicadores de las Empresas Bancarias/Indicadores Financieros")
  saveRDS(i,file="my2020.RDS")
  
  my2020<-i
  #View(my2020)
} # MAYO 2020


{
  ############################################ JUNIO 2020 ####################################################
  #///////////////////////////////////////////////////////////////////////////////////////////////////////////
  
  setwd("C:/Users/Administrator/Documents/GitHub/Sector-Financiero-Peru/data/raw data/Informacion Estadistica de Banca Multiple/Indicadores de las Empresas Bancarias/Indicadores Financieros/2020")
  
  
  a<-read_xlsx("B-2401-jn2020.xls",skip = 5) #quitamos 5 espacios (título y 4 1ras filas)
  
  a<-a[complete.cases(a),] # solo elegimos filas completas (sin vacios)
  
  options(scipen=999) # para desactivar la nomenclatura cientifica de numeros
  #View(a)
  names(a)
  
  names(a)[10] #seleccionamos el valor 10
  a<-a[,-10] # quitamos la columna 10 #usa dplyr como ejercicio recuerda usar "-" y select
  
  #names(a)
  names(a)<- c("variables", "BBVA","B. del Comercio", "BCP",
               "Pichincha","BIF","Scotiabank",
               "Citibank","Interbank","Mibanco",
               "GNB","Falabella","Santander","Ripley","Azteca","ICBC",
               "Total Banca Multiple")
  #View(a)
  #names(a)
  
  exc = !names(a) %in% "variables" # una forma de elegir todo excepto una columna de un vector
  exc # va a aplicar todo excepto a la primera columna
  a[,exc] # ven? no aparece la columns "variables"
  a[,exc] = sapply(a[,exc],as.character) # lo convierto a character. Es buena practica convertir siempre a character tus datos numericos y luego pasarlos a numeric recien. Por que? Porque a veces por alguna razon te puede salir tipo factor o character y tener problemas y no darte cuenta hasta el proceso de modelacion 
  a[,exc] = sapply(a[,exc],as.numeric) # lo convierto a numerico
  a[,exc] = round(a[,exc],2) #redondeo a 2 cifras
  #View(a)
  
  
  
  a %>% gather() #%>% View() #REUNIR TODAS LAS COLUMNAS EN UNA 1RA UNO DEBAJO DE OTRA
  a %>% gather(Bancos) #%>% View() #nombre de la 1ra columna: "Bancos"
  a %>% gather(Bancos,valores) #%>% View() #nombre de la 2da columna: "valores"
  a %>% gather(Bancos,valores,-variables) #%>% #View() #Agrupar por la observaciones "variables"
  
  b<-a %>% gather(Bancos,valores,-variables)
  b %>% spread(variables,valores) #%>% View() #Distribuir las variables(serán columnas)
  # según los valores
  
  
  i<-b %>% spread(variables,valores)
  i$Periodo= as.Date("2020-06-30")
  
  
  i<-i[order(names(i))]
  
  # Guardando la data en carpeta "dataprocesada"
  
  setwd("C:/Users/Administrator/Documents/GitHub/Sector-Financiero-Peru/data/dataprocesada/Informacion Estadistica de Banca Multiple/Indicadores de las Empresas Bancarias/Indicadores Financieros")
  saveRDS(i,file="jn2020.RDS")
  
  jn2020<-i 
  #View(jn2020)
} # JUNIO 2020


{
  ############################################ JULIO 2020 ####################################################
  #///////////////////////////////////////////////////////////////////////////////////////////////////////////
  
  setwd("C:/Users/Administrator/Documents/GitHub/Sector-Financiero-Peru/data/raw data/Informacion Estadistica de Banca Multiple/Indicadores de las Empresas Bancarias/Indicadores Financieros/2020")
  
  
  a<-read_xlsx("B-2401-jl2020.xls",skip = 5) #quitamos 5 espacios (título y 4 1ras filas)
  
  a<-a[complete.cases(a),] # solo elegimos filas completas (sin vacios)
  
  options(scipen=999) # para desactivar la nomenclatura cientifica de numeros
  #View(a)
  #names(a)
  
  names(a)[10] #seleccionamos el valor 10
  a<-a[,-10] # quitamos la columna 10 #usa dplyr como ejercicio recuerda usar "-" y select
  
  #names(a)
  names(a)<- c("variables", "BBVA","B. del Comercio", "BCP",
               "Pichincha","BIF","Scotiabank",
               "Citibank","Interbank","Mibanco",
               "GNB","Falabella","Santander","Ripley","Azteca","ICBC",
               "China","Total Banca Multiple")
  #View(a)
  #names(a)
  
  exc = !names(a) %in% "variables" # una forma de elegir todo excepto una columna de un vector
  exc # va a aplicar todo excepto a la primera columna
  a[,exc] # ven? no aparece la columns "variables"
  a[,exc] = sapply(a[,exc],as.character) # lo convierto a character. Es buena practica convertir siempre a character tus datos numericos y luego pasarlos a numeric recien. Por que? Porque a veces por alguna razon te puede salir tipo factor o character y tener problemas y no darte cuenta hasta el proceso de modelacion 
  a[,exc] = sapply(a[,exc],as.numeric) # lo convierto a numerico
  a[,exc] = round(a[,exc],2) #redondeo a 2 cifras
  #View(a)
  
  
  
  a %>% gather() #%>% View() #REUNIR TODAS LAS COLUMNAS EN UNA 1RA UNO DEBAJO DE OTRA
  a %>% gather(Bancos) #%>% View() #nombre de la 1ra columna: "Bancos"
  a %>% gather(Bancos,valores) #%>% View() #nombre de la 2da columna: "valores"
  a %>% gather(Bancos,valores,-variables) #%>% #View() #Agrupar por la observaciones "variables"
  
  b<-a %>% gather(Bancos,valores,-variables)
  b %>% spread(variables,valores) #%>% View() #Distribuir las variables(serán columnas)
  # según los valores
  
  
  i<-b %>% spread(variables,valores)
  i$Periodo= as.Date("2020-07-31")
  
  
  i<-i[order(names(i))]
  # Guardando la data en carpeta "dataprocesada"
  
  setwd("C:/Users/Administrator/Documents/GitHub/Sector-Financiero-Peru/data/dataprocesada/Informacion Estadistica de Banca Multiple/Indicadores de las Empresas Bancarias/Indicadores Financieros")
  saveRDS(i,file="jl2020.RDS")
  
  jl2020<-i
  #View(jl2020)
} # JULIO 2020


{
  ############################################ AGOSTO 2020 ####################################################
  #///////////////////////////////////////////////////////////////////////////////////////////////////////////
  
  setwd("C:/Users/Administrator/Documents/GitHub/Sector-Financiero-Peru/data/raw data/Informacion Estadistica de Banca Multiple/Indicadores de las Empresas Bancarias/Indicadores Financieros/2020")
  
  
  
  a<-read_xlsx("B-2401-ag2020.xls",skip = 5) #quitamos 5 espacios (título y 4 1ras filas)
  
  a<-a[complete.cases(a),] # solo elegimos filas completas (sin vacios)
  
  options(scipen=999) # para desactivar la nomenclatura cientifica de numeros
  #View(a)
  names(a)
  
  names(a)[10] #seleccionamos el valor 10
  a<-a[,-10] # quitamos la columna 10 #usa dplyr como ejercicio recuerda usar "-" y select
  
  #names(a)
  names(a)<- c("variables", "BBVA","B. del Comercio", "BCP",
               "Pichincha","BIF","Scotiabank",
               "Citibank","Interbank","Mibanco",
               "GNB","Falabella","Santander","Ripley","Azteca","ICBC",
               "China","Total Banca Multiple")
  #View(a)
  #names(a)
  
  exc = !names(a) %in% "variables" # una forma de elegir todo excepto una columna de un vector
  exc # va a aplicar todo excepto a la primera columna
  a[,exc] # ven? no aparece la columns "variables"
  a[,exc] = sapply(a[,exc],as.character) # lo convierto a character. Es buena practica convertir siempre a character tus datos numericos y luego pasarlos a numeric recien. Por que? Porque a veces por alguna razon te puede salir tipo factor o character y tener problemas y no darte cuenta hasta el proceso de modelacion 
  a[,exc] = sapply(a[,exc],as.numeric) # lo convierto a numerico
  a[,exc] = round(a[,exc],2) #redondeo a 2 cifras
  #View(a)
  
  
  
  a %>% gather() #%>% View() #REUNIR TODAS LAS COLUMNAS EN UNA 1RA UNO DEBAJO DE OTRA
  a %>% gather(Bancos) #%>% View() #nombre de la 1ra columna: "Bancos"
  a %>% gather(Bancos,valores) #%>% View() #nombre de la 2da columna: "valores"
  a %>% gather(Bancos,valores,-variables) #%>% #View() #Agrupar por la observaciones "variables"
  
  b<-a %>% gather(Bancos,valores,-variables)
  b %>% spread(variables,valores) #%>% View() #Distribuir las variables(serán columnas)
  # según los valores
  
  
  i<-b %>% spread(variables,valores)
  i$Periodo= as.Date("2020-08-31")
  
  
  i<-i[order(names(i))]
  # Guardando la data en carpeta "dataprocesada"
  
  setwd("C:/Users/Administrator/Documents/GitHub/Sector-Financiero-Peru/data/dataprocesada/Informacion Estadistica de Banca Multiple/Indicadores de las Empresas Bancarias/Indicadores Financieros")
  saveRDS(i,file="ag2020.RDS")
  
  ag2020<-i 
  #View(ag2020)
  
} # AGOSTO 2020


{
  ############################################ SEPTIEMBRE 2020 ####################################################
  #///////////////////////////////////////////////////////////////////////////////////////////////////////////
  
  setwd("C:/Users/Administrator/Documents/GitHub/Sector-Financiero-Peru/data/raw data/Informacion Estadistica de Banca Multiple/Indicadores de las Empresas Bancarias/Indicadores Financieros/2020")
  
  
  
  a<-read_xlsx("B-2401-se2020.xls",skip = 5) #quitamos 5 espacios (título y 4 1ras filas)
  
  a<-a[complete.cases(a),] # solo elegimos filas completas (sin vacios)
  
  options(scipen=999) # para desactivar la nomenclatura cientifica de numeros
  #View(a)
  names(a)
  
  names(a)[10] #seleccionamos el valor 10
  a<-a[,-10] # quitamos la columna 10 #usa dplyr como ejercicio recuerda usar "-" y select
  
  #names(a)
  names(a)<- c("variables", "BBVA","B. del Comercio", "BCP",
               "Pichincha","BIF","Scotiabank",
               "Citibank","Interbank","Mibanco",
               "GNB","Falabella","Santander","Ripley","Azteca","ICBC",
               "China","Total Banca Multiple")
  #View(a)
  #names(a)
  
  exc = !names(a) %in% "variables" # una forma de elegir todo excepto una columna de un vector
  exc # va a aplicar todo excepto a la primera columna
  a[,exc] # ven? no aparece la columns "variables"
  a[,exc] = sapply(a[,exc],as.character) # lo convierto a character. Es buena practica convertir siempre a character tus datos numericos y luego pasarlos a numeric recien. Por que? Porque a veces por alguna razon te puede salir tipo factor o character y tener problemas y no darte cuenta hasta el proceso de modelacion 
  a[,exc] = sapply(a[,exc],as.numeric) # lo convierto a numerico
  a[,exc] = round(a[,exc],2) #redondeo a 2 cifras
  #View(a)
  
  
  
  a %>% gather() #%>% View() #REUNIR TODAS LAS COLUMNAS EN UNA 1RA UNO DEBAJO DE OTRA
  a %>% gather(Bancos) #%>% View() #nombre de la 1ra columna: "Bancos"
  a %>% gather(Bancos,valores) #%>% View() #nombre de la 2da columna: "valores"
  a %>% gather(Bancos,valores,-variables) #%>% #View() #Agrupar por la observaciones "variables"
  
  b<-a %>% gather(Bancos,valores,-variables)
  b %>% spread(variables,valores) #%>% View() #Distribuir las variables(serán columnas)
  # según los valores
  
  
  i<-b %>% spread(variables,valores)
  i$Periodo= as.Date("2020-09-30")
  
  
  i<-i[order(names(i))]
  # Guardando la data en carpeta "dataprocesada"
  
  setwd("C:/Users/Administrator/Documents/GitHub/Sector-Financiero-Peru/data/dataprocesada/Informacion Estadistica de Banca Multiple/Indicadores de las Empresas Bancarias/Indicadores Financieros")
  saveRDS(i,file="se2020.RDS")
  
  se2020<-i 
  #View(se2020)
  
} # SEPTIEMBRE 2020


{
  ############################################ OCTUBRE 2020 ####################################################
  #///////////////////////////////////////////////////////////////////////////////////////////////////////////
  
  setwd("C:/Users/Administrator/Documents/GitHub/Sector-Financiero-Peru/data/raw data/Informacion Estadistica de Banca Multiple/Indicadores de las Empresas Bancarias/Indicadores Financieros/2020")
  
  
  
  a<-read_xlsx("B-2401-oc2020.xls",skip = 5) #quitamos 5 espacios (título y 4 1ras filas)
  
  a<-a[complete.cases(a),] # solo elegimos filas completas (sin vacios)
  
  options(scipen=999) # para desactivar la nomenclatura cientifica de numeros
  #View(a)
  #names(a)
  
  names(a)[10] #seleccionamos el valor 10
  a<-a[,-10] # quitamos la columna 10 #usa dplyr como ejercicio recuerda usar "-" y select
  
  names(a)
  names(a)<- c("variables", "BBVA","B. del Comercio", "BCP",
               "Pichincha","BIF","Scotiabank",
               "Citibank","Interbank","Mibanco",
               "GNB","Falabella","Santander","Ripley","Azteca","ICBC",
               "China","Total Banca Multiple")
  #View(a)
  #names(a)
  
  exc = !names(a) %in% "variables" # una forma de elegir todo excepto una columna de un vector
  exc # va a aplicar todo excepto a la primera columna
  a[,exc] # ven? no aparece la columns "variables"
  a[,exc] = sapply(a[,exc],as.character) # lo convierto a character. Es buena practica convertir siempre a character tus datos numericos y luego pasarlos a numeric recien. Por que? Porque a veces por alguna razon te puede salir tipo factor o character y tener problemas y no darte cuenta hasta el proceso de modelacion 
  a[,exc] = sapply(a[,exc],as.numeric) # lo convierto a numerico
  a[,exc] = round(a[,exc],2) #redondeo a 2 cifras
  #View(a)
  
  
  
  a %>% gather() #%>% View() #REUNIR TODAS LAS COLUMNAS EN UNA 1RA UNO DEBAJO DE OTRA
  a %>% gather(Bancos) #%>% View() #nombre de la 1ra columna: "Bancos"
  a %>% gather(Bancos,valores) #%>% View() #nombre de la 2da columna: "valores"
  a %>% gather(Bancos,valores,-variables) #%>% #View() #Agrupar por la observaciones "variables"
  
  b<-a %>% gather(Bancos,valores,-variables)
  b %>% spread(variables,valores) #%>% View() #Distribuir las variables(serán columnas)
  # según los valores
  
  
  i<-b %>% spread(variables,valores)
  i$Periodo= as.Date("2020-10-31")
  
  
  i<-i[order(names(i))]
  # Guardando la data en carpeta "dataprocesada"
  
  setwd("C:/Users/Administrator/Documents/GitHub/Sector-Financiero-Peru/data/dataprocesada/Informacion Estadistica de Banca Multiple/Indicadores de las Empresas Bancarias/Indicadores Financieros")
  saveRDS(i,file="oc2020.RDS")
  
  oc2020<-i 
  #View(oc2020)
  
} # OCTUBRE 2020


{
  ############################################ NOVIEMBRE 2020 ####################################################
  #///////////////////////////////////////////////////////////////////////////////////////////////////////////
  
  setwd("C:/Users/Administrator/Documents/GitHub/Sector-Financiero-Peru/data/raw data/Informacion Estadistica de Banca Multiple/Indicadores de las Empresas Bancarias/Indicadores Financieros/2020")
  
  
  
  a<-read_xlsx("B-2401-no2020.xls",skip = 5) #quitamos 5 espacios (título y 4 1ras filas)
  
  a<-a[complete.cases(a),] # solo elegimos filas completas (sin vacios)
  
  options(scipen=999) # para desactivar la nomenclatura cientifica de numeros
  #View(a)
  names(a)
  
  names(a)[10] #seleccionamos el valor 10
  a<-a[,-10] # quitamos la columna 10 #usa dplyr como ejercicio recuerda usar "-" y select
  
  #names(a)
  names(a)<- c("variables", "BBVA","B. del Comercio", "BCP",
               "Pichincha","BIF","Scotiabank",
               "Citibank","Interbank","Mibanco",
               "GNB","Falabella","Santander","Ripley","Azteca","ICBC",
               "China","Total Banca Multiple")
  #View(a)
  #names(a)
  
  exc = !names(a) %in% "variables" # una forma de elegir todo excepto una columna de un vector
  exc # va a aplicar todo excepto a la primera columna
  a[,exc] # ven? no aparece la columns "variables"
  a[,exc] = sapply(a[,exc],as.character) # lo convierto a character. Es buena practica convertir siempre a character tus datos numericos y luego pasarlos a numeric recien. Por que? Porque a veces por alguna razon te puede salir tipo factor o character y tener problemas y no darte cuenta hasta el proceso de modelacion 
  a[,exc] = sapply(a[,exc],as.numeric) # lo convierto a numerico
  a[,exc] = round(a[,exc],2) #redondeo a 2 cifras
  #View(a)
  
  
  
  a %>% gather() #%>% View() #REUNIR TODAS LAS COLUMNAS EN UNA 1RA UNO DEBAJO DE OTRA
  a %>% gather(Bancos) #%>% View() #nombre de la 1ra columna: "Bancos"
  a %>% gather(Bancos,valores) #%>% View() #nombre de la 2da columna: "valores"
  a %>% gather(Bancos,valores,-variables) #%>% #View() #Agrupar por la observaciones "variables"
  
  b<-a %>% gather(Bancos,valores,-variables)
  b %>% spread(variables,valores) #%>% View() #Distribuir las variables(serán columnas)
  # según los valores
  
  
  i<-b %>% spread(variables,valores)
  i$Periodo= as.Date("2020-11-30")
  
  
  i<-i[order(names(i))]
  # Guardando la data en carpeta "dataprocesada"
  
  setwd("C:/Users/Administrator/Documents/GitHub/Sector-Financiero-Peru/data/dataprocesada/Informacion Estadistica de Banca Multiple/Indicadores de las Empresas Bancarias/Indicadores Financieros")
  saveRDS(i,file="no2020.RDS")
  
  no2020<-i 
  #View(no2020)
  
} # NOVIEMBRE 2020


{
  ############################################ DICIEMBRE 2020 ####################################################
  #///////////////////////////////////////////////////////////////////////////////////////////////////////////
  
  setwd("C:/Users/Administrator/Documents/GitHub/Sector-Financiero-Peru/data/raw data/Informacion Estadistica de Banca Multiple/Indicadores de las Empresas Bancarias/Indicadores Financieros/2020")
  
  
  
  a<-read_xlsx("B-2401-di2020.xls",skip = 5) #quitamos 5 espacios (título y 4 1ras filas)
  
  a<-a[complete.cases(a),] # solo elegimos filas completas (sin vacios)
  
  options(scipen=999) # para desactivar la nomenclatura cientifica de numeros
  #View(a)
  names(a)
  
  names(a)[10] #seleccionamos el valor 10
  a<-a[,-10] # quitamos la columna 10 #usa dplyr como ejercicio recuerda usar "-" y select
  
  #names(a)
  names(a)<- c("variables", "BBVA","B. del Comercio", "BCP",
               "Pichincha","BIF","Scotiabank",
               "Citibank","Interbank","Mibanco",
               "GNB","Falabella","Santander","Ripley","Azteca","ICBC",
               "China","Total Banca Multiple")
  #View(a)
  #names(a)
  
  exc = !names(a) %in% "variables" # una forma de elegir todo excepto una columna de un vector
  exc # va a aplicar todo excepto a la primera columna
  a[,exc] # ven? no aparece la columns "variables"
  a[,exc] = sapply(a[,exc],as.character) # lo convierto a character. Es buena practica convertir siempre a character tus datos numericos y luego pasarlos a numeric recien. Por que? Porque a veces por alguna razon te puede salir tipo factor o character y tener problemas y no darte cuenta hasta el proceso de modelacion 
  a[,exc] = sapply(a[,exc],as.numeric) # lo convierto a numerico
  a[,exc] = round(a[,exc],2) #redondeo a 2 cifras
  #View(a)
  
  
  
  a %>% gather() #%>% View() #REUNIR TODAS LAS COLUMNAS EN UNA 1RA UNO DEBAJO DE OTRA
  a %>% gather(Bancos) #%>% View() #nombre de la 1ra columna: "Bancos"
  a %>% gather(Bancos,valores) #%>% View() #nombre de la 2da columna: "valores"
  a %>% gather(Bancos,valores,-variables) #%>% #View() #Agrupar por la observaciones "variables"
  
  b<-a %>% gather(Bancos,valores,-variables)
  b %>% spread(variables,valores) #%>% View() #Distribuir las variables(serán columnas)
  # según los valores
  
  
  i<-b %>% spread(variables,valores)
  i$Periodo= as.Date("2020-12-31")
  
  
  i<-i[order(names(i))]
  # Guardando la data en carpeta "dataprocesada"
  
  setwd("C:/Users/Administrator/Documents/GitHub/Sector-Financiero-Peru/data/dataprocesada/Informacion Estadistica de Banca Multiple/Indicadores de las Empresas Bancarias/Indicadores Financieros")
  saveRDS(i,file="di2020.RDS")
  
  di2020<-i 
  #View(di2020)
  
} # DICIEMBRE 2020







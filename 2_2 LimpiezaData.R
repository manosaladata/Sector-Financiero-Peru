

{
library(dplyr)
library(tidyr)
library(readxl)
} # LIBRERÍAS

################################################### 2016 ##############################################################

{
#///////////////////////////////////////////////////////////////////////////////////////////////////////////
############################################ ENERO 2016 ####################################################
#///////////////////////////////////////////////////////////////////////////////////////////////////////////

setwd("C:/Users/Jose/Documents/GitHub/Sector-Financiero-Peru/data/raw data/Informacion Estadistica de Banca Multiple/Indicadores de las Empresas Bancarias/Indicadores Financieros/2016")

a<-read_xls("B-2401-en2016.xls",skip = 5) #quitamos 5 espacios (título y 4 1ras filas)

a<-a[complete.cases(a),] # solo elegimos filas completas (sin vacios)

options(scipen=999) # para desactivar la nomenclatura cientifica de numeros
#View(a)
names(a)
View(a)
names(a)[10] #seleccionamos el valor 10
a<-a[,-10] # quitamos la columna 10 #usa dplyr como ejercicio recuerda usar "-" y select


names(a)<- c("variables", "BBVA","B. del Comercio", "BCP",
             "Pichincha","BIF","Scotiabank",
             "Citibank","Interbank","Mibanco",
             "GNB","Falabella","Santander","Ripley","Azteca","Deutsche","Cencosud","ICBC",
             "Total Empresas Financieras")
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
i$Periodo= as.Date("2016-01-31")

##i[is.na(i)] <- 0

# Guardando la data en carpeta "dataprocesada"

setwd("C:/Users/Jose/Documents/GitHub/Sector-Financiero-Peru/data/dataprocesada/Informacion Estadistica de Banca Multiple/Indicadores de las Empresas Bancarias/Indicadores Financieros")
saveRDS(i,file="en2016.RDS")

en2016<-i
View(en2016)

} # ENERO 2016


{
############################################ FEBRERO 2016 ####################################################
#///////////////////////////////////////////////////////////////////////////////////////////////////////////
setwd("C:/Users/Jose/Documents/GitHub/Sector-Financiero-Peru/data/raw data/Informacion Estadistica de Banca Multiple/Indicadores de las Empresas Bancarias/Indicadores Financieros/2016")


a<-read_xls("B-2401-fe2016.xls",skip = 5) #quitamos 5 espacios (título y 4 1ras filas)

a<-a[complete.cases(a),] # solo elegimos filas completas (sin vacios)

options(scipen=999) # para desactivar la nomenclatura cientifica de numeros
#View(a)
names(a)

names(a)[10] #seleccionamos el valor 10
a<-a[,-10] # quitamos la columna 10 #usa dplyr como ejercicio recuerda usar "-" y select


names(a)<- c("variables", "BBVA","B. del Comercio", "BCP",
             "Pichincha","BIF","Scotiabank",
             "Citibank","Interbank","Mibanco",
             "GNB","Falabella","Santander","Ripley","Azteca","Deutsche","Cencosud","ICBC",
             "Total Empresas Financieras")
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
i$Periodo= as.Date("2016-02-29")

#i[is.na(i)]<-0

# Guardando la data en carpeta "dataprocesada"

setwd("C:/Users/Jose/Documents/GitHub/Sector-Financiero-Peru/data/dataprocesada/Informacion Estadistica de Banca Multiple/Indicadores de las Empresas Bancarias/Indicadores Financieros")
saveRDS(i,file="fe2016.RDS")

fe2016<-i
#View(fe2016)

} # FEBRERO 2016


{
############################################ MARZO 2016 ####################################################
#///////////////////////////////////////////////////////////////////////////////////////////////////////////

setwd("C:/Users/Jose/Documents/GitHub/Sector-Financiero-Peru/data/raw data/Informacion Estadistica de Banca Multiple/Indicadores de las Empresas Bancarias/Indicadores Financieros/2016")


a<-read_xls("B-2401-ma2016.xls",skip = 5) #quitamos 5 espacios (título y 4 1ras filas)

a<-a[complete.cases(a),] # solo elegimos filas completas (sin vacios)

options(scipen=999) # para desactivar la nomenclatura cientifica de numeros
#View(a)
names(a)

names(a)[10] #seleccionamos el valor 10
a<-a[,-10] # quitamos la columna 10 #usa dplyr como ejercicio recuerda usar "-" y select


names(a)<- c("variables", "BBVA","B. del Comercio", "BCP",
             "Pichincha","BIF","Scotiabank",
             "Citibank","Interbank","Mibanco",
             "GNB","Falabella","Santander","Ripley","Azteca","Deutsche","Cencosud","ICBC",
             "Total Empresas Financieras")
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
i$Periodo= as.Date("2016-03-31")


#i[is.na(i)]<-0
# Guardando la data en carpeta "dataprocesada"

setwd("C:/Users/Jose/Documents/GitHub/Sector-Financiero-Peru/data/dataprocesada/Informacion Estadistica de Banca Multiple/Indicadores de las Empresas Bancarias/Indicadores Financieros")
saveRDS(i,file="ma2016.RDS")

ma2016<-i 
#View(ma2016)

} # MARZO 2016


{
############################################ ABRIL 2016 ####################################################
#///////////////////////////////////////////////////////////////////////////////////////////////////////////

setwd("C:/Users/Jose/Documents/GitHub/Sector-Financiero-Peru/data/raw data/Informacion Estadistica de Banca Multiple/Indicadores de las Empresas Bancarias/Indicadores Financieros/2016")



a<-read_xls("B-2401-ab2016.xls",skip = 5) #quitamos 5 espacios (título y 4 1ras filas)

a<-a[complete.cases(a),] # solo elegimos filas completas (sin vacios)

options(scipen=999) # para desactivar la nomenclatura cientifica de numeros
#View(a)
names(a)

names(a)[10] #seleccionamos el valor 10
a<-a[,-10] # quitamos la columna 10 #usa dplyr como ejercicio recuerda usar "-" y select


names(a)<- c("variables", "BBVA","B. del Comercio", "BCP",
             "Pichincha","BIF","Scotiabank",
             "Citibank","Interbank","Mibanco",
             "GNB","Falabella","Santander","Ripley","Azteca","Deutsche","Cencosud","ICBC",
             "Total Empresas Financieras")
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
i$Periodo= as.Date("2016-04-30")

#i[is.na(i)]<-0

# Guardando la data en carpeta "dataprocesada"

setwd("C:/Users/Jose/Documents/GitHub/Sector-Financiero-Peru/data/dataprocesada/Informacion Estadistica de Banca Multiple/Indicadores de las Empresas Bancarias/Indicadores Financieros")
saveRDS(i,file="ab2016.RDS")

ab2016=i 
#View(ab2016)
} # ABRIL 2016


{
############################################ MAYO 2016 ####################################################
#///////////////////////////////////////////////////////////////////////////////////////////////////////////

setwd("C:/Users/Jose/Documents/GitHub/Sector-Financiero-Peru/data/raw data/Informacion Estadistica de Banca Multiple/Indicadores de las Empresas Bancarias/Indicadores Financieros/2016")

a<-read_xls("B-2401-my2016.xls",skip = 5) #quitamos 5 espacios (título y 4 1ras filas)

a<-a[complete.cases(a),] # solo elegimos filas completas (sin vacios)

options(scipen=999) # para desactivar la nomenclatura cientifica de numeros
#View(a)
names(a)

names(a)[10] #seleccionamos el valor 10
a<-a[,-10] # quitamos la columna 10 #usa dplyr como ejercicio recuerda usar "-" y select


names(a)<- c("variables", "BBVA","B. del Comercio", "BCP",
             "Pichincha","BIF","Scotiabank",
             "Citibank","Interbank","Mibanco",
             "GNB","Falabella","Santander","Ripley","Azteca","Deutsche","Cencosud","ICBC",
             "Total Empresas Financieras")
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
i$Periodo= as.Date("2016-05-31")

#i[is.na(i)]<-0

# Guardando la data en carpeta "dataprocesada"

setwd("C:/Users/Jose/Documents/GitHub/Sector-Financiero-Peru/data/dataprocesada/Informacion Estadistica de Banca Multiple/Indicadores de las Empresas Bancarias/Indicadores Financieros")
saveRDS(i,file="my2016.RDS")

my2016<-i
#View(my2016)
} # MAYO 2016


{
############################################ JUNIO 2016 ####################################################
#///////////////////////////////////////////////////////////////////////////////////////////////////////////

setwd("C:/Users/Jose/Documents/GitHub/Sector-Financiero-Peru/data/raw data/Informacion Estadistica de Banca Multiple/Indicadores de las Empresas Bancarias/Indicadores Financieros/2016")


a<-read_xls("B-2401-jn2016.xls",skip = 5) #quitamos 5 espacios (título y 4 1ras filas)

a<-a[complete.cases(a),] # solo elegimos filas completas (sin vacios)

options(scipen=999) # para desactivar la nomenclatura cientifica de numeros
#View(a)
names(a)

names(a)[10] #seleccionamos el valor 10
a<-a[,-10] # quitamos la columna 10 #usa dplyr como ejercicio recuerda usar "-" y select

names(a)
names(a)<- c("variables", "BBVA","B. del Comercio", "BCP",
             "Pichincha","BIF","Scotiabank",
             "Citibank","Interbank","Mibanco",
             "GNB","Falabella","Santander","Ripley","Azteca","Deutsche","Cencosud","ICBC",
             "Total Empresas Financieras")
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
i$Periodo= as.Date("2016-06-30")


#i[is.na(i)]<-0

# Guardando la data en carpeta "dataprocesada"

setwd("C:/Users/Jose/Documents/GitHub/Sector-Financiero-Peru/data/dataprocesada/Informacion Estadistica de Banca Multiple/Indicadores de las Empresas Bancarias/Indicadores Financieros")
saveRDS(i,file="jn2016.RDS")

jn2016<-i 
#View(jn2016)
} # JUNIO 2016


{
############################################ JULIO 2016 ####################################################
#///////////////////////////////////////////////////////////////////////////////////////////////////////////

setwd("C:/Users/Jose/Documents/GitHub/Sector-Financiero-Peru/data/raw data/Informacion Estadistica de Banca Multiple/Indicadores de las Empresas Bancarias/Indicadores Financieros/2016")


a<-read_xls("B-2401-jl2016.xls",skip = 5) #quitamos 5 espacios (título y 4 1ras filas)

a<-a[complete.cases(a),] # solo elegimos filas completas (sin vacios)

options(scipen=999) # para desactivar la nomenclatura cientifica de numeros
#View(a)
#names(a)

names(a)[10] #seleccionamos el valor 10
a<-a[,-10] # quitamos la columna 10 #usa dplyr como ejercicio recuerda usar "-" y select


names(a)<- c("variables", "BBVA","B. del Comercio", "BCP",
             "Pichincha","BIF","Scotiabank",
             "Citibank","Interbank","Mibanco",
             "GNB","Falabella","Santander","Ripley","Azteca","Cencosud","ICBC",
             "Total Empresas Financieras")
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
i$Periodo= as.Date("2016-07-31")


#i[is.na(i)]<-0
# Guardando la data en carpeta "dataprocesada"

setwd("C:/Users/Jose/Documents/GitHub/Sector-Financiero-Peru/data/dataprocesada/Informacion Estadistica de Banca Multiple/Indicadores de las Empresas Bancarias/Indicadores Financieros")
saveRDS(i,file="jl2016.RDS")

jl2016<-i
View(jl2016)
} # JULIO 2016 


{
############################################ AGOSTO 2016 ####################################################
#///////////////////////////////////////////////////////////////////////////////////////////////////////////

setwd("C:/Users/Jose/Documents/GitHub/Sector-Financiero-Peru/data/raw data/Informacion Estadistica de Banca Multiple/Indicadores de las Empresas Bancarias/Indicadores Financieros/2016")



a<-read_xls("B-2401-ag2016.xls",skip = 5) #quitamos 5 espacios (título y 4 1ras filas)

a<-a[complete.cases(a),] # solo elegimos filas completas (sin vacios)

options(scipen=999) # para desactivar la nomenclatura cientifica de numeros
#View(a)
names(a)

names(a)[10] #seleccionamos el valor 10
a<-a[,-10] # quitamos la columna 10 #usa dplyr como ejercicio recuerda usar "-" y select


names(a)<- c("variables", "BBVA","B. del Comercio", "BCP",
             "Pichincha","BIF","Scotiabank",
             "Citibank","Interbank","Mibanco",
             "GNB","Falabella","Santander","Ripley","Azteca","Cencosud","ICBC",
             "Total Empresas Financieras")
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
i$Periodo= as.Date("2016-08-31")


#i[is.na(i)]<-0
# Guardando la data en carpeta "dataprocesada"

setwd("C:/Users/Jose/Documents/GitHub/Sector-Financiero-Peru/data/dataprocesada/Informacion Estadistica de Banca Multiple/Indicadores de las Empresas Bancarias/Indicadores Financieros")
saveRDS(i,file="ag2016.RDS")

ag2016<-i 
#View(ag2016)

} # AGOSTO 2016


{
############################################ SETIEMBRE 2016 ####################################################
#///////////////////////////////////////////////////////////////////////////////////////////////////////////

setwd("C:/Users/Jose/Documents/GitHub/Sector-Financiero-Peru/data/raw data/Informacion Estadistica de Banca Multiple/Indicadores de las Empresas Bancarias/Indicadores Financieros/2016")


a<-read_xls("B-2401-se2016.xls",skip = 5) #quitamos 5 espacios (título y 4 1ras filas)

a<-a[complete.cases(a),] # solo elegimos filas completas (sin vacios)

options(scipen=999) # para desactivar la nomenclatura cientifica de numeros
#View(a)
names(a)

names(a)[10] #seleccionamos el valor 10
a<-a[,-10] # quitamos la columna 10 #usa dplyr como ejercicio recuerda usar "-" y select


names(a)<- c("variables", "BBVA","B. del Comercio", "BCP",
             "Pichincha","BIF","Scotiabank",
             "Citibank","Interbank","Mibanco",
             "GNB","Falabella","Santander","Ripley","Azteca","Cencosud","ICBC",
             "Total Empresas Financieras")
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
i$Periodo= as.Date("2016-09-30")
#View(se2016)

#i[is.na(i)]<-0
# Guardando la data en carpeta "dataprocesada"

setwd("C:/Users/Jose/Documents/GitHub/Sector-Financiero-Peru/data/dataprocesada/Informacion Estadistica de Banca Multiple/Indicadores de las Empresas Bancarias/Indicadores Financieros")
saveRDS(i,file="se2016.RDS")

se2016<-i
#View(se2016)





} # SETIEMBRE 2016


{
############################################ OCTUBRE 2016 ####################################################
#///////////////////////////////////////////////////////////////////////////////////////////////////////////

setwd("C:/Users/Jose/Documents/GitHub/Sector-Financiero-Peru/data/raw data/Informacion Estadistica de Banca Multiple/Indicadores de las Empresas Bancarias/Indicadores Financieros/2016")



a<-read_xls("B-2401-oc2016.xls",skip = 5) #quitamos 5 espacios (título y 4 1ras filas)

a<-a[complete.cases(a),] # solo elegimos filas completas (sin vacios)

options(scipen=999) # para desactivar la nomenclatura cientifica de numeros
#View(a)
names(a)

names(a)[10] #seleccionamos el valor 10
a<-a[,-10] # quitamos la columna 10 #usa dplyr como ejercicio recuerda usar "-" y select


names(a)<- c("variables", "BBVA","B. del Comercio", "BCP",
             "Pichincha","BIF","Scotiabank",
             "Citibank","Interbank","Mibanco",
             "GNB","Falabella","Santander","Ripley","Azteca","Cencosud","ICBC",
             "Total Empresas Financieras")
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
i$Periodo= as.Date("2016-10-31")


#i[is.na(i)]<-0
# Guardando la data en carpeta "dataprocesada"

setwd("C:/Users/Jose/Documents/GitHub/Sector-Financiero-Peru/data/dataprocesada/Informacion Estadistica de Banca Multiple/Indicadores de las Empresas Bancarias/Indicadores Financieros")
saveRDS(i,file="oc2016.RDS")

oc2016<-i 
#View(oc2016)


} # OCTUBRE 2016


{
############################################ NOVIEMBRE 2016 ####################################################
#///////////////////////////////////////////////////////////////////////////////////////////////////////////

setwd("C:/Users/Jose/Documents/GitHub/Sector-Financiero-Peru/data/raw data/Informacion Estadistica de Banca Multiple/Indicadores de las Empresas Bancarias/Indicadores Financieros/2016")

a<-read_xls("B-2401-no2016.xls",skip = 5) #quitamos 5 espacios (título y 4 1ras filas)

a<-a[complete.cases(a),] # solo elegimos filas completas (sin vacios)

options(scipen=999) # para desactivar la nomenclatura cientifica de numeros
#View(a)
names(a)

names(a)[10] #seleccionamos el valor 10
a<-a[,-10] # quitamos la columna 10 #usa dplyr como ejercicio recuerda usar "-" y select


names(a)<- c("variables", "BBVA","B. del Comercio", "BCP",
             "Pichincha","BIF","Scotiabank",
             "Citibank","Interbank","Mibanco",
             "GNB","Falabella","Santander","Ripley","Azteca","Cencosud","ICBC",
             "Total Empresas Financieras")
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
i$Periodo= as.Date("2016-11-30")

#i[is.na(i)]<-0

# Guardando la data en carpeta "dataprocesada"

setwd("C:/Users/Jose/Documents/GitHub/Sector-Financiero-Peru/data/dataprocesada/Informacion Estadistica de Banca Multiple/Indicadores de las Empresas Bancarias/Indicadores Financieros")
saveRDS(i,file="no2016.RDS")

no2016<-i
#View(no2016)

} # NOVIEMBRE 2016


{
############################################ DICIEMBRE 2016 ####################################################
#///////////////////////////////////////////////////////////////////////////////////////////////////////////

setwd("C:/Users/Jose/Documents/GitHub/Sector-Financiero-Peru/data/raw data/Informacion Estadistica de Banca Multiple/Indicadores de las Empresas Bancarias/Indicadores Financieros/2016")

  
a<-read_xlsx("B-2401-di2016.xls",skip = 5) #quitamos 5 espacios (título y 4 1ras filas)

a<-a[complete.cases(a),] # solo elegimos filas completas (sin vacios)

options(scipen=999) # para desactivar la nomenclatura cientifica de numeros
#View(a)
names(a)

names(a)[10] #seleccionamos el valor 10
a<-a[,-10] # quitamos la columna 10 #usa dplyr como ejercicio recuerda usar "-" y select


names(a)<- c("variables", "BBVA","B. del Comercio", "BCP",
             "Pichincha","BIF","Scotiabank",
             "Citibank","Interbank","Mibanco",
             "GNB","Falabella","Santander","Ripley","Azteca","Cencosud","ICBC",
             "Total Empresas Financieras")
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
i$Periodo= as.Date("2016-12-31")


#i[is.na(i)]<-0
# Guardando la data en carpeta "dataprocesada"

setwd("C:/Users/Jose/Documents/GitHub/Sector-Financiero-Peru/data/dataprocesada/Informacion Estadistica de Banca Multiple/Indicadores de las Empresas Bancarias/Indicadores Financieros")
saveRDS(i,file="di2016.RDS")

di2016<-i
#View(di2016)


} # DICIEMBRE 2016

####################################################################################################################################################
############################################  2017 ############################################################################################
####################################################################################################################################################

{
############################################ ENERO 2017 ####################################################
#///////////////////////////////////////////////////////////////////////////////////////////////////////////
  
setwd("C:/Users/Jose/Documents/GitHub/Sector-Financiero-Peru/data/raw data/Informacion Estadistica de Banca Multiple/Indicadores de las Empresas Bancarias/Indicadores Financieros/2017")

a<-read_xls("B-2401-en2017.xls",skip = 5) #quitamos 5 espacios (título y 4 1ras filas)
  
a<-a[complete.cases(a),] # solo elegimos filas completas (sin vacios)
  
options(scipen=999) # para desactivar la nomenclatura cientifica de numeros
#View(a)
names(a)

names(a)[10] #seleccionamos el valor 10
a<-a[,-10] # quitamos la columna 10 #usa dplyr como ejercicio recuerda usar "-" y select
  
  
names(a)<- c("variables", "BBVA","B. del Comercio", "BCP",
               "Pichincha","BIF","Scotiabank",
               "Citibank","Interbank","Mibanco",
               "GNB","Falabella","Santander","Ripley","Azteca","Cencosud","ICBC",
               "Total Empresas Financieras")
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
i$Periodo= as.Date("2017-01-31")

##i[is.na(i)] <- 0
  
# Guardando la data en carpeta "dataprocesada"
  
setwd("C:/Users/Jose/Documents/GitHub/Sector-Financiero-Peru/data/dataprocesada/Informacion Estadistica de Banca Multiple/Indicadores de las Empresas Bancarias/Indicadores Financieros")
saveRDS(i,file="en2017.RDS")

en2017<-i
#View(en2017)
  
} # ENERO 2017


{
  ############################################ FEBRERO 2017 ####################################################
  #///////////////////////////////////////////////////////////////////////////////////////////////////////////
  setwd("C:/Users/Jose/Documents/GitHub/Sector-Financiero-Peru/data/raw data/Informacion Estadistica de Banca Multiple/Indicadores de las Empresas Bancarias/Indicadores Financieros/2017")
  
  
  a<-read_xlsx("B-2401-fe2017.xls",skip = 5) #quitamos 5 espacios (título y 4 1ras filas)
  
  a<-a[complete.cases(a),] # solo elegimos filas completas (sin vacios)
  
  options(scipen=999) # para desactivar la nomenclatura cientifica de numeros
  #View(a)
  names(a)
  
  names(a)[10] #seleccionamos el valor 10
  a<-a[,-10] # quitamos la columna 10 #usa dplyr como ejercicio recuerda usar "-" y select
  
  
  names(a)<- c("variables", "BBVA","B. del Comercio", "BCP",
               "Pichincha","BIF","Scotiabank",
               "Citibank","Interbank","Mibanco",
               "GNB","Falabella","Santander","Ripley","Azteca","Cencosud","ICBC",
               "Total Empresas Financieras")
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
  i$Periodo= as.Date("2017-02-28")
  
  #i[is.na(i)]<-0
  
  # Guardando la data en carpeta "dataprocesada"
  
setwd("C:/Users/Jose/Documents/GitHub/Sector-Financiero-Peru/data/dataprocesada/Informacion Estadistica de Banca Multiple/Indicadores de las Empresas Bancarias/Indicadores Financieros")
  saveRDS(i,file="fe2017.RDS")
  
  fe2017<-i
  
} # FEBRERO 2017


{
  ############################################ MARZO 2017 ####################################################
  #///////////////////////////////////////////////////////////////////////////////////////////////////////////
  
  setwd("C:/Users/Jose/Documents/GitHub/Sector-Financiero-Peru/data/raw data/Informacion Estadistica de Banca Multiple/Indicadores de las Empresas Bancarias/Indicadores Financieros/2017")
  
  
  a<-read_xls("B-2401-ma2017.xls",skip = 5) #quitamos 5 espacios (título y 4 1ras filas)
  
  a<-a[complete.cases(a),] # solo elegimos filas completas (sin vacios)
  
  options(scipen=999) # para desactivar la nomenclatura cientifica de numeros
  #View(a)
  names(a)
  
  names(a)[10] #seleccionamos el valor 10
  a<-a[,-10] # quitamos la columna 10 #usa dplyr como ejercicio recuerda usar "-" y select
  
  
  names(a)<- c("variables", "BBVA","B. del Comercio", "BCP",
               "Pichincha","BIF","Scotiabank",
               "Citibank","Interbank","Mibanco",
               "GNB","Falabella","Santander","Ripley","Azteca","Cencosud","ICBC",
               "Total Empresas Financieras")
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
  i$Periodo= as.Date("2017-03-31")
  
  
  #i[is.na(i)]<-0
  # Guardando la data en carpeta "dataprocesada"
  
setwd("C:/Users/Jose/Documents/GitHub/Sector-Financiero-Peru/data/dataprocesada/Informacion Estadistica de Banca Multiple/Indicadores de las Empresas Bancarias/Indicadores Financieros")
  saveRDS(i,file="ma2017.RDS")
  
  ma2017<-i 
  
} # MARZO 2017


{
  ############################################ ABRIL 2017 ####################################################
  #///////////////////////////////////////////////////////////////////////////////////////////////////////////
  
  setwd("C:/Users/Jose/Documents/GitHub/Sector-Financiero-Peru/data/raw data/Informacion Estadistica de Banca Multiple/Indicadores de las Empresas Bancarias/Indicadores Financieros/2017")
  
  
  
  a<-read_xls("B-2401-ab2017.xls",skip = 5) #quitamos 5 espacios (título y 4 1ras filas)
  
  a<-a[complete.cases(a),] # solo elegimos filas completas (sin vacios)
  
  options(scipen=999) # para desactivar la nomenclatura cientifica de numeros
  #View(a)
  #names(a)
  
  names(a)[10] #seleccionamos el valor 10
  a<-a[,-10] # quitamos la columna 10 #usa dplyr como ejercicio recuerda usar "-" y select
  
  
  names(a)<- c("variables", "BBVA","B. del Comercio", "BCP",
               "Pichincha","BIF","Scotiabank",
               "Citibank","Interbank","Mibanco",
               "GNB","Falabella","Santander","Ripley","Azteca","Cencosud","ICBC",
               "Total Empresas Financieras")
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
  i$Periodo= as.Date("2017-04-30")
  
  #i[is.na(i)]<-0
  
  # Guardando la data en carpeta "dataprocesada"
  
setwd("C:/Users/Jose/Documents/GitHub/Sector-Financiero-Peru/data/dataprocesada/Informacion Estadistica de Banca Multiple/Indicadores de las Empresas Bancarias/Indicadores Financieros")
  saveRDS(i,file="ab2017.RDS")
  
  ab2017=i 
  #View(ab2017)
} # ABRIL 2017


{
  ############################################ MAYO 2017 ####################################################
  #///////////////////////////////////////////////////////////////////////////////////////////////////////////
  
  setwd("C:/Users/Jose/Documents/GitHub/Sector-Financiero-Peru/data/raw data/Informacion Estadistica de Banca Multiple/Indicadores de las Empresas Bancarias/Indicadores Financieros/2017")
  
  a<-read_xlsx("B-2401-my2017.xls",skip = 5) #quitamos 5 espacios (título y 4 1ras filas)
  
  a<-a[complete.cases(a),] # solo elegimos filas completas (sin vacios)
  
  options(scipen=999) # para desactivar la nomenclatura cientifica de numeros
  #View(a)
  names(a)
  
  names(a)[10] #seleccionamos el valor 10
  a<-a[,-10] # quitamos la columna 10 #usa dplyr como ejercicio recuerda usar "-" y select
  
  
  names(a)<- c("variables", "BBVA","B. del Comercio", "BCP",
               "Pichincha","BIF","Scotiabank",
               "Citibank","Interbank","Mibanco",
               "GNB","Falabella","Santander","Ripley","Azteca","Cencosud","ICBC",
               "Total Empresas Financieras")
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
  i$Periodo= as.Date("2017-05-31")
  
  #i[is.na(i)]<-0
  
  # Guardando la data en carpeta "dataprocesada"
  
setwd("C:/Users/Jose/Documents/GitHub/Sector-Financiero-Peru/data/dataprocesada/Informacion Estadistica de Banca Multiple/Indicadores de las Empresas Bancarias/Indicadores Financieros")
  saveRDS(i,file="my2017.RDS")
  
  my2017<-i
  #View(my2017)
} # MAYO 2017


{
  ############################################ JUNIO 2017 ####################################################
  #///////////////////////////////////////////////////////////////////////////////////////////////////////////
  
  setwd("C:/Users/Jose/Documents/GitHub/Sector-Financiero-Peru/data/raw data/Informacion Estadistica de Banca Multiple/Indicadores de las Empresas Bancarias/Indicadores Financieros/2017")
  
  
  a<-read_xlsx("B-2401-jn2017.xls",skip = 5) #quitamos 5 espacios (título y 4 1ras filas)
  
  a<-a[complete.cases(a),] # solo elegimos filas completas (sin vacios)
  
  options(scipen=999) # para desactivar la nomenclatura cientifica de numeros
  #View(a)
  names(a)
  
  names(a)[10] #seleccionamos el valor 10
  a<-a[,-10] # quitamos la columna 10 #usa dplyr como ejercicio recuerda usar "-" y select
  
  names(a)
  names(a)<- c("variables", "BBVA","B. del Comercio", "BCP",
               "Pichincha","BIF","Scotiabank",
               "Citibank","Interbank","Mibanco",
               "GNB","Falabella","Santander","Ripley","Azteca","Cencosud","ICBC",
               "Total Empresas Financieras")
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
  i$Periodo= as.Date("2017-06-30")
  
  
  #i[is.na(i)]<-0
  
  # Guardando la data en carpeta "dataprocesada"
  
setwd("C:/Users/Jose/Documents/GitHub/Sector-Financiero-Peru/data/dataprocesada/Informacion Estadistica de Banca Multiple/Indicadores de las Empresas Bancarias/Indicadores Financieros")
  saveRDS(i,file="jn2017.RDS")
  
  jn2017<-i 
  #View(jn2017)
} # JUNIO 2017


{
  ############################################ JULIO 2017 ####################################################
  #///////////////////////////////////////////////////////////////////////////////////////////////////////////
  
  setwd("C:/Users/Jose/Documents/GitHub/Sector-Financiero-Peru/data/raw data/Informacion Estadistica de Banca Multiple/Indicadores de las Empresas Bancarias/Indicadores Financieros/2017")
  
  
  a<-read_xls("B-2401-jl2017.xls",skip = 5) #quitamos 5 espacios (título y 4 1ras filas)
  
  a<-a[complete.cases(a),] # solo elegimos filas completas (sin vacios)
  
  options(scipen=999) # para desactivar la nomenclatura cientifica de numeros
  #View(a)
  #names(a)
  
  names(a)[10] #seleccionamos el valor 10
  a<-a[,-10] # quitamos la columna 10 #usa dplyr como ejercicio recuerda usar "-" y select
  
  
  names(a)<- c("variables", "BBVA","B. del Comercio", "BCP",
               "Pichincha","BIF","Scotiabank",
               "Citibank","Interbank","Mibanco",
               "GNB","Falabella","Santander","Ripley","Azteca","Cencosud","ICBC",
               "Total Empresas Financieras")
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
  i$Periodo= as.Date("2017-07-31")
  
  
  #i[is.na(i)]<-0
  # Guardando la data en carpeta "dataprocesada"
  
setwd("C:/Users/Jose/Documents/GitHub/Sector-Financiero-Peru/data/dataprocesada/Informacion Estadistica de Banca Multiple/Indicadores de las Empresas Bancarias/Indicadores Financieros")
  saveRDS(i,file="jl2017.RDS")
  
  jl2017<-i
  #View(jl2017)
} # JULIO 2017 


{
  ############################################ AGOSTO 2017 ####################################################
  #///////////////////////////////////////////////////////////////////////////////////////////////////////////
  
  setwd("C:/Users/Jose/Documents/GitHub/Sector-Financiero-Peru/data/raw data/Informacion Estadistica de Banca Multiple/Indicadores de las Empresas Bancarias/Indicadores Financieros/2017")
  
  
  
  a<-read_xls("B-2401-ag2017.xls",skip = 5) #quitamos 5 espacios (título y 4 1ras filas)
  
  a<-a[complete.cases(a),] # solo elegimos filas completas (sin vacios)
  
  options(scipen=999) # para desactivar la nomenclatura cientifica de numeros
  #View(a)
  names(a)
  
  names(a)[10] #seleccionamos el valor 10
  a<-a[,-10] # quitamos la columna 10 #usa dplyr como ejercicio recuerda usar "-" y select
  
  
  names(a)<- c("variables", "BBVA","B. del Comercio", "BCP",
               "Pichincha","BIF","Scotiabank",
               "Citibank","Interbank","Mibanco",
               "GNB","Falabella","Santander","Ripley","Azteca","Cencosud","ICBC",
               "Total Empresas Financieras")
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
  i$Periodo= as.Date("2017-08-31")
  
  
  #i[is.na(i)]<-0
  # Guardando la data en carpeta "dataprocesada"
  
setwd("C:/Users/Jose/Documents/GitHub/Sector-Financiero-Peru/data/dataprocesada/Informacion Estadistica de Banca Multiple/Indicadores de las Empresas Bancarias/Indicadores Financieros")
  saveRDS(i,file="ag2017.RDS")
  
  ag2017<-i 
  #View(ag2017)
  
} # AGOSTO 2017


{
  ############################################ SETIEMBRE 2017 ####################################################
  #///////////////////////////////////////////////////////////////////////////////////////////////////////////
  
  setwd("C:/Users/Jose/Documents/GitHub/Sector-Financiero-Peru/data/raw data/Informacion Estadistica de Banca Multiple/Indicadores de las Empresas Bancarias/Indicadores Financieros/2017")
  
  
  a<-read_xls("B-2401-se2017.xls",skip = 5) #quitamos 5 espacios (título y 4 1ras filas)
  
  a<-a[complete.cases(a),] # solo elegimos filas completas (sin vacios)
  
  options(scipen=999) # para desactivar la nomenclatura cientifica de numeros
  #View(a)
  names(a)
  
  names(a)[10] #seleccionamos el valor 10
  a<-a[,-10] # quitamos la columna 10 #usa dplyr como ejercicio recuerda usar "-" y select
  
  
  names(a)<- c("variables", "BBVA","B. del Comercio", "BCP",
               "Pichincha","BIF","Scotiabank",
               "Citibank","Interbank","Mibanco",
               "GNB","Falabella","Santander","Ripley","Azteca","Cencosud","ICBC",
               "Total Empresas Financieras")
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
  i$Periodo= as.Date("2017-09-30")
  #View(se2017)
  
  #i[is.na(i)]<-0
  # Guardando la data en carpeta "dataprocesada"
  
setwd("C:/Users/Jose/Documents/GitHub/Sector-Financiero-Peru/data/dataprocesada/Informacion Estadistica de Banca Multiple/Indicadores de las Empresas Bancarias/Indicadores Financieros")
  saveRDS(i,file="se2017.RDS")
  
  se2017<-i
  #View(se2017)
  
  
} # SETIEMBRE 2017


{
  ############################################ OCTUBRE 2017 ####################################################
  #///////////////////////////////////////////////////////////////////////////////////////////////////////////
  
  setwd("C:/Users/Jose/Documents/GitHub/Sector-Financiero-Peru/data/raw data/Informacion Estadistica de Banca Multiple/Indicadores de las Empresas Bancarias/Indicadores Financieros/2017")
  
  
  
  a<-read_xlsx("B-2401-oc2017.xls",skip = 5) #quitamos 5 espacios (título y 4 1ras filas)
  
  a<-a[complete.cases(a),] # solo elegimos filas completas (sin vacios)
  
  options(scipen=999) # para desactivar la nomenclatura cientifica de numeros
  #View(a)
  names(a)
  
  names(a)[10] #seleccionamos el valor 10
  a<-a[,-10] # quitamos la columna 10 #usa dplyr como ejercicio recuerda usar "-" y select
  
  
  names(a)<- c("variables", "BBVA","B. del Comercio", "BCP",
               "Pichincha","BIF","Scotiabank",
               "Citibank","Interbank","Mibanco",
               "GNB","Falabella","Santander","Ripley","Azteca","Cencosud","ICBC",
               "Total Empresas Financieras")
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
  i$Periodo= as.Date("2017-10-31")
  
  
  #i[is.na(i)]<-0
  # Guardando la data en carpeta "dataprocesada"
  
setwd("C:/Users/Jose/Documents/GitHub/Sector-Financiero-Peru/data/dataprocesada/Informacion Estadistica de Banca Multiple/Indicadores de las Empresas Bancarias/Indicadores Financieros")
  saveRDS(i,file="oc2017.RDS")
  
  oc2017<-i 
  #View(oc2017)
  
  
} # OCTUBRE 2017


{
  ############################################ NOVIEMBRE 2017 ####################################################
  #///////////////////////////////////////////////////////////////////////////////////////////////////////////
  
  setwd("C:/Users/Jose/Documents/GitHub/Sector-Financiero-Peru/data/raw data/Informacion Estadistica de Banca Multiple/Indicadores de las Empresas Bancarias/Indicadores Financieros/2017")
  
  a<-read_xls("B-2401-no2017.xls",skip = 5) #quitamos 5 espacios (título y 4 1ras filas)
  
  a<-a[complete.cases(a),] # solo elegimos filas completas (sin vacios)
  
  options(scipen=999) # para desactivar la nomenclatura cientifica de numeros
  #View(a)
  names(a)
  
  names(a)[10] #seleccionamos el valor 10
  a<-a[,-10] # quitamos la columna 10 #usa dplyr como ejercicio recuerda usar "-" y select
  
  
  names(a)<- c("variables", "BBVA","B. del Comercio", "BCP",
               "Pichincha","BIF","Scotiabank",
               "Citibank","Interbank","Mibanco",
               "GNB","Falabella","Santander","Ripley","Azteca","Cencosud","ICBC",
               "Total Empresas Financieras")
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
  i$Periodo= as.Date("2017-11-30")
  
  #i[is.na(i)]<-0
  
  # Guardando la data en carpeta "dataprocesada"
  
setwd("C:/Users/Jose/Documents/GitHub/Sector-Financiero-Peru/data/dataprocesada/Informacion Estadistica de Banca Multiple/Indicadores de las Empresas Bancarias/Indicadores Financieros")
  saveRDS(i,file="no2017.RDS")
  
  no2017<-i
  #View(no2017
  
} # NOVIEMBRE 2017


{
  ############################################ DICIEMBRE 2017 ####################################################
  #///////////////////////////////////////////////////////////////////////////////////////////////////////////
  
  setwd("C:/Users/Jose/Documents/GitHub/Sector-Financiero-Peru/data/raw data/Informacion Estadistica de Banca Multiple/Indicadores de las Empresas Bancarias/Indicadores Financieros/2017")
  
  
  a<-read_xlsx("B-2401-di2017.xls",skip = 5) #quitamos 5 espacios (título y 4 1ras filas)
  
  a<-a[complete.cases(a),] # solo elegimos filas completas (sin vacios)
  
  options(scipen=999) # para desactivar la nomenclatura cientifica de numeros
  #View(a)
  names(a)
  
  names(a)[10] #seleccionamos el valor 10
  a<-a[,-10] # quitamos la columna 10 #usa dplyr como ejercicio recuerda usar "-" y select
  
  
  names(a)<- c("variables", "BBVA","B. del Comercio", "BCP",
               "Pichincha","BIF","Scotiabank",
               "Citibank","Interbank","Mibanco",
               "GNB","Falabella","Santander","Ripley","Azteca","Cencosud","ICBC",
               "Total Empresas Financieras")
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
  i$Periodo= as.Date("2017-12-31")
  
  
  #i[is.na(i)]<-0
  # Guardando la data en carpeta "dataprocesada"
  
setwd("C:/Users/Jose/Documents/GitHub/Sector-Financiero-Peru/data/dataprocesada/Informacion Estadistica de Banca Multiple/Indicadores de las Empresas Bancarias/Indicadores Financieros")
  saveRDS(i,file="di2017.RDS")
  
  di2017<-i
  #View(di2017)
  
  
} # DICIEMBRE 2017



####################################################################################################################################################
############################################  2018 ############################################################################################
####################################################################################################################################################



{
  ############################################ ENERO 2018 ####################################################
  #///////////////////////////////////////////////////////////////////////////////////////////////////////////
  
setwd("C:/Users/Jose/Documents/GitHub/Sector-Financiero-Peru/data/raw data/Informacion Estadistica de Banca Multiple/Indicadores de las Empresas Bancarias/Indicadores Financieros/2018")
  
  a<-read_xlsx("B-2401-en2018.xls",skip = 5) #quitamos 5 espacios (título y 4 1ras filas)
  
  a<-a[complete.cases(a),] # solo elegimos filas completas (sin vacios)
  
  options(scipen=999) # para desactivar la nomenclatura cientifica de numeros
  #View(a)
  names(a)
  
  names(a)[10] #seleccionamos el valor 10
  a<-a[,-10] # quitamos la columna 10 #usa dplyr como ejercicio recuerda usar "-" y select
  
  
  names(a)<- c("variables", "BBVA","B. del Comercio", "BCP",
               "Pichincha","BIF","Scotiabank",
               "Citibank","Interbank","Mibanco",
               "GNB","Falabella","Santander","Ripley","Azteca","Cencosud","ICBC",
               "Total Empresas Financieras")
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
  i$Periodo= as.Date("2018-01-31")
  
  #i[is.na(i)] <- 0
  
  # Guardando la data en carpeta "dataprocesada"
  
setwd("C:/Users/Jose/Documents/GitHub/Sector-Financiero-Peru/data/dataprocesada/Informacion Estadistica de Banca Multiple/Indicadores de las Empresas Bancarias/Indicadores Financieros")
  saveRDS(i,file="en2018.RDS")
  
  en2018<-i
  
  
} # ENERO 2018


{
  ############################################ FEBRERO 2018 ####################################################
  #///////////////////////////////////////////////////////////////////////////////////////////////////////////
setwd("C:/Users/Jose/Documents/GitHub/Sector-Financiero-Peru/data/raw data/Informacion Estadistica de Banca Multiple/Indicadores de las Empresas Bancarias/Indicadores Financieros/2018")
  
  
  a<-read_xlsx("B-2401-fe2018.xls",skip = 5) #quitamos 5 espacios (título y 4 1ras filas)
  
  a<-a[complete.cases(a),] # solo elegimos filas completas (sin vacios)
  
  options(scipen=999) # para desactivar la nomenclatura cientifica de numeros
  #View(a)
  names(a)
  
  names(a)[10] #seleccionamos el valor 10
  a<-a[,-10] # quitamos la columna 10 #usa dplyr como ejercicio recuerda usar "-" y select
  
  
  names(a)<- c("variables", "BBVA","B. del Comercio", "BCP",
               "Pichincha","BIF","Scotiabank",
               "Citibank","Interbank","Mibanco",
               "GNB","Falabella","Santander","Ripley","Azteca","Cencosud","ICBC",
               "Total Empresas Financieras")
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
  i$Periodo= as.Date("2018-02-28")
  
#  i[is.na(i)]<-0
  
  # Guardando la data en carpeta "dataprocesada"
  
setwd("C:/Users/Jose/Documents/GitHub/Sector-Financiero-Peru/data/dataprocesada/Informacion Estadistica de Banca Multiple/Indicadores de las Empresas Bancarias/Indicadores Financieros")
  saveRDS(i,file="fe2018.RDS")
  
  fe2018<-i
  
} # FEBRERO 2018


{
  ############################################ MARZO 2018 ####################################################
  #///////////////////////////////////////////////////////////////////////////////////////////////////////////
  
setwd("C:/Users/Jose/Documents/GitHub/Sector-Financiero-Peru/data/raw data/Informacion Estadistica de Banca Multiple/Indicadores de las Empresas Bancarias/Indicadores Financieros/2018")
  
  
  a<-read_xlsx("B-2401-ma2018.xls",skip = 5) #quitamos 5 espacios (título y 4 1ras filas)
  
  a<-a[complete.cases(a),] # solo elegimos filas completas (sin vacios)
  
  options(scipen=999) # para desactivar la nomenclatura cientifica de numeros
  #View(a)
  names(a)
  
  names(a)[10] #seleccionamos el valor 10
  a<-a[,-10] # quitamos la columna 10 #usa dplyr como ejercicio recuerda usar "-" y select
  
  
  names(a)<- c("variables", "BBVA","B. del Comercio", "BCP",
               "Pichincha","BIF","Scotiabank",
               "Citibank","Interbank","Mibanco",
               "GNB","Falabella","Santander","Ripley","Azteca","Cencosud","ICBC",
               "Total Empresas Financieras")
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
  i$Periodo= as.Date("2018-03-31")
  
  
#  i[is.na(i)]<-0
  # Guardando la data en carpeta "dataprocesada"
  
setwd("C:/Users/Jose/Documents/GitHub/Sector-Financiero-Peru/data/dataprocesada/Informacion Estadistica de Banca Multiple/Indicadores de las Empresas Bancarias/Indicadores Financieros")
  saveRDS(i,file="ma2018.RDS")
  
  ma2018<-i 
  
} # MARZO 2018


{
  ############################################ ABRIL 2018 ####################################################
  #///////////////////////////////////////////////////////////////////////////////////////////////////////////
  
setwd("C:/Users/Jose/Documents/GitHub/Sector-Financiero-Peru/data/raw data/Informacion Estadistica de Banca Multiple/Indicadores de las Empresas Bancarias/Indicadores Financieros/2018")
  
  
  
  a<-read_xlsx("B-2401-ab2018.xls",skip = 5) #quitamos 5 espacios (título y 4 1ras filas)
  
  a<-a[complete.cases(a),] # solo elegimos filas completas (sin vacios)
  
  options(scipen=999) # para desactivar la nomenclatura cientifica de numeros
  #View(a)
  #names(a)
  
  names(a)[10] #seleccionamos el valor 10
  a<-a[,-10] # quitamos la columna 10 #usa dplyr como ejercicio recuerda usar "-" y select
  
  
  names(a)<- c("variables", "BBVA","B. del Comercio", "BCP",
               "Pichincha","BIF","Scotiabank",
               "Citibank","Interbank","Mibanco",
               "GNB","Falabella","Santander","Ripley","Azteca","Cencosud","ICBC",
               "Total Empresas Financieras")
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
  i$Periodo= as.Date("2018-04-30")
  
#  i[is.na(i)]<-0
  
  # Guardando la data en carpeta "dataprocesada"
  
setwd("C:/Users/Jose/Documents/GitHub/Sector-Financiero-Peru/data/dataprocesada/Informacion Estadistica de Banca Multiple/Indicadores de las Empresas Bancarias/Indicadores Financieros")
  saveRDS(i,file="ab2018.RDS")
  
  ab2018<-i 
  #View(ab2018)
} # ABRIL 2018


{
  ############################################ MAYO 2018 ####################################################
  #///////////////////////////////////////////////////////////////////////////////////////////////////////////
  
setwd("C:/Users/Jose/Documents/GitHub/Sector-Financiero-Peru/data/raw data/Informacion Estadistica de Banca Multiple/Indicadores de las Empresas Bancarias/Indicadores Financieros/2018")
  
  a<-read_xlsx("B-2401-my2018.xls",skip = 5) #quitamos 5 espacios (título y 4 1ras filas)
  
  a<-a[complete.cases(a),] # solo elegimos filas completas (sin vacios)
  
  options(scipen=999) # para desactivar la nomenclatura cientifica de numeros
  #View(a)
  names(a)
  
  names(a)[10] #seleccionamos el valor 10
  a<-a[,-10] # quitamos la columna 10 #usa dplyr como ejercicio recuerda usar "-" y select
  
  
  names(a)<- c("variables", "BBVA","B. del Comercio", "BCP",
               "Pichincha","BIF","Scotiabank",
               "Citibank","Interbank","Mibanco",
               "GNB","Falabella","Santander","Ripley","Azteca","Cencosud","ICBC",
               "Total Empresas Financieras")
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
  i$Periodo= as.Date("2018-05-31")
  
#  i[is.na(i)]<-0
  
  # Guardando la data en carpeta "dataprocesada"
  
setwd("C:/Users/Jose/Documents/GitHub/Sector-Financiero-Peru/data/dataprocesada/Informacion Estadistica de Banca Multiple/Indicadores de las Empresas Bancarias/Indicadores Financieros")
  saveRDS(i,file="my2018.RDS")
  
  my2018<-i
  #View(my2018)
} # MAYO 2018


{
  ############################################ JUNIO 2018 ####################################################
  #///////////////////////////////////////////////////////////////////////////////////////////////////////////
  
setwd("C:/Users/Jose/Documents/GitHub/Sector-Financiero-Peru/data/raw data/Informacion Estadistica de Banca Multiple/Indicadores de las Empresas Bancarias/Indicadores Financieros/2018")
  
  
  a<-read_xlsx("B-2401-jn2018.xls",skip = 5) #quitamos 5 espacios (título y 4 1ras filas)
  
  a<-a[complete.cases(a),] # solo elegimos filas completas (sin vacios)
  
  options(scipen=999) # para desactivar la nomenclatura cientifica de numeros
  #View(a)
  names(a)
  
  names(a)[10] #seleccionamos el valor 10
  a<-a[,-10] # quitamos la columna 10 #usa dplyr como ejercicio recuerda usar "-" y select
  
  names(a)
  names(a)<- c("variables", "BBVA","B. del Comercio", "BCP",
               "Pichincha","BIF","Scotiabank",
               "Citibank","Interbank","Mibanco",
               "GNB","Falabella","Santander","Ripley","Azteca","Cencosud","ICBC",
               "Total Empresas Financieras")
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
  i$Periodo= as.Date("2018-06-30")
  
  
#  i[is.na(i)]<-0
  
  # Guardando la data en carpeta "dataprocesada"
  
setwd("C:/Users/Jose/Documents/GitHub/Sector-Financiero-Peru/data/dataprocesada/Informacion Estadistica de Banca Multiple/Indicadores de las Empresas Bancarias/Indicadores Financieros")
  saveRDS(i,file="jn2018.RDS")
  
  jn2018<-i 
  #View(jn2018)
} # JUNIO 2018


{
  ############################################ JULIO 2018 ####################################################
  #///////////////////////////////////////////////////////////////////////////////////////////////////////////
  
setwd("C:/Users/Jose/Documents/GitHub/Sector-Financiero-Peru/data/raw data/Informacion Estadistica de Banca Multiple/Indicadores de las Empresas Bancarias/Indicadores Financieros/2018")
  
  
  a<-read_xlsx("B-2401-jl2018.xls",skip = 5) #quitamos 5 espacios (título y 4 1ras filas)
  
  a<-a[complete.cases(a),] # solo elegimos filas completas (sin vacios)
  
  options(scipen=999) # para desactivar la nomenclatura cientifica de numeros
  #View(a)
  #names(a)
  
  names(a)[10] #seleccionamos el valor 10
  a<-a[,-10] # quitamos la columna 10 #usa dplyr como ejercicio recuerda usar "-" y select
  
  
  names(a)<- c("variables", "BBVA","B. del Comercio", "BCP",
               "Pichincha","BIF","Scotiabank",
               "Citibank","Interbank","Mibanco",
               "GNB","Falabella","Santander","Ripley","Azteca","Cencosud","ICBC",
               "Total Empresas Financieras")
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
  i$Periodo= as.Date("2018-07-31")
  
  
#  i[is.na(i)]<-0
  # Guardando la data en carpeta "dataprocesada"
  
setwd("C:/Users/Jose/Documents/GitHub/Sector-Financiero-Peru/data/dataprocesada/Informacion Estadistica de Banca Multiple/Indicadores de las Empresas Bancarias/Indicadores Financieros")
  saveRDS(i,file="jl2018.RDS")
  
  jl2018<-i
  #View(jl2018)
} # JULIO 2018 


{
  ############################################ AGOSTO 2018 ####################################################
  #///////////////////////////////////////////////////////////////////////////////////////////////////////////
  
setwd("C:/Users/Jose/Documents/GitHub/Sector-Financiero-Peru/data/raw data/Informacion Estadistica de Banca Multiple/Indicadores de las Empresas Bancarias/Indicadores Financieros/2018")
  
  
  
  a<-read_xlsx("B-2401-ag2018.xls",skip = 5) #quitamos 5 espacios (título y 4 1ras filas)
  
  a<-a[complete.cases(a),] # solo elegimos filas completas (sin vacios)
  
  options(scipen=999) # para desactivar la nomenclatura cientifica de numeros
  #View(a)
  names(a)
  
  names(a)[10] #seleccionamos el valor 10
  a<-a[,-10] # quitamos la columna 10 #usa dplyr como ejercicio recuerda usar "-" y select
  
  
  names(a)<- c("variables", "BBVA","B. del Comercio", "BCP",
               "Pichincha","BIF","Scotiabank",
               "Citibank","Interbank","Mibanco",
               "GNB","Falabella","Santander","Ripley","Azteca","Cencosud","ICBC",
               "Total Empresas Financieras")
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
  i$Periodo= as.Date("2018-08-31")
  
  
#  i[is.na(i)]<-0
  # Guardando la data en carpeta "dataprocesada"
  
setwd("C:/Users/Jose/Documents/GitHub/Sector-Financiero-Peru/data/dataprocesada/Informacion Estadistica de Banca Multiple/Indicadores de las Empresas Bancarias/Indicadores Financieros")
  saveRDS(i,file="ag2018.RDS")
  
  ag2018<-i 
  #View(ag2018)
  
} # AGOSTO 2018


{
  ############################################ SETIEMBRE 2018 ####################################################
  #///////////////////////////////////////////////////////////////////////////////////////////////////////////
  
setwd("C:/Users/Jose/Documents/GitHub/Sector-Financiero-Peru/data/raw data/Informacion Estadistica de Banca Multiple/Indicadores de las Empresas Bancarias/Indicadores Financieros/2018")
  
  
  a<-read_xlsx("B-2401-se2018.xls",skip = 5) #quitamos 5 espacios (título y 4 1ras filas)
  
  a<-a[complete.cases(a),] # solo elegimos filas completas (sin vacios)
  
  options(scipen=999) # para desactivar la nomenclatura cientifica de numeros
  #View(a)
  names(a)
  
  names(a)[10] #seleccionamos el valor 10
  a<-a[,-10] # quitamos la columna 10 #usa dplyr como ejercicio recuerda usar "-" y select
  
  
  names(a)<- c("variables", "BBVA","B. del Comercio", "BCP",
               "Pichincha","BIF","Scotiabank",
               "Citibank","Interbank","Mibanco",
               "GNB","Falabella","Santander","Ripley","Azteca","Cencosud","ICBC",
               "Total Empresas Financieras")
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
  i$Periodo= as.Date("2018-09-30")
  #View(se2018)
  
#  i[is.na(i)]<-0
  # Guardando la data en carpeta "dataprocesada"
  
setwd("C:/Users/Jose/Documents/GitHub/Sector-Financiero-Peru/data/dataprocesada/Informacion Estadistica de Banca Multiple/Indicadores de las Empresas Bancarias/Indicadores Financieros")
  saveRDS(i,file="se2018.RDS")
  
  se2018<-i
  #View(se2018)
  
  
} # SETIEMBRE 2018


{
  ############################################ OCTUBRE 2018 ####################################################
  #///////////////////////////////////////////////////////////////////////////////////////////////////////////
  
setwd("C:/Users/Jose/Documents/GitHub/Sector-Financiero-Peru/data/raw data/Informacion Estadistica de Banca Multiple/Indicadores de las Empresas Bancarias/Indicadores Financieros/2018")
  
  
  
  a<-read_xlsx("B-2401-oc2018.xls",skip = 5) #quitamos 5 espacios (título y 4 1ras filas)
  
  a<-a[complete.cases(a),] # solo elegimos filas completas (sin vacios)
  
  options(scipen=999) # para desactivar la nomenclatura cientifica de numeros
  #View(a)
  names(a)
  
  names(a)[10] #seleccionamos el valor 10
  a<-a[,-10] # quitamos la columna 10 #usa dplyr como ejercicio recuerda usar "-" y select
  
  
  names(a)<- c("variables", "BBVA","B. del Comercio", "BCP",
               "Pichincha","BIF","Scotiabank",
               "Citibank","Interbank","Mibanco",
               "GNB","Falabella","Santander","Ripley","Azteca","Cencosud","ICBC",
               "Total Empresas Financieras")
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
  i$Periodo= as.Date("2018-10-31")
  
  
#  i[is.na(i)]<-0
  # Guardando la data en carpeta "dataprocesada"
  
setwd("C:/Users/Jose/Documents/GitHub/Sector-Financiero-Peru/data/dataprocesada/Informacion Estadistica de Banca Multiple/Indicadores de las Empresas Bancarias/Indicadores Financieros")
  saveRDS(i,file="oc2018.RDS")
  
  oc2018<-i 
  #View(oc2018)
  
  
} # OCTUBRE 2018


{
  ############################################ NOVIEMBRE 2018 ####################################################
  #///////////////////////////////////////////////////////////////////////////////////////////////////////////
  
setwd("C:/Users/Jose/Documents/GitHub/Sector-Financiero-Peru/data/raw data/Informacion Estadistica de Banca Multiple/Indicadores de las Empresas Bancarias/Indicadores Financieros/2018")
  
  a<-read_xlsx("B-2401-no2018.xls",skip = 5) #quitamos 5 espacios (título y 4 1ras filas)
  
  a<-a[complete.cases(a),] # solo elegimos filas completas (sin vacios)
  
  options(scipen=999) # para desactivar la nomenclatura cientifica de numeros
  #View(a)
  names(a)
  
  names(a)[10] #seleccionamos el valor 10
  a<-a[,-10] # quitamos la columna 10 #usa dplyr como ejercicio recuerda usar "-" y select
  
  
  names(a)<- c("variables", "BBVA","B. del Comercio", "BCP",
               "Pichincha","BIF","Scotiabank",
               "Citibank","Interbank","Mibanco",
               "GNB","Falabella","Santander","Ripley","Azteca","Cencosud","ICBC",
               "Total Empresas Financieras")
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
  i$Periodo= as.Date("2018-11-30")
  
#  i[is.na(i)]<-0
  
  # Guardando la data en carpeta "dataprocesada"
  
setwd("C:/Users/Jose/Documents/GitHub/Sector-Financiero-Peru/data/dataprocesada/Informacion Estadistica de Banca Multiple/Indicadores de las Empresas Bancarias/Indicadores Financieros")
  saveRDS(i,file="no2018.RDS")
  
  no2018<-i
  #View(no2018
  
} # NOVIEMBRE 2018


{
  ############################################ DICIEMBRE 2018 ####################################################
  #///////////////////////////////////////////////////////////////////////////////////////////////////////////
  
setwd("C:/Users/Jose/Documents/GitHub/Sector-Financiero-Peru/data/raw data/Informacion Estadistica de Banca Multiple/Indicadores de las Empresas Bancarias/Indicadores Financieros/2018")
  
  
  a<-read_xlsx("B-2401-di2018.xls",skip = 5) #quitamos 5 espacios (título y 4 1ras filas)
  
  a<-a[complete.cases(a),] # solo elegimos filas completas (sin vacios)
  
  options(scipen=999) # para desactivar la nomenclatura cientifica de numeros
  #View(a)
  names(a)
  
  names(a)[10] #seleccionamos el valor 10
  a<-a[,-10] # quitamos la columna 10 #usa dplyr como ejercicio recuerda usar "-" y select
  
  
  names(a)<- c("variables", "BBVA","B. del Comercio", "BCP",
               "Pichincha","BIF","Scotiabank",
               "Citibank","Interbank","Mibanco",
               "GNB","Falabella","Santander","Ripley","Azteca","Cencosud","ICBC",
               "Total Empresas Financieras")
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
  i$Periodo= as.Date("2018-12-31")
  
  
#  i[is.na(i)]<-0
  # Guardando la data en carpeta "dataprocesada"
  
setwd("C:/Users/Jose/Documents/GitHub/Sector-Financiero-Peru/data/dataprocesada/Informacion Estadistica de Banca Multiple/Indicadores de las Empresas Bancarias/Indicadores Financieros")
  saveRDS(i,file="di2018.RDS")
  
  di2018<-i
  #View(di2018)
  
  
} # DICIEMBRE 2018



####################################################################################################################################################
############################################  2019 ############################################################################################
####################################################################################################################################################



{
  ############################################ ENERO 2019 ####################################################
  #///////////////////////////////////////////////////////////////////////////////////////////////////////////
  
setwd("C:/Users/Jose/Documents/GitHub/Sector-Financiero-Peru/data/raw data/Informacion Estadistica de Banca Multiple/Indicadores de las Empresas Bancarias/Indicadores Financieros/2019")
  
  a<-read_xlsx("B-2401-en2019.xls",skip = 5) #quitamos 5 espacios (título y 4 1ras filas)
  
  a<-a[complete.cases(a),] # solo elegimos filas completas (sin vacios)
  
  options(scipen=999) # para desactivar la nomenclatura cientifica de numeros
  #View(a)
  names(a)
  
  names(a)[10] #seleccionamos el valor 10
  a<-a[,-10] # quitamos la columna 10 #usa dplyr como ejercicio recuerda usar "-" y select
  
  
  names(a)<- c("variables", "BBVA","B. del Comercio", "BCP",
               "Pichincha","BIF","Scotiabank",
               "Citibank","Interbank","Mibanco",
               "GNB","Falabella","Santander","Ripley","Azteca","Cencosud","ICBC",
               "Total Empresas Financieras")
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
  i$Periodo= as.Date("2019-01-31")
  
  #i[is.na(i)] <- 0
  
  # Guardando la data en carpeta "dataprocesada"
  
setwd("C:/Users/Jose/Documents/GitHub/Sector-Financiero-Peru/data/dataprocesada/Informacion Estadistica de Banca Multiple/Indicadores de las Empresas Bancarias/Indicadores Financieros")
  saveRDS(i,file="en2019.RDS")
  
  en2019<-i
  
  
} # ENERO 2019


{
  ############################################ FEBRERO 2019 ####################################################
  #///////////////////////////////////////////////////////////////////////////////////////////////////////////
setwd("C:/Users/Jose/Documents/GitHub/Sector-Financiero-Peru/data/raw data/Informacion Estadistica de Banca Multiple/Indicadores de las Empresas Bancarias/Indicadores Financieros/2019")
  
  
  a<-read_xlsx("B-2401-fe2019.xls",skip = 5) #quitamos 5 espacios (título y 4 1ras filas)
  
  a<-a[complete.cases(a),] # solo elegimos filas completas (sin vacios)
  
  options(scipen=999) # para desactivar la nomenclatura cientifica de numeros
  #View(a)
  names(a)
  
  names(a)[10] #seleccionamos el valor 10
  a<-a[,-10] # quitamos la columna 10 #usa dplyr como ejercicio recuerda usar "-" y select
  
  
  names(a)<- c("variables", "BBVA","B. del Comercio", "BCP",
               "Pichincha","BIF","Scotiabank",
               "Citibank","Interbank","Mibanco",
               "GNB","Falabella","Santander","Ripley","Azteca","Cencosud","ICBC",
               "Total Empresas Financieras")
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
  i$Periodo= as.Date("2019-02-28")
  
#  i[is.na(i)]<-0
  
  # Guardando la data en carpeta "dataprocesada"
  
setwd("C:/Users/Jose/Documents/GitHub/Sector-Financiero-Peru/data/dataprocesada/Informacion Estadistica de Banca Multiple/Indicadores de las Empresas Bancarias/Indicadores Financieros")
  saveRDS(i,file="fe2019.RDS")
  
  fe2019<-i
  
} # FEBRERO 2019


{
  ############################################ MARZO 2019 ####################################################
  #///////////////////////////////////////////////////////////////////////////////////////////////////////////
  
setwd("C:/Users/Jose/Documents/GitHub/Sector-Financiero-Peru/data/raw data/Informacion Estadistica de Banca Multiple/Indicadores de las Empresas Bancarias/Indicadores Financieros/2019")
  
  
  a<-read_xlsx("B-2401-ma2019.xls",skip = 5) #quitamos 5 espacios (título y 4 1ras filas)
  
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
               "Total Empresas Financieras")
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
  i$Periodo= as.Date("2019-03-31")
  
  
#  i[is.na(i)]<-0
  # Guardando la data en carpeta "dataprocesada"
  
setwd("C:/Users/Jose/Documents/GitHub/Sector-Financiero-Peru/data/dataprocesada/Informacion Estadistica de Banca Multiple/Indicadores de las Empresas Bancarias/Indicadores Financieros")
  saveRDS(i,file="ma2019.RDS")
  
  ma2019<-i 
  
} # MARZO 2019


{
  ############################################ ABRIL 2019 ####################################################
  #///////////////////////////////////////////////////////////////////////////////////////////////////////////
  
setwd("C:/Users/Jose/Documents/GitHub/Sector-Financiero-Peru/data/raw data/Informacion Estadistica de Banca Multiple/Indicadores de las Empresas Bancarias/Indicadores Financieros/2019")
  
  
  
  a<-read_xlsx("B-2401-ab2019.xls",skip = 5) #quitamos 5 espacios (título y 4 1ras filas)
  
  a<-a[complete.cases(a),] # solo elegimos filas completas (sin vacios)
  
  options(scipen=999) # para desactivar la nomenclatura cientifica de numeros
  #View(a)
  #names(a)
  
  names(a)[10] #seleccionamos el valor 10
  a<-a[,-10] # quitamos la columna 10 #usa dplyr como ejercicio recuerda usar "-" y select
  
  
  names(a)<- c("variables", "BBVA","B. del Comercio", "BCP",
               "Pichincha","BIF","Scotiabank",
               "Citibank","Interbank","Mibanco",
               "GNB","Falabella","Santander","Ripley","Azteca","ICBC",
               "Total Empresas Financieras")
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
  i$Periodo= as.Date("2019-04-30")
  
#  i[is.na(i)]<-0
  
  # Guardando la data en carpeta "dataprocesada"
  
setwd("C:/Users/Jose/Documents/GitHub/Sector-Financiero-Peru/data/dataprocesada/Informacion Estadistica de Banca Multiple/Indicadores de las Empresas Bancarias/Indicadores Financieros")
  saveRDS(i,file="ab2019.RDS")
  
  ab2019<-i 
  #View(ab2019)
} # ABRIL 2019


{
  ############################################ MAYO 2019 ####################################################
  #///////////////////////////////////////////////////////////////////////////////////////////////////////////
  
setwd("C:/Users/Jose/Documents/GitHub/Sector-Financiero-Peru/data/raw data/Informacion Estadistica de Banca Multiple/Indicadores de las Empresas Bancarias/Indicadores Financieros/2019")
  
  a<-read_xlsx("B-2401-my2019.xls",skip = 5) #quitamos 5 espacios (título y 4 1ras filas)
  
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
               "Total Empresas Financieras")
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
  i$Periodo= as.Date("2019-05-31")
  
#  i[is.na(i)]<-0
  
  # Guardando la data en carpeta "dataprocesada"
  
setwd("C:/Users/Jose/Documents/GitHub/Sector-Financiero-Peru/data/dataprocesada/Informacion Estadistica de Banca Multiple/Indicadores de las Empresas Bancarias/Indicadores Financieros")
  saveRDS(i,file="my2019.RDS")
  
  my2019<-i
  #View(my2019)
} # MAYO 2019


{
  ############################################ JUNIO 2019 ####################################################
  #///////////////////////////////////////////////////////////////////////////////////////////////////////////
  
setwd("C:/Users/Jose/Documents/GitHub/Sector-Financiero-Peru/data/raw data/Informacion Estadistica de Banca Multiple/Indicadores de las Empresas Bancarias/Indicadores Financieros/2019")
  
  
  a<-read_xlsx("B-2401-jn2019.xls",skip = 5) #quitamos 5 espacios (título y 4 1ras filas)
  
  a<-a[complete.cases(a),] # solo elegimos filas completas (sin vacios)
  
  options(scipen=999) # para desactivar la nomenclatura cientifica de numeros
  #View(a)
  names(a)
  
  names(a)[10] #seleccionamos el valor 10
  a<-a[,-10] # quitamos la columna 10 #usa dplyr como ejercicio recuerda usar "-" y select
  
  names(a)
  names(a)<- c("variables", "BBVA","B. del Comercio", "BCP",
               "Pichincha","BIF","Scotiabank",
               "Citibank","Interbank","Mibanco",
               "GNB","Falabella","Santander","Ripley","Azteca","ICBC",
               "Total Empresas Financieras")
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
  i$Periodo= as.Date("2019-06-30")
  
  
#  i[is.na(i)]<-0
  
  # Guardando la data en carpeta "dataprocesada"
  
setwd("C:/Users/Jose/Documents/GitHub/Sector-Financiero-Peru/data/dataprocesada/Informacion Estadistica de Banca Multiple/Indicadores de las Empresas Bancarias/Indicadores Financieros")
  saveRDS(i,file="jn2019.RDS")
  
  jn2019<-i 
  #View(jn2019)
} # JUNIO 2019


{
  ############################################ JULIO 2019 ####################################################
  #///////////////////////////////////////////////////////////////////////////////////////////////////////////
  
setwd("C:/Users/Jose/Documents/GitHub/Sector-Financiero-Peru/data/raw data/Informacion Estadistica de Banca Multiple/Indicadores de las Empresas Bancarias/Indicadores Financieros/2019")
  
  
  a<-read_xlsx("B-2401-jl2019.xls",skip = 5) #quitamos 5 espacios (título y 4 1ras filas)
  
  a<-a[complete.cases(a),] # solo elegimos filas completas (sin vacios)
  
  options(scipen=999) # para desactivar la nomenclatura cientifica de numeros
  #View(a)
  #names(a)
  
  names(a)[10] #seleccionamos el valor 10
  a<-a[,-10] # quitamos la columna 10 #usa dplyr como ejercicio recuerda usar "-" y select
  
  
  names(a)<- c("variables", "BBVA","B. del Comercio", "BCP",
               "Pichincha","BIF","Scotiabank",
               "Citibank","Interbank","Mibanco",
               "GNB","Falabella","Santander","Ripley","Azteca","ICBC",
               "Total Empresas Financieras")
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
  i$Periodo= as.Date("2019-07-31")
  
  
#  i[is.na(i)]<-0
  # Guardando la data en carpeta "dataprocesada"
  
setwd("C:/Users/Jose/Documents/GitHub/Sector-Financiero-Peru/data/dataprocesada/Informacion Estadistica de Banca Multiple/Indicadores de las Empresas Bancarias/Indicadores Financieros")
  saveRDS(i,file="jl2019.RDS")
  
  jl2019<-i
  #View(jl2019)
} # JULIO 2019 


{
  ############################################ AGOSTO 2019 ####################################################
  #///////////////////////////////////////////////////////////////////////////////////////////////////////////
  
setwd("C:/Users/Jose/Documents/GitHub/Sector-Financiero-Peru/data/raw data/Informacion Estadistica de Banca Multiple/Indicadores de las Empresas Bancarias/Indicadores Financieros/2019")
  
  
  
  a<-read_xlsx("B-2401-ag2019.xls",skip = 5) #quitamos 5 espacios (título y 4 1ras filas)
  
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
               "Total Empresas Financieras")
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
  i$Periodo= as.Date("2019-08-31")
  
  
#  i[is.na(i)]<-0
  # Guardando la data en carpeta "dataprocesada"
  
setwd("C:/Users/Jose/Documents/GitHub/Sector-Financiero-Peru/data/dataprocesada/Informacion Estadistica de Banca Multiple/Indicadores de las Empresas Bancarias/Indicadores Financieros")
  saveRDS(i,file="ag2019.RDS")
  
  ag2019<-i 
  #View(ag2019)
  
} # AGOSTO 2019


{
  ############################################ SETIEMBRE 2019 ####################################################
  #///////////////////////////////////////////////////////////////////////////////////////////////////////////
  
setwd("C:/Users/Jose/Documents/GitHub/Sector-Financiero-Peru/data/raw data/Informacion Estadistica de Banca Multiple/Indicadores de las Empresas Bancarias/Indicadores Financieros/2019")
  
  
  a<-read_xlsx("B-2401-se2019.xls",skip = 5) #quitamos 5 espacios (título y 4 1ras filas)
  
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
               "Total Empresas Financieras")
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
  i$Periodo= as.Date("2019-09-30")
  #View(se2019)
  
#  i[is.na(i)]<-0
  # Guardando la data en carpeta "dataprocesada"
  
setwd("C:/Users/Jose/Documents/GitHub/Sector-Financiero-Peru/data/dataprocesada/Informacion Estadistica de Banca Multiple/Indicadores de las Empresas Bancarias/Indicadores Financieros")
  saveRDS(i,file="se2019.RDS")
  
  se2019<-i
  #View(se2019)
  
  
} # SETIEMBRE 2019


{
  ############################################ OCTUBRE 2019 ####################################################
  #///////////////////////////////////////////////////////////////////////////////////////////////////////////
  
setwd("C:/Users/Jose/Documents/GitHub/Sector-Financiero-Peru/data/raw data/Informacion Estadistica de Banca Multiple/Indicadores de las Empresas Bancarias/Indicadores Financieros/2019")
  
  
  
  a<-read_xlsx("B-2401-oc2019.xls",skip = 5) #quitamos 5 espacios (título y 4 1ras filas)
  
  a<-a[complete.cases(a),] # solo elegimos filas completas (sin vacios)
  
  options(scipen=999) # para desactivar la nomenclatura cientifica de numeros
  #View(a)
  names(a)
  
  names(a)[10] #seleccionamos el valor 10
  a<-a[,-10] # quitamos la columna 10 #usa dplyr como ejercicio recuerda usar "-" y select
  
  
  names(a)<- c("variables", "BBVA","B. del Comercio", "BCP",
               "Pichincha","BIF","Scotiabank",
               "Citibank","Interbank","Mibanco",
               "GNB","Falabella","Santander","Ripley","Azteca","Cencosud","ICBC",
               "Total Empresas Financieras")
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
  i$Periodo= as.Date("2019-10-31")
  
  
#  i[is.na(i)]<-0
  # Guardando la data en carpeta "dataprocesada"
  
setwd("C:/Users/Jose/Documents/GitHub/Sector-Financiero-Peru/data/dataprocesada/Informacion Estadistica de Banca Multiple/Indicadores de las Empresas Bancarias/Indicadores Financieros")
  saveRDS(i,file="oc2019.RDS")
  
  oc2019<-i 
  #View(oc2019)
  
  
} # OCTUBRE 2019


{
  ############################################ NOVIEMBRE 2019 ####################################################
  #///////////////////////////////////////////////////////////////////////////////////////////////////////////
  
setwd("C:/Users/Jose/Documents/GitHub/Sector-Financiero-Peru/data/raw data/Informacion Estadistica de Banca Multiple/Indicadores de las Empresas Bancarias/Indicadores Financieros/2019")
  
  a<-read_xlsx("B-2401-no2019.xls",skip = 5) #quitamos 5 espacios (título y 4 1ras filas)
  
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
               "Total Empresas Financieras")
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
  i$Periodo= as.Date("2019-11-30")
  
#  i[is.na(i)]<-0
  
  # Guardando la data en carpeta "dataprocesada"
  
setwd("C:/Users/Jose/Documents/GitHub/Sector-Financiero-Peru/data/dataprocesada/Informacion Estadistica de Banca Multiple/Indicadores de las Empresas Bancarias/Indicadores Financieros")
  saveRDS(i,file="no2019.RDS")
  
  no2019<-i
  #View(no2019)
  
} # NOVIEMBRE 2019


{
  ############################################ DICIEMBRE 2019 ####################################################
  #///////////////////////////////////////////////////////////////////////////////////////////////////////////
  
setwd("C:/Users/Jose/Documents/GitHub/Sector-Financiero-Peru/data/raw data/Informacion Estadistica de Banca Multiple/Indicadores de las Empresas Bancarias/Indicadores Financieros/2019")
  
  
  a<-read_xlsx("B-2401-di2019.xls",skip = 5) #quitamos 5 espacios (título y 4 1ras filas)
  
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
               "Total Empresas Financieras")
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
  i$Periodo= as.Date("2019-12-31")
  
  
#  i[is.na(i)]<-0
  # Guardando la data en carpeta "dataprocesada"
  
setwd("C:/Users/Jose/Documents/GitHub/Sector-Financiero-Peru/data/dataprocesada/Informacion Estadistica de Banca Multiple/Indicadores de las Empresas Bancarias/Indicadores Financieros")
  saveRDS(i,file="di2019.RDS")
  
  di2019<-i
  #View(di2019)
  
  
} # DICIEMBRE 2019


#View(en2019[3,17])
#View(fe2019[3,17])
#View(ma2019[3,17])
#View(ab2019[3,17])
#View(my2019[3,17])
#View(jn2019[3,17])
#View(jl2019[3,17])
#View(ag2019[3,17])
#View(se2019[3,17])
#View(oc2019[3,17])
#View(no2019[3,17])
#View(di2019[3,17])

####################################################################################################################################################
############################################  2020 ############################################################################################
####################################################################################################################################################



{
  ############################################ ENERO 2020 ####################################################
  #///////////////////////////////////////////////////////////////////////////////////////////////////////////
  
  setwd("C:/Users/Jose/Desktop/Universidad/Manos a la Data/Investigacion/data/raw data/Indicadores_Financieros/2020")
  
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
               "Total Empresas Financieras")
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
  
  #i[is.na(i)] <- 0
  
  # Guardando la data en carpeta "dataprocesada"
  
setwd("C:/Users/Jose/Documents/GitHub/Sector-Financiero-Peru/data/dataprocesada/Informacion Estadistica de Banca Multiple/Indicadores de las Empresas Bancarias/Indicadores Financieros")
  saveRDS(i,file="en2020.RDS")
  
  en2020<-i
  
  
} # ENERO 2020


{
  ############################################ FEBRERO 2020 ####################################################
  #///////////////////////////////////////////////////////////////////////////////////////////////////////////
  setwd("C:/Users/Jose/Desktop/Universidad/Manos a la Data/Investigacion/data/raw data/Indicadores_Financieros/2020")
  
  
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
               "Total Empresas Financieras")
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
  
#  i[is.na(i)]<-0
  
  # Guardando la data en carpeta "dataprocesada"
  
setwd("C:/Users/Jose/Documents/GitHub/Sector-Financiero-Peru/data/dataprocesada/Informacion Estadistica de Banca Multiple/Indicadores de las Empresas Bancarias/Indicadores Financieros")
  saveRDS(i,file="fe2020.RDS")
  
  fe2020<-i
  
} # FEBRERO 2020


{
  ############################################ MARZO 2020 ####################################################
  #///////////////////////////////////////////////////////////////////////////////////////////////////////////
  
  setwd("C:/Users/Jose/Desktop/Universidad/Manos a la Data/Investigacion/data/raw data/Indicadores_Financieros/2020")
  
  
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
               "Total Empresas Financieras")
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
  
  
#  i[is.na(i)]<-0
  # Guardando la data en carpeta "dataprocesada"
  
setwd("C:/Users/Jose/Documents/GitHub/Sector-Financiero-Peru/data/dataprocesada/Informacion Estadistica de Banca Multiple/Indicadores de las Empresas Bancarias/Indicadores Financieros")
  saveRDS(i,file="ma2020.RDS")
  
  ma2020<-i 
  
} # MARZO 2020


{
  ############################################ ABRIL 2020 ####################################################
  #///////////////////////////////////////////////////////////////////////////////////////////////////////////
  
  setwd("C:/Users/Jose/Desktop/Universidad/Manos a la Data/Investigacion/data/raw data/Indicadores_Financieros/2020")
  
  
  
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
               "Total Empresas Financieras")
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
  
#  i[is.na(i)]<-0
  
  # Guardando la data en carpeta "dataprocesada"
  
setwd("C:/Users/Jose/Documents/GitHub/Sector-Financiero-Peru/data/dataprocesada/Informacion Estadistica de Banca Multiple/Indicadores de las Empresas Bancarias/Indicadores Financieros")
  saveRDS(i,file="ab2020.RDS")
  
  ab2020<-i 
  #View(ab2020)
} # ABRIL 2020


{
  ############################################ MAYO 2020 ####################################################
  #///////////////////////////////////////////////////////////////////////////////////////////////////////////
  
  setwd("C:/Users/Jose/Desktop/Universidad/Manos a la Data/Investigacion/data/raw data/Indicadores_Financieros/2020")
  
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
               "Total Empresas Financieras")
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
  
#  i[is.na(i)]<-0
  
  # Guardando la data en carpeta "dataprocesada"
  
setwd("C:/Users/Jose/Documents/GitHub/Sector-Financiero-Peru/data/dataprocesada/Informacion Estadistica de Banca Multiple/Indicadores de las Empresas Bancarias/Indicadores Financieros")
  saveRDS(i,file="my2020.RDS")
  
  my2020<-i
  #View(my2020)
} # MAYO 2020


{
  ############################################ JUNIO 2020 ####################################################
  #///////////////////////////////////////////////////////////////////////////////////////////////////////////
  
  setwd("C:/Users/Jose/Desktop/Universidad/Manos a la Data/Investigacion/data/raw data/Indicadores_Financieros/2020")
  
  
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
               "Total Empresas Financieras")
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
  
  
#  i[is.na(i)]<-0
  
  # Guardando la data en carpeta "dataprocesada"
  
setwd("C:/Users/Jose/Documents/GitHub/Sector-Financiero-Peru/data/dataprocesada/Informacion Estadistica de Banca Multiple/Indicadores de las Empresas Bancarias/Indicadores Financieros")
  saveRDS(i,file="jn2020.RDS")
  
  jn2020<-i 
  #View(jn2020)
} # JUNIO 2020


{
  ############################################ JULIO 2020 ####################################################
  #///////////////////////////////////////////////////////////////////////////////////////////////////////////
  
  setwd("C:/Users/Jose/Desktop/Universidad/Manos a la Data/Investigacion/data/raw data/Indicadores_Financieros/2020")
  
  
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
               "China","Total Empresas Financieras")
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
  
  
#  i[is.na(i)]<-0
  # Guardando la data en carpeta "dataprocesada"
  
setwd("C:/Users/Jose/Documents/GitHub/Sector-Financiero-Peru/data/dataprocesada/Informacion Estadistica de Banca Multiple/Indicadores de las Empresas Bancarias/Indicadores Financieros")
  saveRDS(i,file="jl2020.RDS")
  
  jl2020<-i
  #View(jl2020)
} # JULIO 2020


{
  ############################################ AGOSTO 2020 ####################################################
  #///////////////////////////////////////////////////////////////////////////////////////////////////////////
  
  setwd("C:/Users/Jose/Desktop/Universidad/Manos a la Data/Investigacion/data/raw data/Indicadores_Financieros/2020")
  
  
  
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
              "China","Total Empresas Financieras")
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
  
  
#  i[is.na(i)]<-0
  # Guardando la data en carpeta "dataprocesada"
  
setwd("C:/Users/Jose/Documents/GitHub/Sector-Financiero-Peru/data/dataprocesada/Informacion Estadistica de Banca Multiple/Indicadores de las Empresas Bancarias/Indicadores Financieros")
  saveRDS(i,file="ag2020.RDS")
  
  ag2020<-i 
  #View(ag2020)
  
} # AGOSTO 2020


#View(en2020[3,17])
#View(fe2020[3,17])
#View(ma2020[3,17])
#View(ab2020[3,17])
#View(my2020[3,17])
#View(jn2020[3,17])
#View(jl2020[3,17])
#View(ag2020[3,17])





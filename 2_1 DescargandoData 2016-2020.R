#############################################################################################################

#####                                      DECARGANDO DATA ####

#                              DESCARGANDO INDICADORES FINANCIEROS


##############################################      #########################################################
##############################################      #########################################################
############################################## 2016 #########################################################
##############################################      #########################################################
##############################################      #########################################################

setwd("C:/Users/Jose/Documents/GitHub/Sector-Financiero-Peru/data/raw data/Informacion Estadistica de Banca Multiple/Indicadores de las Empresas Bancarias/Indicadores Financieros/2016") 
data_2016<- readLines(n=12)
https://intranet2.sbs.gob.pe/estadistica/financiera/2016/Diciembre/B-2401-di2016.XLS
https://intranet2.sbs.gob.pe/estadistica/financiera/2016/Noviembre/B-2401-no2016.XLS
https://intranet2.sbs.gob.pe/estadistica/financiera/2016/Octubre/B-2401-oc2016.XLS
http://intranet2.sbs.gob.pe/estadistica/financiera/2016/Setiembre/B-2401-se2016.XLS
https://intranet2.sbs.gob.pe/estadistica/financiera/2016/Agosto/B-2401-ag2016.XLS
https://intranet2.sbs.gob.pe/estadistica/financiera/2016/Julio/B-2401-jl2016.XLS
https://intranet2.sbs.gob.pe/estadistica/financiera/2016/Junio/B-2401-jn2016.XLS
https://intranet2.sbs.gob.pe/estadistica/financiera/2016/Mayo/B-2401-my2016.XLS
https://intranet2.sbs.gob.pe/estadistica/financiera/2016/Abril/B-2401-ab2016.XLS
https://intranet2.sbs.gob.pe/estadistica/financiera/2016/Marzo/B-2401-ma2016.XLS
https://intranet2.sbs.gob.pe/estadistica/financiera/2016/Febrero/B-2401-fe2016.XLS
https://intranet2.sbs.gob.pe/estadistica/financiera/2016/Enero/B-2401-en2016.XLS

# WB es necesario, leer:
#http://r.789695.n4.nabble.com/Download-xls-file-from-internet-td2315629.html
for (i in data_2016)
{
  destfile=strsplit(i,split="/")
  if (!file.exists(destfile[[1]][8])) {
    download.file(i,destfile[[1]][8],mode="wb")
  }
  else
    print("El archivo esta descargado")  
}


##############################################      #########################################################
##############################################      #########################################################
############################################## 2017 #########################################################
##############################################      #########################################################
##############################################      #########################################################


setwd("C:/Users/Jose/Documents/GitHub/Sector-Financiero-Peru/data/raw data/Informacion Estadistica de Banca Multiple/Indicadores de las Empresas Bancarias/Indicadores Financieros/2017") 

data_2017<- readLines(n=12)
https://intranet2.sbs.gob.pe/estadistica/financiera/2017/Diciembre/B-2401-di2017.XLS
https://intranet2.sbs.gob.pe/estadistica/financiera/2017/Noviembre/B-2401-no2017.XLS
https://intranet2.sbs.gob.pe/estadistica/financiera/2017/Octubre/B-2401-oc2017.XLS
https://intranet2.sbs.gob.pe/estadistica/financiera/2017/Setiembre/B-2401-se2017.XLS
https://intranet2.sbs.gob.pe/estadistica/financiera/2017/Agosto/B-2401-ag2017.XLS
https://intranet2.sbs.gob.pe/estadistica/financiera/2017/Julio/B-2401-jl2017.XLS
https://intranet2.sbs.gob.pe/estadistica/financiera/2017/Junio/B-2401-jn2017.XLS
https://intranet2.sbs.gob.pe/estadistica/financiera/2017/Mayo/B-2401-my2017.XLS
https://intranet2.sbs.gob.pe/estadistica/financiera/2017/Abril/B-2401-ab2017.XLS
https://intranet2.sbs.gob.pe/estadistica/financiera/2017/Marzo/B-2401-ma2017.XLS
https://intranet2.sbs.gob.pe/estadistica/financiera/2017/Febrero/B-2401-fe2017.XLS
https://intranet2.sbs.gob.pe/estadistica/financiera/2017/Enero/B-2401-en2017.XLS


for (i in data_2017)
{
  destfile=strsplit(i,split="/")
  if (!file.exists(destfile[[1]][8])) {
    download.file(i,destfile[[1]][8],mode="wb")# WB es necesario, leer:
    #http://r.789695.n4.nabble.com/Download-xls-file-from-internet-td2315629.html
  }
  else
    print("El archivo esta descargado")  
}

##############################################      #########################################################
##############################################      #########################################################
############################################## 2018 #########################################################
##############################################      #########################################################
##############################################      #########################################################
setwd("C:/Users/Jose/Documents/GitHub/Sector-Financiero-Peru/data/raw data/Informacion Estadistica de Banca Multiple/Indicadores de las Empresas Bancarias/Indicadores Financieros/2018") 

data_2018<- readLines(n=12)
https://intranet2.sbs.gob.pe/estadistica/financiera/2018/Diciembre/B-2401-di2018.XLS
https://intranet2.sbs.gob.pe/estadistica/financiera/2018/Noviembre/B-2401-no2018.XLS
https://intranet2.sbs.gob.pe/estadistica/financiera/2018/Octubre/B-2401-oc2018.XLS
https://intranet2.sbs.gob.pe/estadistica/financiera/2018/Setiembre/B-2401-se2018.XLS
https://intranet2.sbs.gob.pe/estadistica/financiera/2018/Agosto/B-2401-ag2018.XLS
https://intranet2.sbs.gob.pe/estadistica/financiera/2018/Julio/B-2401-jl2018.XLS
https://intranet2.sbs.gob.pe/estadistica/financiera/2018/Junio/B-2401-jn2018.XLS
https://intranet2.sbs.gob.pe/estadistica/financiera/2018/Mayo/B-2401-my2018.XLS
https://intranet2.sbs.gob.pe/estadistica/financiera/2018/Abril/B-2401-ab2018.XLS
https://intranet2.sbs.gob.pe/estadistica/financiera/2018/Marzo/B-2401-ma2018.XLS
https://intranet2.sbs.gob.pe/estadistica/financiera/2018/Febrero/B-2401-fe2018.XLS
https://intranet2.sbs.gob.pe/estadistica/financiera/2018/Enero/B-2401-en2018.XLS



for (i in data_2018)
{
  destfile=strsplit(i,split="/")
  if (!file.exists(destfile[[1]][8])) {
    download.file(i,destfile[[1]][8],mode="wb")
  }
  else
    print("El archivo esta descargado")  
}


##############################################      #########################################################
##############################################      #########################################################
############################################## 2019 #########################################################
##############################################      #########################################################
##############################################      #########################################################
setwd("C:/Users/Jose/Documents/GitHub/Sector-Financiero-Peru/data/raw data/Informacion Estadistica de Banca Multiple/Indicadores de las Empresas Bancarias/Indicadores Financieros/2019") 

data_2019<- readLines(n=12)
https://intranet2.sbs.gob.pe/estadistica/financiera/2019/Diciembre/B-2401-di2019.XLS
https://intranet2.sbs.gob.pe/estadistica/financiera/2019/Noviembre/B-2401-no2019.XLS
https://intranet2.sbs.gob.pe/estadistica/financiera/2019/Octubre/B-2401-oc2019.XLS
https://intranet2.sbs.gob.pe/estadistica/financiera/2019/Setiembre/B-2401-se2019.XLS
https://intranet2.sbs.gob.pe/estadistica/financiera/2019/Agosto/B-2401-ag2019.XLS
https://intranet2.sbs.gob.pe/estadistica/financiera/2019/Julio/B-2401-jl2019.XLS
https://intranet2.sbs.gob.pe/estadistica/financiera/2019/Junio/B-2401-jn2019.XLS
https://intranet2.sbs.gob.pe/estadistica/financiera/2019/Mayo/B-2401-my2019.XLS
https://intranet2.sbs.gob.pe/estadistica/financiera/2019/Abril/B-2401-ab2019.XLS
https://intranet2.sbs.gob.pe/estadistica/financiera/2019/Marzo/B-2401-ma2019.XLS
https://intranet2.sbs.gob.pe/estadistica/financiera/2019/Febrero/B-2401-fe2019.XLS
https://intranet2.sbs.gob.pe/estadistica/financiera/2019/Enero/B-2401-en2019.XLS

data_2019
destfile
for (i in data_2019)
{
  destfile=strsplit(i,split="/")
  if (!file.exists(destfile[[1]][8])) {
    download.file(i,destfile[[1]][8],mode="wb")
  }
  else
    print("El archivo esta descargado")  
}    

##############################################      #########################################################
##############################################      #########################################################
############################################## 2020 #########################################################
##############################################      #########################################################
##############################################      #########################################################
setwd("C:/Users/Jose/Documents/GitHub/Sector-Financiero-Peru/data/raw data/Informacion Estadistica de Banca Multiple/Indicadores de las Empresas Bancarias/Indicadores Financieros/2020") 

data_2020<- readLines(n=12)
https://intranet2.sbs.gob.pe/estadistica/financiera/2020/Diciembre/B-2401-di2020.XLS
https://intranet2.sbs.gob.pe/estadistica/financiera/2020/Noviembre/B-2401-no2020.XLS
https://intranet2.sbs.gob.pe/estadistica/financiera/2020/Octubre/B-2401-oc2020.XLS
https://intranet2.sbs.gob.pe/estadistica/financiera/2020/Setiembre/B-2401-se2020.XLS
https://intranet2.sbs.gob.pe/estadistica/financiera/2020/Agosto/B-2401-ag2020.XLS
https://intranet2.sbs.gob.pe/estadistica/financiera/2020/Julio/B-2401-jl2020.XLS
https://intranet2.sbs.gob.pe/estadistica/financiera/2020/Junio/B-2401-jn2020.XLS
https://intranet2.sbs.gob.pe/estadistica/financiera/2020/Mayo/B-2401-my2020.XLS
https://intranet2.sbs.gob.pe/estadistica/financiera/2020/Abril/B-2401-ab2020.XLS
https://intranet2.sbs.gob.pe/estadistica/financiera/2020/Marzo/B-2401-ma2020.XLS
https://intranet2.sbs.gob.pe/estadistica/financiera/2020/Febrero/B-2401-fe2020.XLS
https://intranet2.sbs.gob.pe/estadistica/financiera/2020/Enero/B-2401-en2020.XLS


for (i in data_2020)
{
  destfile=strsplit(i,split="/")
  if (!file.exists(destfile[[1]][8])) {
    download.file(i,destfile[[1]][8],mode="wb")
  }
  else
    print("El archivo esta descargado")  
} 




#*********************************************************************************************************************************
#*********************************************************************************************************************************
#*********************************************************************************************************************************
#*********************************************************************************************************************************
#*********************************************************************************************************************************
#*********************************************************************************************************************************
#*********************************************************************************************************************************

# DESCARGANDO BALANCE GENERAL
subDir1 <- "data"
subDir2 <- "Balance_General"
dir.create(file.path(mainDir, subDir1), showWarnings = T)
dir.create(file.path(subDir1, subDir2), showWarnings = T)


#CAMBIANDO EL wd.
mainDir <- "C:/Users/Jose/Desktop/Universidad/Manos a la Data/Investigacion/data/Balance_General"

# CREANDO CARPETAS 2016 al 2020
subfolder_names <- as.character(c(2016:2020)) 
for (j in 1:length(subfolder_names)){
  dir.create(file.path(mainDir, subfolder_names[j]), showWarnings = T)
}




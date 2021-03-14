
# CREANDO CARPETAS 2010 al 2020 PARA EL raw data
mainDir <- "C:/Users/Jose/Documents/GitHub/Sector-Financiero-Peru/data/raw data/Indicadores_Financieros"

subfolder_names <- as.character(c(2010:2020)) 
for (j in 1:length(subfolder_names)){
  dir.create(file.path(mainDir, subfolder_names[j]), showWarnings = T)
}


# CREANDO CARPETAS 2010 al 2020 PARA LA data procesada
mainDir <- "C:/Users/Jose/Documents/GitHub/Sector-Financiero-Peru/data/dataprocesada/Indicadores_Financieros"

subfolder_names <- as.character(c(2010:2020)) 
for (j in 1:length(subfolder_names)){
  dir.create(file.path(mainDir, subfolder_names[j]), showWarnings = T)
}


{
##############################################      #########################################################
##############################################      #########################################################
############################################## 2010 #########################################################
##############################################      #########################################################
##############################################      #########################################################


setwd("C:/Users/Jose/Documents/GitHub/Sector-Financiero-Peru/data/raw data/Indicadores_Financieros/2010") 
data_2010<- readLines(n=12)
https://intranet2.sbs.gob.pe/estadistica/financiera/2010/Diciembre/B-2401-di2010.XLS
https://intranet2.sbs.gob.pe/estadistica/financiera/2010/Noviembre/B-2401-no2010.XLS
https://intranet2.sbs.gob.pe/estadistica/financiera/2010/Octubre/B-2401-oc2010.XLS
http://intranet2.sbs.gob.pe/estadistica/financiera/2010/Setiembre/B-2401-se2010.XLS
https://intranet2.sbs.gob.pe/estadistica/financiera/2010/Agosto/B-2401-ag2010.XLS
https://intranet2.sbs.gob.pe/estadistica/financiera/2010/Julio/B-2401-jl2010.XLS
https://intranet2.sbs.gob.pe/estadistica/financiera/2010/Junio/B-2401-jn2010.XLS
https://intranet2.sbs.gob.pe/estadistica/financiera/2010/Mayo/B-2401-my2010.XLS
https://intranet2.sbs.gob.pe/estadistica/financiera/2010/Abril/B-2401-ab2010.XLS
https://intranet2.sbs.gob.pe/estadistica/financiera/2010/Marzo/B-2401-ma2010.XLS
https://intranet2.sbs.gob.pe/estadistica/financiera/2010/Febrero/B-2401-fe2010.XLS
https://intranet2.sbs.gob.pe/estadistica/financiera/2010/Enero/B-2401-en2010.XLS

for (i in data_2010)
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
############################################## 2011 #########################################################
##############################################      #########################################################
##############################################      #########################################################


setwd("C:/Users/Jose/Documents/GitHub/Sector-Financiero-Peru/data/raw data/Indicadores_Financieros/2011") 
data_2011<- readLines(n=12)
https://intranet2.sbs.gob.pe/estadistica/financiera/2011/Diciembre/B-2401-di2011.XLS
https://intranet2.sbs.gob.pe/estadistica/financiera/2011/Noviembre/B-2401-no2011.XLS
https://intranet2.sbs.gob.pe/estadistica/financiera/2011/Octubre/B-2401-oc2011.XLS
http://intranet2.sbs.gob.pe/estadistica/financiera/2011/Setiembre/B-2401-se2011.XLS
https://intranet2.sbs.gob.pe/estadistica/financiera/2011/Agosto/B-2401-ag2011.XLS
https://intranet2.sbs.gob.pe/estadistica/financiera/2011/Julio/B-2401-jl2011.XLS
https://intranet2.sbs.gob.pe/estadistica/financiera/2011/Junio/B-2401-jn2011.XLS
https://intranet2.sbs.gob.pe/estadistica/financiera/2011/Mayo/B-2401-my2011.XLS
https://intranet2.sbs.gob.pe/estadistica/financiera/2011/Abril/B-2401-ab2011.XLS
https://intranet2.sbs.gob.pe/estadistica/financiera/2011/Marzo/B-2401-ma2011.XLS
https://intranet2.sbs.gob.pe/estadistica/financiera/2011/Febrero/B-2401-fe2011.XLS
https://intranet2.sbs.gob.pe/estadistica/financiera/2011/Enero/B-2401-en2011.XLS


for (i in data_2011)
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
############################################## 2012 #########################################################
##############################################      #########################################################
##############################################      #########################################################


setwd("C:/Users/Jose/Documents/GitHub/Sector-Financiero-Peru/data/raw data/Indicadores_Financieros/2012") 
data_2012<- readLines(n=12)
https://intranet2.sbs.gob.pe/estadistica/financiera/2012/Diciembre/B-2401-di2012.XLS
https://intranet2.sbs.gob.pe/estadistica/financiera/2012/Noviembre/B-2401-no2012.XLS
https://intranet2.sbs.gob.pe/estadistica/financiera/2012/Octubre/B-2401-oc2012.XLS
http://intranet2.sbs.gob.pe/estadistica/financiera/2012/Setiembre/B-2401-se2012.XLS
https://intranet2.sbs.gob.pe/estadistica/financiera/2012/Agosto/B-2401-ag2012.XLS
https://intranet2.sbs.gob.pe/estadistica/financiera/2012/Julio/B-2401-jl2012.XLS
https://intranet2.sbs.gob.pe/estadistica/financiera/2012/Junio/B-2401-jn2012.XLS
https://intranet2.sbs.gob.pe/estadistica/financiera/2012/Mayo/B-2401-my2012.XLS
https://intranet2.sbs.gob.pe/estadistica/financiera/2012/Abril/B-2401-ab2012.XLS
https://intranet2.sbs.gob.pe/estadistica/financiera/2012/Marzo/B-2401-ma2012.XLS
https://intranet2.sbs.gob.pe/estadistica/financiera/2012/Febrero/B-2401-fe2012.XLS
https://intranet2.sbs.gob.pe/estadistica/financiera/2012/Enero/B-2401-en2012.XLS


#http://r.789695.n4.nabble.com/Download-xls-file-from-internet-td2315629.html
for (i in data_2012)
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
############################################## 2013 #########################################################
##############################################      #########################################################
##############################################      #########################################################


setwd("C:/Users/Jose/Documents/GitHub/Sector-Financiero-Peru/data/raw data/Indicadores_Financieros/2013") 
data_2013<- readLines(n=12)
https://intranet2.sbs.gob.pe/estadistica/financiera/2013/Diciembre/B-2401-di2013.XLS
https://intranet2.sbs.gob.pe/estadistica/financiera/2013/Noviembre/B-2401-no2013.XLS
https://intranet2.sbs.gob.pe/estadistica/financiera/2013/Octubre/B-2401-oc2013.XLS
http://intranet2.sbs.gob.pe/estadistica/financiera/2013/Setiembre/B-2401-se2013.XLS
https://intranet2.sbs.gob.pe/estadistica/financiera/2013/Agosto/B-2401-ag2013.XLS
https://intranet2.sbs.gob.pe/estadistica/financiera/2013/Julio/B-2401-jl2013.XLS
https://intranet2.sbs.gob.pe/estadistica/financiera/2013/Junio/B-2401-jn2013.XLS
https://intranet2.sbs.gob.pe/estadistica/financiera/2013/Mayo/B-2401-my2013.XLS
https://intranet2.sbs.gob.pe/estadistica/financiera/2013/Abril/B-2401-ab2013.XLS
https://intranet2.sbs.gob.pe/estadistica/financiera/2013/Marzo/B-2401-ma2013.XLS
https://intranet2.sbs.gob.pe/estadistica/financiera/2013/Febrero/B-2401-fe2013.XLS
https://intranet2.sbs.gob.pe/estadistica/financiera/2013/Enero/B-2401-en2013.XLS


#http://r.789695.n4.nabble.com/Download-xls-file-from-internet-td2315629.html
for (i in data_2013)
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
############################################## 2014 #########################################################
##############################################      #########################################################
##############################################      #########################################################


setwd("C:/Users/Jose/Documents/GitHub/Sector-Financiero-Peru/data/raw data/Indicadores_Financieros/2014") 
data_2014<- readLines(n=12)
https://intranet2.sbs.gob.pe/estadistica/financiera/2014/Diciembre/B-2401-di2014.XLS
https://intranet2.sbs.gob.pe/estadistica/financiera/2014/Noviembre/B-2401-no2014.XLS
https://intranet2.sbs.gob.pe/estadistica/financiera/2014/Octubre/B-2401-oc2014.XLS
http://intranet2.sbs.gob.pe/estadistica/financiera/2014/Setiembre/B-2401-se2014.XLS
https://intranet2.sbs.gob.pe/estadistica/financiera/2014/Agosto/B-2401-ag2014.XLS
https://intranet2.sbs.gob.pe/estadistica/financiera/2014/Julio/B-2401-jl2014.XLS
https://intranet2.sbs.gob.pe/estadistica/financiera/2014/Junio/B-2401-jn2014.XLS
https://intranet2.sbs.gob.pe/estadistica/financiera/2014/Mayo/B-2401-my2014.XLS
https://intranet2.sbs.gob.pe/estadistica/financiera/2014/Abril/B-2401-ab2014.XLS
https://intranet2.sbs.gob.pe/estadistica/financiera/2014/Marzo/B-2401-ma2014.XLS
https://intranet2.sbs.gob.pe/estadistica/financiera/2014/Febrero/B-2401-fe2014.XLS
https://intranet2.sbs.gob.pe/estadistica/financiera/2014/Enero/B-2401-en2014.XLS


for (i in data_2014)
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
############################################## 2015 #########################################################
##############################################      #########################################################
##############################################      #########################################################


setwd("C:/Users/Jose/Documents/GitHub/Sector-Financiero-Peru/data/raw data/Indicadores_Financieros/2015") 
data_2015<- readLines(n=12)
https://intranet2.sbs.gob.pe/estadistica/financiera/2015/Diciembre/B-2401-di2015.XLS
https://intranet2.sbs.gob.pe/estadistica/financiera/2015/Noviembre/B-2401-no2015.XLS
https://intranet2.sbs.gob.pe/estadistica/financiera/2015/Octubre/B-2401-oc2015.XLS
http://intranet2.sbs.gob.pe/estadistica/financiera/2015/Setiembre/B-2401-se2015.XLS
https://intranet2.sbs.gob.pe/estadistica/financiera/2015/Agosto/B-2401-ag2015.XLS
https://intranet2.sbs.gob.pe/estadistica/financiera/2015/Julio/B-2401-jl2015.XLS
https://intranet2.sbs.gob.pe/estadistica/financiera/2015/Junio/B-2401-jn2015.XLS
https://intranet2.sbs.gob.pe/estadistica/financiera/2015/Mayo/B-2401-my2015.XLS
https://intranet2.sbs.gob.pe/estadistica/financiera/2015/Abril/B-2401-ab2015.XLS
https://intranet2.sbs.gob.pe/estadistica/financiera/2015/Marzo/B-2401-ma2015.XLS
https://intranet2.sbs.gob.pe/estadistica/financiera/2015/Febrero/B-2401-fe2015.XLS
https://intranet2.sbs.gob.pe/estadistica/financiera/2015/Enero/B-2401-en2015.XLS


#http://r.789695.n4.nabble.com/Download-xls-file-from-internet-td2315629.html
for (i in data_2015)
{
  destfile=strsplit(i,split="/")
  if (!file.exists(destfile[[1]][8])) {
    download.file(i,destfile[[1]][8],mode="wb")
  }
  else
    print("El archivo esta descargado")  
}

}






















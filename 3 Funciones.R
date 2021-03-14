# 1 Objetivo: Crear la funcion ####


library(readxl) 
library(dplyr)
library(tidyr)

imp.data.xlsx<-function(mes, anio, pestania, dia, skips){
  
  archivo <- paste("B-2401-",mes,anio,".xls",sep="")
  
  a<-read_xlsx(path=archivo, sheet=pestania, skip=skips)
  a<-a[,-10]
  a<-a[!is.na(a[,2]),]
  b<-a[1,-1]
  a<-a[-1,]
  names(a)<-c("Indicadores",b)
  
  exc = !names(a) %in% "Indicadores"
  a[,exc] = sapply(a[,exc], function(x) round(as.numeric(as.character(x)), 2))
  
  a <- a%>%tidyr::gather(Bancos,valores,-Indicadores)
  data.final<- a%>%tidyr::spread(Indicadores,valores)
  
  
  mes_num<-as.data.frame(cbind(c("en","fe","ma","ab","my","jn","jl","ag","se","oc","no","di"),c(1:12)))
  names(mes_num)<-c("mes","numero")
  mes_num <- mes_num[(mes_num$mes %in% mes),2]
  
  
  fecha=as.Date(paste(anio,"-",mes_num,"-",dia,sep=""))
  
  fecha<-as.Date(fecha)
  data.final$Periodo= fecha
  data.final
}

imp.data.xls<-function(mes, anio, pestania, dia, skips){
  
  archivo = paste("B-2401-",mes,anio,".xls",sep="")
  
  a<-read_xls(path=archivo, sheet=pestania, skip=skips)
  a<-a[,-10]
  a<-a[!is.na(a[,2]),]
  b<-a[1,-1]
  a<-a[-1,]
  names(a)<-c("Indicadores",b)
  
  exc = !names(a) %in% "Indicadores"
  a[,exc] = sapply(a[,exc], function(x) round(as.numeric(as.character(x)), 2))
  
  a <- a%>%tidyr::gather(Bancos,valores,-Indicadores)
  data.final<- a%>%tidyr::spread(Indicadores,valores)
  
  mes_num<-as.data.frame(cbind(c("en","fe","ma","ab","my","jn","jl","ag","se","oc","no","di"),c(1:12)))
  names(mes_num)<-c("mes","numero")
  mes_num <- mes_num[(mes_num$mes %in% mes),2]
  
  fecha=as.Date(paste(anio,"-",mes_num,"-",dia,sep=""))
  
  fecha<-as.Date(fecha)
  data.final$Periodo= fecha
  data.final
}


#AÑO 2010
{
setwd("C:/Users/Jose/Documents/GitHub/Sector-Financiero-Peru/data/raw data/Indicadores_Financieros/2010")

en2010<-imp.data.xls(dia = "31",mes = "en",anio="2010", pestania = 1, skips = 0)
fe2010<-imp.data.xls(dia = "29",mes = "fe",anio="2010", pestania = 1, skips = 0)
ma2010<-imp.data.xls(dia = "31",mes = "ma",anio="2010", pestania = 1, skips = 0)
ab2010<-imp.data.xls(dia = "30",mes = "ab",anio="2010", pestania = 1, skips = 0)
my2010<-imp.data.xls(dia = "31",mes = "my",anio="2010", pestania = 1, skips = 0)
jn2010<-imp.data.xls(dia = "30",mes = "jn",anio="2010", pestania = 1, skips = 0)
jl2010<-imp.data.xls(dia = "31",mes = "jl",anio="2010", pestania = 1, skips = 0)
ag2010<-imp.data.xls(dia = "31",mes = "ag",anio="2010", pestania = 1, skips = 0)
se2010<-imp.data.xls(dia = "30",mes = "se",anio="2010", pestania = 1, skips = 0)
oc2010<-imp.data.xls(dia = "31",mes = "oc",anio="2010", pestania = 1, skips = 0)
no2010<-imp.data.xls(dia = "30",mes = "no",anio="2010", pestania = 1, skips = 0)
di2010<-imp.data.xlsx(dia = "31",mes = "di",anio="2010", pestania = 1, skips = 0)

en2010$Bancos
(fe2010$Bancos)
(ma2010$Bancos)
(ab2010$Bancos)
(my2010$Bancos)
(jn2010$Bancos)
(jl2010$Bancos)
(ag2010$Bancos)
(se2010$Bancos)
(oc2010$Bancos)
(no2010$Bancos)
(di2010$Bancos)

id1<-c("Azteca","Cencosud","BBVA","Comercio","BCP","Falabella","Pichincha",
       "GNB","ICBC","BANBIF","Ripley","Santander","Citibank", "Deutsche", 
       "Interbank","Mibanco","Scotiabank","Total Banca")
id2<-c("Azteca","Cencosud","BBVA","Comercio","BCP","Falabella","Pichincha",
       "GNB","ICBC","BANBIF","Ripley","Santander","Citibank", 
       "Interbank","Mibanco","Scotiabank","Total Banca")


en2016[,1]<-id1
fe2016[,1]<-id1
ma2016[,1]<-id1
ab2016[,1]<-id1
my2016[,1]<-id1
jn2016[,1]<-id1

jl2016[,1]<-id2
ag2016[,1]<-id2
se2016[,1]<-id2
oc2016[,1]<-id2
no2016[,1]<-id2
di2016[,1]<-id2



View(en2016)
View(fe2016)
View(ma2016)
View(ab2016)
View(my2016)
View(jn2016)
View(jl2016)
View(ag2016)
View(se2016)
View(oc2016)
View(no2016)
View(di2016)


#Guardando la data
setwd("C:/Users/Jose/Desktop/Universidad/Manos a la Data/Investigacion/data/dataprocesada/Indicadores_Financieros/2016/")

saveRDS(en2016,file="en2016.RDS")
saveRDS(fe2016,file="fe2016.RDS")
saveRDS(ma2016,file="ma2016.RDS")
saveRDS(ab2016,file="ab2016.RDS")
saveRDS(my2016,file="my2016.RDS")
saveRDS(jn2016,file="jn2016.RDS")
saveRDS(jl2016,file="jl2016.RDS")
saveRDS(ag2016,file="ag2016.RDS")
saveRDS(se2016,file="se2016.RDS")
saveRDS(oc2016,file="oc2016.RDS")
saveRDS(no2016,file="no2016.RDS")
saveRDS(di2016,file="di2016.RDS")

}

rlang::last_error()
#AÑO 2015
{
  setwd("C:/Users/Jose/Documents/GitHub/Sector-Financiero-Peru/data/raw data/Indicadores_Financieros/2015")
  
  en2015<-imp.data.xlsx(dia = "31",mes = "en",anio="2015", pestania = 1, skips = 0)
  fe2015<-imp.data.xls(dia = "29",mes = "fe",anio="2015", pestania = 1, skips = 0)
  ma2015<-imp.data.xls(dia = "31",mes = "ma",anio="2015", pestania = 1, skips = 0)
  ab2015<-imp.data.xls(dia = "30",mes = "ab",anio="2015", pestania = 1, skips = 0)
  my2015<-imp.data.xls(dia = "31",mes = "my",anio="2015", pestania = 1, skips = 0)
  jn2015<-imp.data.xls(dia = "30",mes = "jn",anio="2015", pestania = 1, skips = 0)
  jl2015<-imp.data.xls(dia = "31",mes = "jl",anio="2015", pestania = 1, skips = 0)
  ag2015<-imp.data.xls(dia = "31",mes = "ag",anio="2015", pestania = 1, skips = 0)
  se2015<-imp.data.xls(dia = "30",mes = "se",anio="2015", pestania = 1, skips = 0)
  oc2015<-imp.data.xls(dia = "31",mes = "oc",anio="2015", pestania = 1, skips = 0)
  no2015<-imp.data.xls(dia = "30",mes = "no",anio="2015", pestania = 1, skips = 0)
  di2015<-imp.data.xlsx(dia = "31",mes = "di",anio="2015", pestania = 1, skips = 0)
  
  en2010$Bancos
  (fe2010$Bancos)
  (ma2010$Bancos)
  (ab2010$Bancos)
  (my2010$Bancos)
  (jn2010$Bancos)
  (jl2010$Bancos)
  (ag2010$Bancos)
  (se2010$Bancos)
  (oc2010$Bancos)
  (no2010$Bancos)
  (di2010$Bancos)
  
  id1<-c("Azteca","Cencosud","BBVA","Comercio","BCP","Falabella","Pichincha",
         "GNB","ICBC","BANBIF","Ripley","Santander","Citibank", "Deutsche", 
         "Interbank","Mibanco","Scotiabank","Total Banca")
  id2<-c("Azteca","Cencosud","BBVA","Comercio","BCP","Falabella","Pichincha",
         "GNB","ICBC","BANBIF","Ripley","Santander","Citibank", 
         "Interbank","Mibanco","Scotiabank","Total Banca")
  
  
  en2016[,1]<-id1
  fe2016[,1]<-id1
  ma2016[,1]<-id1
  ab2016[,1]<-id1
  my2016[,1]<-id1
  jn2016[,1]<-id1
  
  jl2016[,1]<-id2
  ag2016[,1]<-id2
  se2016[,1]<-id2
  oc2016[,1]<-id2
  no2016[,1]<-id2
  di2016[,1]<-id2
  
  
  
  View(en2016)
  View(fe2016)
  View(ma2016)
  View(ab2016)
  View(my2016)
  View(jn2016)
  View(jl2016)
  View(ag2016)
  View(se2016)
  View(oc2016)
  View(no2016)
  View(di2016)
  
  
  #Guardando la data
  setwd("C:/Users/Jose/Desktop/Universidad/Manos a la Data/Investigacion/data/dataprocesada/Indicadores_Financieros/2016/")
  
  saveRDS(en2016,file="en2016.RDS")
  saveRDS(fe2016,file="fe2016.RDS")
  saveRDS(ma2016,file="ma2016.RDS")
  saveRDS(ab2016,file="ab2016.RDS")
  saveRDS(my2016,file="my2016.RDS")
  saveRDS(jn2016,file="jn2016.RDS")
  saveRDS(jl2016,file="jl2016.RDS")
  saveRDS(ag2016,file="ag2016.RDS")
  saveRDS(se2016,file="se2016.RDS")
  saveRDS(oc2016,file="oc2016.RDS")
  saveRDS(no2016,file="no2016.RDS")
  saveRDS(di2016,file="di2016.RDS")
  
}


#AÑO 2016
setwd("C:/Users/Jose/Documents/GitHub/Sector-Financiero-Peru/data/raw data/Indicadores_Financieros/2016")

en2016<-imp.data.xls(dia = "31",mes = "en",anio="2016", pestania = 1, skips = 0)
fe2016<-imp.data.xls(dia = "29",mes = "fe",anio="2016", pestania = 1, skips = 0)
ma2016<-imp.data.xls(dia = "31",mes = "ma",anio="2016", pestania = 1, skips = 0)
ab2016<-imp.data.xls(dia = "30",mes = "ab",anio="2016", pestania = 1, skips = 0)
my2016<-imp.data.xls(dia = "31",mes = "my",anio="2016", pestania = 1, skips = 0)
jn2016<-imp.data.xls(dia = "30",mes = "jn",anio="2016", pestania = 1, skips = 0)
jl2016<-imp.data.xls(dia = "31",mes = "jl",anio="2016", pestania = 1, skips = 0)
ag2016<-imp.data.xls(dia = "31",mes = "ag",anio="2016", pestania = 1, skips = 0)
se2016<-imp.data.xls(dia = "30",mes = "se",anio="2016", pestania = 1, skips = 0)
oc2016<-imp.data.xls(dia = "31",mes = "oc",anio="2016", pestania = 1, skips = 0)
no2016<-imp.data.xls(dia = "30",mes = "no",anio="2016", pestania = 1, skips = 0)
di2016<-imp.data.xlsx(dia = "31",mes = "di",anio="2016", pestania = 1, skips = 0)

en2016$Bancos
(fe2016$Bancos)
(ma2016$Bancos)
(ab2016$Bancos)
(my2016$Bancos)
(jn2016$Bancos)
(jl2016$Bancos)
(ag2016$Bancos)
(se2016$Bancos)
(oc2016$Bancos)
(no2016$Bancos)
(di2016$Bancos)


id1<-c("Azteca","Cencosud","BBVA","Comercio","BCP","Falabella","Pichincha",
      "GNB","ICBC","BANBIF","Ripley","Santander","Citibank", "Deutsche", 
      "Interbank","Mibanco","Scotiabank","Total Banca")
id2<-c("Azteca","Cencosud","BBVA","Comercio","BCP","Falabella","Pichincha",
       "GNB","ICBC","BANBIF","Ripley","Santander","Citibank", 
       "Interbank","Mibanco","Scotiabank","Total Banca")


en2016[,1]<-id1
fe2016[,1]<-id1
ma2016[,1]<-id1
ab2016[,1]<-id1
my2016[,1]<-id1
jn2016[,1]<-id1

jl2016[,1]<-id2
ag2016[,1]<-id2
se2016[,1]<-id2
oc2016[,1]<-id2
no2016[,1]<-id2
di2016[,1]<-id2



View(en2016)
View(fe2016)
View(ma2016)
View(ab2016)
View(my2016)
View(jn2016)
View(jl2016)
View(ag2016)
View(se2016)
View(oc2016)
View(no2016)
View(di2016)


#Guardando la data
setwd("C:/Users/Jose/Desktop/Universidad/Manos a la Data/Investigacion/data/dataprocesada/Indicadores_Financieros/2016/")

saveRDS(en2016,file="en2016.RDS")
saveRDS(fe2016,file="fe2016.RDS")
saveRDS(ma2016,file="ma2016.RDS")
saveRDS(ab2016,file="ab2016.RDS")
saveRDS(my2016,file="my2016.RDS")
saveRDS(jn2016,file="jn2016.RDS")
saveRDS(jl2016,file="jl2016.RDS")
saveRDS(ag2016,file="ag2016.RDS")
saveRDS(se2016,file="se2016.RDS")
saveRDS(oc2016,file="oc2016.RDS")
saveRDS(no2016,file="no2016.RDS")
saveRDS(di2016,file="di2016.RDS")



#AÑO 2017
setwd("C:/Users/Jose/Documents/GitHub/Sector-Financiero-Peru/data/raw data/Indicadores_Financieros/2017")

en2017<-imp.data.xls(dia = "31",mes = "en",anio="2017", pestania = 1, skips = 0)
fe2017<-imp.data.xlsx(dia = "28",mes = "fe",anio="2017", pestania = 1, skips = 0)
ma2017<-imp.data.xls(dia = "31",mes = "ma",anio="2017", pestania = 1, skips = 0)
ab2017<-imp.data.xls(dia = "30",mes = "ab",anio="2017", pestania = 1, skips = 0)
my2017<-imp.data.xlsx(dia = "31",mes = "my",anio="2017", pestania = 1, skips = 0)
jn2017<-imp.data.xlsx(dia = "30",mes = "jn",anio="2017", pestania = 1, skips = 0)
jl2017<-imp.data.xls(dia = "31",mes = "jl",anio="2017", pestania = 1, skips = 0)
ag2017<-imp.data.xls(dia = "31",mes = "ag",anio="2017", pestania = 1, skips = 0)
se2017<-imp.data.xls(dia = "30",mes = "se",anio="2017", pestania = 1, skips = 0)
oc2017<-imp.data.xlsx(dia = "31",mes = "oc",anio="2017", pestania = 1, skips = 0)
no2017<-imp.data.xls(dia = "30",mes = "no",anio="2017", pestania = 1, skips = 0)
di2017<-imp.data.xlsx(dia = "31",mes = "di",anio="2017", pestania = 1, skips = 0)


en2017$Bancos
fe2017$Bancos
ma2017$Bancos
ab2017$Bancos
my2017$Bancos
jn2017$Bancos
jl2017$Bancos
ag2017$Bancos
se2017$Bancos
oc2017$Bancos
no2017$Bancos
di2017$Bancos




id2<-c("Azteca","Cencosud","BBVA","Comercio","BCP","Falabella","Pichincha",
       "GNB","ICBC","BANBIF","Ripley","Santander","Citibank", 
       "Interbank","Mibanco","Scotiabank","Total Banca")


en2017[,1]<-id2
fe2017[,1]<-id2
ma2017[,1]<-id2
ab2017[,1]<-id2
my2017[,1]<-id2
jn2017[,1]<-id2
jl2017[,1]<-id2
ag2017[,1]<-id2
se2017[,1]<-id2
oc2017[,1]<-id2
no2017[,1]<-id2
di2017[,1]<-id2

View(en2017)
View(fe2017)
View(ma2017)
View(ab2017)
View(my2017)
View(jn2017)
View(jl2017)
View(ag2017)
View(se2017)
View(oc2017)
View(no2017)
View(di2017)

#Guardando la data
setwd("C:/Users/Jose/Desktop/Universidad/Manos a la Data/Investigacion/data/dataprocesada/Indicadores_Financieros/2017/")

saveRDS(en2017,file="en2017.RDS")
saveRDS(fe2017,file="fe2017.RDS")
saveRDS(ma2017,file="ma2017.RDS")
saveRDS(ab2017,file="ab2017.RDS")
saveRDS(my2017,file="my2017.RDS")
saveRDS(jn2017,file="jn2017.RDS")
saveRDS(jl2017,file="jl2017.RDS")
saveRDS(ag2017,file="ag2017.RDS")
saveRDS(se2017,file="se2017.RDS")
saveRDS(oc2017,file="oc2017.RDS")
saveRDS(no2017,file="no2017.RDS")
saveRDS(di2017,file="di2017.RDS")



#AÑO 2018
setwd("C:/Users/Jose/Documents/GitHub/Sector-Financiero-Peru/data/raw data/Indicadores_Financieros/2018")

en2018<-imp.data.xlsx(dia = "31",mes = "en",anio="2018", pestania = 1, skips = 0)
fe2018<-imp.data.xlsx(dia = "28",mes = "fe",anio="2018", pestania = 1, skips = 0)
ma2018<-imp.data.xlsx(dia = "31",mes = "ma",anio="2018", pestania = 1, skips = 0)
ab2018<-imp.data.xlsx(dia = "30",mes = "ab",anio="2018", pestania = 1, skips = 0)
my2018<-imp.data.xlsx(dia = "31",mes = "my",anio="2018", pestania = 1, skips = 0)
jn2018<-imp.data.xlsx(dia = "30",mes = "jn",anio="2018", pestania = 1, skips = 0)
jl2018<-imp.data.xlsx(dia = "31",mes = "jl",anio="2018", pestania = 1, skips = 0)
ag2018<-imp.data.xlsx(dia = "31",mes = "ag",anio="2018", pestania = 1, skips = 0)
se2018<-imp.data.xlsx(dia = "30",mes = "se",anio="2018", pestania = 1, skips = 0)
oc2018<-imp.data.xlsx(dia = "31",mes = "oc",anio="2018", pestania = 1, skips = 0)
no2018<-imp.data.xlsx(dia = "30",mes = "no",anio="2018", pestania = 1, skips = 0)
di2018<-imp.data.xlsx(dia = "31",mes = "di",anio="2018", pestania = 1, skips = 0)


en2018$Bancos
fe2018$Bancos
ma2018$Bancos
ab2018$Bancos
my2018$Bancos
jn2018$Bancos
jl2018$Bancos
ag2018$Bancos
se2018$Bancos
oc2018$Bancos
no2018$Bancos
di2018$Bancos


#agosto y diciembre
id3<-c("Azteca","Cencosud","BBVA","Comercio","BCP","Falabella","GNB",
       "ICBC","BANBIF","Pichincha","Ripley","Santander","Citibank", 
       "Interbank","Mibanco","Scotiabank","Total Banca")

id2<-c("Azteca","Cencosud","BBVA","Comercio","BCP","Falabella","Pichincha",
       "GNB","ICBC","BANBIF","Ripley","Santander","Citibank", 
       "Interbank","Mibanco","Scotiabank","Total Banca")


en2018[,1]<-id2
fe2018[,1]<-id2
ma2018[,1]<-id2
ab2018[,1]<-id2
my2018[,1]<-id2
jn2018[,1]<-id2
jl2018[,1]<-id2
ag2018[,1]<-id3
se2018[,1]<-id2
oc2018[,1]<-id2
no2018[,1]<-id2
di2018[,1]<-id3


View(en2018)
View(fe2018)
View(ma2018)
View(ab2018)
View(my2018)
View(jn2018)
View(jl2018)
View(ag2018)
View(se2018)
View(oc2018)
View(no2018)
View(di2018)


#Guardando la data
setwd("C:/Users/Jose/Desktop/Universidad/Manos a la Data/Investigacion/data/dataprocesada/Indicadores_Financieros/2018/")

saveRDS(en2018,file="en2018.RDS")
saveRDS(fe2018,file="fe2018.RDS")
saveRDS(ma2018,file="ma2018.RDS")
saveRDS(ab2018,file="ab2018.RDS")
saveRDS(my2018,file="my2018.RDS")
saveRDS(jn2018,file="jn2018.RDS")
saveRDS(jl2018,file="jl2018.RDS")
saveRDS(ag2018,file="ag2018.RDS")
saveRDS(se2018,file="se2018.RDS")
saveRDS(oc2018,file="oc2018.RDS")
saveRDS(no2018,file="no2018.RDS")
saveRDS(di2018,file="di2018.RDS")

#AÑO 2019
setwd("C:/Users/Jose/Documents/GitHub/Sector-Financiero-Peru/data/raw data/Indicadores_Financieros/2019/")

en2019<-imp.data.xlsx(dia = "31",mes = "en",anio="2019", pestania = 1, skips = 0)
fe2019<-imp.data.xlsx(dia = "28",mes = "fe",anio="2019", pestania = 1, skips = 0)
ma2019<-imp.data.xlsx(dia = "31",mes = "ma",anio="2019", pestania = 1, skips = 0)
ab2019<-imp.data.xlsx(dia = "30",mes = "ab",anio="2019", pestania = 1, skips = 0)
my2019<-imp.data.xlsx(dia = "31",mes = "my",anio="2019", pestania = 1, skips = 0)
jn2019<-imp.data.xlsx(dia = "30",mes = "jn",anio="2019", pestania = 1, skips = 0)
jl2019<-imp.data.xlsx(dia = "31",mes = "jl",anio="2019", pestania = 1, skips = 0)
ag2019<-imp.data.xlsx(dia = "31",mes = "ag",anio="2019", pestania = 1, skips = 0)
se2019<-imp.data.xlsx(dia = "30",mes = "se",anio="2019", pestania = 1, skips = 0)
oc2019<-imp.data.xlsx(dia = "31",mes = "oc",anio="2019", pestania = 1, skips = 0)
no2019<-imp.data.xlsx(dia = "30",mes = "no",anio="2019", pestania = 1, skips = 0)
di2019<-imp.data.xlsx(dia = "31",mes = "di",anio="2019", pestania = 1, skips = 0)


en2019$Bancos
fe2019$Bancos
ma2019$Bancos
ab2019$Bancos
my2019$Bancos
jn2019$Bancos
jl2019$Bancos
ag2019$Bancos
se2019$Bancos
oc2019$Bancos
no2019$Bancos
di2019$Bancos


#enero y febrero
id3<-c("Azteca","Cencosud","BBVA","Comercio","BCP","Falabella","GNB",
       "ICBC","BANBIF","Pichincha","Ripley","Santander","Citibank", 
       "Interbank","Mibanco","Scotiabank","Total Banca")

id4<-c("Azteca","BBVA","Comercio","BCP","Falabella","GNB",
       "ICBC","BANBIF","Pichincha","Ripley","Santander","Citibank", 
       "Interbank","Mibanco","Scotiabank","Total Banca")





en2019[,1]<-id3
fe2019[,1]<-id3
ma2019[,1]<-id4
ab2019[,1]<-id4
my2019[,1]<-id4
jn2019[,1]<-id4
jl2019[,1]<-id4
ag2019[,1]<-id4
se2019[,1]<-id4
oc2019[,1]<-id4
no2019[,1]<-id4
di2019[,1]<-id4

View(en2019)
View(fe2019)
View(ma2019)
View(ab2019)
View(my2019)
View(jn2019)
View(jl2019)
View(ag2019)
View(se2019)
View(oc2019)
View(no2019)
View(di2019)

#Guardando la data
setwd("C:/Users/Jose/Desktop/Universidad/Manos a la Data/Investigacion/data/dataprocesada/Indicadores_Financieros/2019")

saveRDS(en2019,file="en2019.RDS")
saveRDS(fe2019,file="fe2019.RDS")
saveRDS(ma2019,file="ma2019.RDS")
saveRDS(ab2019,file="ab2019.RDS")
saveRDS(my2019,file="my2019.RDS")
saveRDS(jn2019,file="jn2019.RDS")
saveRDS(jl2019,file="jl2019.RDS")
saveRDS(ag2019,file="ag2019.RDS")
saveRDS(se2019,file="se2019.RDS")
saveRDS(oc2019,file="oc2019.RDS")
saveRDS(no2019,file="no2019.RDS")
saveRDS(di2019,file="di2019.RDS")

#AÑO 2020 ####
setwd("C:/Users/Jose/Documents/GitHub/Sector-Financiero-Peru/data/raw data/Indicadores_Financieros/2020")

en2020<-imp.data.xlsx(dia = "31",mes = "en",anio="2020", pestania = 1, skips = 0)
fe2020<-imp.data.xlsx(dia = "29",mes = "fe",anio="2020", pestania = 1, skips = 0)
ma2020<-imp.data.xlsx(dia = "31",mes = "ma",anio="2020", pestania = 1, skips = 0)
ab2020<-imp.data.xlsx(dia = "30",mes = "ab",anio="2020", pestania = 1, skips = 0)
my2020<-imp.data.xlsx(dia = "31",mes = "my",anio="2020", pestania = 1, skips = 0)
jn2020<-imp.data.xlsx(dia = "30",mes = "jn",anio="2020", pestania = 1, skips = 0)
jl2020<-imp.data.xlsx(dia = "31",mes = "jl",anio="2020", pestania = 1, skips = 0)
ag2020<-imp.data.xlsx(dia = "31",mes = "ag",anio="2020", pestania = 1, skips = 0)
se2020<-imp.data.xlsx(dia = "30",mes = "se",anio="2020", pestania = 1, skips = 0)
oc2020<-imp.data.xlsx(dia = "31",mes = "oc",anio="2020", pestania = 1, skips = 0)
no2020<-imp.data.xlsx(dia = "30",mes = "no",anio="2020", pestania = 1, skips = 0)
di2020<-imp.data.xlsx(dia = "31",mes = "di",anio="2020", pestania = 1, skips = 0)

en2020$Bancos
fe2020$Bancos
ma2020$Bancos
ab2020$Bancos
my2020$Bancos
jn2020$Bancos
jl2020$Bancos
ag2020$Bancos
se2020$Bancos
oc2020$Bancos
no2020$Bancos
di2020$Bancos


id4<-c("Azteca","BBVA","Comercio","BCP","Falabella","GNB",
       "ICBC","BANBIF","Pichincha","Ripley","Santander","Citibank", 
       "Interbank","Mibanco","Scotiabank","Total Banca")

#Bank of China inició operaciones el 22/07/2020. 
#Mediante Resolución SBS N° 1295-2020 se autorizó el funcionamiento como empresa bancaria de operaciones múltiples.
id5<-c("Azteca","BBVA","Comercio","BCP","Falabella","GNB",
       "ICBC","BANBIF","Pichincha","Ripley","Santander","China","Citibank", 
       "Interbank","Mibanco","Scotiabank","Total Banca")

id6<-c("Azteca","BBVA","China","Comercio","BCP","Falabella","GNB",
       "ICBC","BANBIF","Pichincha","Ripley","Santander","Citibank", 
       "Interbank","Mibanco","Scotiabank","Total Banca")

en2020[,1]<-id4
fe2020[,1]<-id4
ma2020[,1]<-id4
ab2020[,1]<-id4
my2020[,1]<-id4
jn2020[,1]<-id4
jl2020[,1]<-id5
ag2020[,1]<-id6
se2020[,1]<-id6
oc2020[,1]<-id6
no2020[,1]<-id6
di2020[,1]<-id6

View(en2020)
View(fe2020)
View(ma2020)
View(ab2020)
View(my2020)
View(jn2020)
View(jl2020)
View(ag2020)
View(se2020)
View(oc2020)
View(no2020)
View(di2020)

#Guardando la data
setwd("C:/Users/Jose/Documents/GitHub/Sector-Financiero-Peru/data/dataprocesada/Indicadores_Financieros/2020")

saveRDS(en2020,file="en2020.RDS")
saveRDS(fe2020,file="fe2020.RDS")
saveRDS(ma2020,file="ma2020.RDS")
saveRDS(ab2020,file="ab2020.RDS")
saveRDS(my2020,file="my2020.RDS")
saveRDS(jn2020,file="jn2020.RDS")
saveRDS(jl2020,file="jl2020.RDS")
saveRDS(ag2020,file="ag2020.RDS")
saveRDS(se2020,file="se2020.RDS")
saveRDS(oc2020,file="oc2020.RDS")
saveRDS(no2020,file="no2020.RDS")
saveRDS(di2020,file="di2020.RDS")








#Guardando data en una sola carpeta
setwd("C:/Users/Jose/Documents/GitHub/Sector-Financiero-Peru/data/dataprocesada/Indicadores_Financieros")

saveRDS(en2016,file="en2016.RDS")
saveRDS(fe2016,file="fe2016.RDS")
saveRDS(ma2016,file="ma2016.RDS")
saveRDS(ab2016,file="ab2016.RDS")
saveRDS(my2016,file="my2016.RDS")
saveRDS(jn2016,file="jn2016.RDS")
saveRDS(jl2016,file="jl2016.RDS")
saveRDS(ag2016,file="ag2016.RDS")
saveRDS(se2016,file="se2016.RDS")
saveRDS(oc2016,file="oc2016.RDS")
saveRDS(no2016,file="no2016.RDS")
saveRDS(di2016,file="di2016.RDS")

saveRDS(en2017,file="en2017.RDS")
saveRDS(fe2017,file="fe2017.RDS")
saveRDS(ma2017,file="ma2017.RDS")
saveRDS(ab2017,file="ab2017.RDS")
saveRDS(my2017,file="my2017.RDS")
saveRDS(jn2017,file="jn2017.RDS")
saveRDS(jl2017,file="jl2017.RDS")
saveRDS(ag2017,file="ag2017.RDS")
saveRDS(se2017,file="se2017.RDS")
saveRDS(oc2017,file="oc2017.RDS")
saveRDS(no2017,file="no2017.RDS")
saveRDS(di2017,file="di2017.RDS")

saveRDS(en2018,file="en2018.RDS")
saveRDS(fe2018,file="fe2018.RDS")
saveRDS(ma2018,file="ma2018.RDS")
saveRDS(ab2018,file="ab2018.RDS")
saveRDS(my2018,file="my2018.RDS")
saveRDS(jn2018,file="jn2018.RDS")
saveRDS(jl2018,file="jl2018.RDS")
saveRDS(ag2018,file="ag2018.RDS")
saveRDS(se2018,file="se2018.RDS")
saveRDS(oc2018,file="oc2018.RDS")
saveRDS(no2018,file="no2018.RDS")
saveRDS(di2018,file="di2018.RDS")

saveRDS(en2019,file="en2019.RDS")
saveRDS(fe2019,file="fe2019.RDS")
saveRDS(ma2019,file="ma2019.RDS")
saveRDS(ab2019,file="ab2019.RDS")
saveRDS(my2019,file="my2019.RDS")
saveRDS(jn2019,file="jn2019.RDS")
saveRDS(jl2019,file="jl2019.RDS")
saveRDS(ag2019,file="ag2019.RDS")
saveRDS(se2019,file="se2019.RDS")
saveRDS(oc2019,file="oc2019.RDS")
saveRDS(no2019,file="no2019.RDS")
saveRDS(di2019,file="di2019.RDS")

saveRDS(en2020,file="en2020.RDS")
saveRDS(fe2020,file="fe2020.RDS")
saveRDS(ma2020,file="ma2020.RDS")
saveRDS(ab2020,file="ab2020.RDS")
saveRDS(my2020,file="my2020.RDS")
saveRDS(jn2020,file="jn2020.RDS")
saveRDS(jl2020,file="jl2020.RDS")
saveRDS(ag2020,file="ag2020.RDS")
saveRDS(se2020,file="se2020.RDS")
saveRDS(oc2020,file="oc2020.RDS")
saveRDS(no2020,file="no2020.RDS")
saveRDS(di2020,file="di2020.RDS")
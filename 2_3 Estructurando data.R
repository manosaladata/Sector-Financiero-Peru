library(xts)
library(dygraphs)
library(dplyr)
library(tidyr)
library(readxl)
library(tidyverse)
library(stringi)


setwd("C:/Users/Administrator/Documents/GitHub/Sector-Financiero-Peru/data/dataprocesada/Informacion Estadistica de Banca Multiple/Indicadores de las Empresas Bancarias/Indicadores Financieros")


#A�O 2016 ####
{
  df1 <- list.files(pattern = "en2016.RDS") %>%
    map_dfr(readRDS)
  
  df2 <- list.files(pattern = "fe2016.RDS") %>%
    map_dfr(readRDS)
  
  df3 <- list.files(pattern = "ma2016.RDS") %>%
    map_dfr(readRDS)
  
  df4 <- list.files(pattern = "ab2016.RDS") %>%
    map_dfr(readRDS)
  
  df5 <- list.files(pattern = "my2016.RDS") %>%
    map_dfr(readRDS)
  
  df6 <- list.files(pattern = "jn2016.RDS") %>%
    map_dfr(readRDS)
  
  df7 <- list.files(pattern = "jl2016.RDS") %>%
    map_dfr(readRDS)
  
  df8 <- list.files(pattern = "ag2016.RDS") %>%
    map_dfr(readRDS)
  
  df9 <- list.files(pattern = "se2016.RDS") %>%
    map_dfr(readRDS)
  
  df10 <- list.files(pattern = "oc2016.RDS") %>%
    map_dfr(readRDS)
  
  df11 <- list.files(pattern = "no2016.RDS") %>%
    map_dfr(readRDS)
  
  df12 <- list.files(pattern = "di2016.RDS") %>%
    map_dfr(readRDS)
}

dim(df1);dim(df2);dim(df3);dim(df4);dim(df5);dim(df6);dim(df7);dim(df8);dim(df9);dim(df10);dim(df11);dim(df12)


en2016<-df1;fe2016<-df2;ma2016<-df3;ab2016<-df4;my2016<-df5;jn2016<-df6;jl2016<-df7;ag2016<-df8;se2016<-df9;oc2016<-df10;no2016<-df11;di2016<-df12

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



#A�O 2017 ####
{
  df1 <- list.files(pattern = "en2017.RDS") %>%
    map_dfr(readRDS)
  
  df2 <- list.files(pattern = "fe2017.RDS") %>%
    map_dfr(readRDS)
  
  df3 <- list.files(pattern = "ma2017.RDS") %>%
    map_dfr(readRDS)
  
  df4 <- list.files(pattern = "ab2017.RDS") %>%
    map_dfr(readRDS)
  
  df5 <- list.files(pattern = "my2017.RDS") %>%
    map_dfr(readRDS)
  
  df6 <- list.files(pattern = "jn2017.RDS") %>%
    map_dfr(readRDS)
  
  df7 <- list.files(pattern = "jl2017.RDS") %>%
    map_dfr(readRDS)
  
  df8 <- list.files(pattern = "ag2017.RDS") %>%
    map_dfr(readRDS)
  
  df9 <- list.files(pattern = "se2017.RDS") %>%
    map_dfr(readRDS)
  
  df10 <- list.files(pattern = "oc2017.RDS") %>%
    map_dfr(readRDS)
  
  df11 <- list.files(pattern = "no2017.RDS") %>%
    map_dfr(readRDS)
  
  df12 <- list.files(pattern = "di2017.RDS") %>%
    map_dfr(readRDS)
}

dim(df1);dim(df2);dim(df3);dim(df4);dim(df5);dim(df6);dim(df7);dim(df8);dim(df9);dim(df10);dim(df11);dim(df12)

en2017<-df1;fe2017<-df2;ma2017<-df3;ab2017<-df4;my2017<-df5;jn2017<-df6;jl2017<-df7;ag2017<-df8;se2017<-df9;oc2017<-df10;no2017<-df11;di2017<-df12

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

#A�O 2018 ####
{
  df1 <- list.files(pattern = "en2018.RDS") %>%
    map_dfr(readRDS)
  
  df2 <- list.files(pattern = "fe2018.RDS") %>%
    map_dfr(readRDS)
  
  df3 <- list.files(pattern = "ma2018.RDS") %>%
    map_dfr(readRDS)
  
  df4 <- list.files(pattern = "ab2018.RDS") %>%
    map_dfr(readRDS)
  
  df5 <- list.files(pattern = "my2018.RDS") %>%
    map_dfr(readRDS)
  
  df6 <- list.files(pattern = "jn2018.RDS") %>%
    map_dfr(readRDS)
  
  df7 <- list.files(pattern = "jl2018.RDS") %>%
    map_dfr(readRDS)
  
  df8 <- list.files(pattern = "ag2018.RDS") %>%
    map_dfr(readRDS)
  
  df9 <- list.files(pattern = "se2018.RDS") %>%
    map_dfr(readRDS)
  
  df10 <- list.files(pattern = "oc2018.RDS") %>%
    map_dfr(readRDS)
  
  df11 <- list.files(pattern = "no2018.RDS") %>%
    map_dfr(readRDS)
  
  df12 <- list.files(pattern = "di2018.RDS") %>%
    map_dfr(readRDS)
}

dim(df1);dim(df2);dim(df3);dim(df4);dim(df5);dim(df6);dim(df7);dim(df8);dim(df9);dim(df10);dim(df11);dim(df12)

en2018<-df1;fe2018<-df2;ma2018<-df3;ab2018<-df4;my2018<-df5;jn2018<-df6;jl2018<-df7;ag2018<-df8;se2018<-df9;oc2018<-df10;no2018<-df11;di2018<-df12

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


#A�O 2019 ####
{
  df1 <- list.files(pattern = "en2019.RDS") %>%
    map_dfr(readRDS)
  
  df2 <- list.files(pattern = "fe2019.RDS") %>%
    map_dfr(readRDS)
  
  df3 <- list.files(pattern = "ma2019.RDS") %>%
    map_dfr(readRDS)
  
  df4 <- list.files(pattern = "ab2019.RDS") %>%
    map_dfr(readRDS)
  
  df5 <- list.files(pattern = "my2019.RDS") %>%
    map_dfr(readRDS)
  
  df6 <- list.files(pattern = "jn2019.RDS") %>%
    map_dfr(readRDS)
  
  df7 <- list.files(pattern = "jl2019.RDS") %>%
    map_dfr(readRDS)
  
  df8 <- list.files(pattern = "ag2019.RDS") %>%
    map_dfr(readRDS)
  
  df9 <- list.files(pattern = "se2019.RDS") %>%
    map_dfr(readRDS)
  
  df10 <- list.files(pattern = "oc2019.RDS") %>%
    map_dfr(readRDS)
  
  df11 <- list.files(pattern = "no2019.RDS") %>%
    map_dfr(readRDS)
  
  df12 <- list.files(pattern = "di2019.RDS") %>%
    map_dfr(readRDS)
}

dim(df1);dim(df2);dim(df3);dim(df4);dim(df5);dim(df6);dim(df7);dim(df8);dim(df9);dim(df10);dim(df11);dim(df12)

en2019<-df1;fe2019<-df2;ma2019<-df3;ab2019<-df4;my2019<-df5;jn2019<-df6;jl2019<-df7;ag2019<-df8;se2019<-df9;oc2019<-df10;no2019<-df11;di2019<-df12

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

#A�O 2020 ####
{
  df1 <- list.files(pattern = "en2020.RDS") %>%
    map_dfr(readRDS)
  
  df2 <- list.files(pattern = "fe2020.RDS") %>%
    map_dfr(readRDS)
  
  df3 <- list.files(pattern = "ma2020.RDS") %>%
    map_dfr(readRDS)
  
  df4 <- list.files(pattern = "ab2020.RDS") %>%
    map_dfr(readRDS)
  
  df5 <- list.files(pattern = "my2020.RDS") %>%
    map_dfr(readRDS)
  
  df6 <- list.files(pattern = "jn2020.RDS") %>%
    map_dfr(readRDS)
  
  df7 <- list.files(pattern = "jl2020.RDS") %>%
    map_dfr(readRDS)
  
  df8 <- list.files(pattern = "ag2020.RDS") %>%
    map_dfr(readRDS)
  
  df9 <- list.files(pattern = "se2020.RDS") %>%
    map_dfr(readRDS)
  
  df10 <- list.files(pattern = "oc2020.RDS") %>%
    map_dfr(readRDS)
  
  df11 <- list.files(pattern = "no2020.RDS") %>%
    map_dfr(readRDS)
  
  df12 <- list.files(pattern = "di2020.RDS") %>%
    map_dfr(readRDS)
}

dim(df1);dim(df2);dim(df3);dim(df4);dim(df5);dim(df6);dim(df7);dim(df8);dim(df9);dim(df10);dim(df11);dim(df12)

en2020<-df1;fe2020<-df2;ma2020<-df3;ab2020<-df4;my2020<-df5;jn2020<-df6;jl2020<-df7;ag2020<-df8;se2020<-df9;oc2020<-df10;no2020<-df11;di2020<-df12

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

#A�O 2021 ####
{
  df1 <- list.files(pattern = "en2021.RDS") %>%
    map_dfr(readRDS)
  
  df2 <- list.files(pattern = "fe2021.RDS") %>%
    map_dfr(readRDS)
  
  df3 <- list.files(pattern = "ma2021.RDS") %>%
    map_dfr(readRDS)
  
  df4 <- list.files(pattern = "ab2021.RDS") %>%
    map_dfr(readRDS)
  
  df5 <- list.files(pattern = "my2021.RDS") %>%
    map_dfr(readRDS)
  
  df6 <- list.files(pattern = "jn2021.RDS") %>%
    map_dfr(readRDS)
  
  df7 <- list.files(pattern = "jl2021.RDS") %>%
    map_dfr(readRDS)
}

dim(df1);dim(df2);dim(df3);dim(df4);dim(df5);dim(df6);dim(df7)

en2021<-df1;fe2021<-df2;ma2021<-df3;ab2021<-df4;my2021<-df5;jn2021<-df6;jl2021<-df7

saveRDS(en2021,file="en2021.RDS")
saveRDS(fe2021,file="fe2021.RDS")
saveRDS(ma2021,file="ma2021.RDS")
saveRDS(ab2021,file="ab2021.RDS")
saveRDS(my2021,file="my2021.RDS")
saveRDS(jn2021,file="jn2021.RDS")
saveRDS(jl2021,file="jl2021.RDS")



en2016_1<-en2016[,-17];fe2016_1<-fe2016[,-17];ma2016_1<-ma2016[,-17];ab2016_1<-ab2016[,-17];my2016_1<-my2016[,-17];jn2016_1<-jn2016[,-17]
jl2016_1<-jl2016[,-17];ag2016_1<-ag2016[,-17];se2016_1<-se2016[,-17];oc2016_1<-oc2016[,-17];no2016_1<-no2016[,-17];di2016_1<-di2016[,-17]

fe2017_1<-fe2017[,-17];ma2017_1<-ma2017[,-17];ab2017_1<-ab2017[,-17];my2017_1<-my2017[,-17];jn2017_1<-jn2017[,-17]
jl2017_1<-jl2017[,-17];ag2017_1<-ag2017[,-17];se2017_1<-se2017[,-17];oc2017_1<-oc2017[,-17]

variables<-c("Bancos","Caja y Bancos en ME / Obligaciones a la Vista ME ( N� de veces)","Caja y Bancos MN / Obligaciones a la Vista MN ( N� de veces )","Cr�ditos Atrasados (criterio SBS)* / Cr�ditos Directos",
             "Cr�ditos Atrasados con m�s de 90 d�as de atraso / Cr�ditos Directos","Cr�ditos Atrasados ME (criterio SBS)* / Cr�ditos Directos ME","Cr�ditos Atrasados MN (criterio SBS)* / Cr�ditos Directos MN",
             "Cr�ditos Directos / Personal ( S/ Miles )","Cr�ditos Refinanciados y Reestructurados / Cr�ditos Directos","Dep�sitos / N�mero de Oficinas ( S/ Miles )","Gastos de Administraci�n Anualizados / Activo Productivo Promedio",
             "Gastos de Operaci�n / Margen Financiero Total","Ingresos Financieros / Ingresos Totales","Ingresos Financieros Anualizados / Activo Productivo Promedio","Pasivo Total / Capital Social y Reservas ( N� de veces )",
             "Periodo","Provisiones / Cr�ditos Atrasados","Ratio de Capital Global (al mes anterior)","Ratio de Liquidez ME (Promedio de saldos del mes)","Ratio de Liquidez MN (Promedio de saldos del mes)",
             "Utilidad Neta Anualizada / Activo Promedio","Utilidad Neta Anualizada / Patrimonio Promedio")
variables<-stri_trans_general(variables,"Latin-ASCII")

names(en2016_1)<-variables;names(fe2016_1)<-variables;names(ma2016_1)<-variables;names(ab2016_1)<-variables;names(my2016_1)<-variables;names(jn2016_1)<-variables;names(jl2016_1)<-variables;names(ag2016_1)<-variables;names(se2016_1)<-variables;names(oc2016_1)<-variables;names(no2016_1)<-variables;names(di2016_1)<-variables
names(en2017)<-variables;names(fe2017_1)<-variables;names(ma2017_1)<-variables;names(ab2017_1)<-variables;names(my2017_1)<-variables;names(jn2017_1)<-variables;names(jl2017_1)<-variables;names(ag2017_1)<-variables;names(se2017_1)<-variables;names(oc2017_1)<-variables;names(no2017)<-variables;names(di2017)<-variables
names(en2018)<-variables;names(fe2018)<-variables;names(ma2018)<-variables;names(ab2018)<-variables;names(my2018)<-variables;names(jn2018)<-variables;names(jl2018)<-variables;names(ag2018)<-variables;names(se2018)<-variables;names(oc2018)<-variables;names(no2018)<-variables;names(di2018)<-variables
names(en2019)<-variables;names(fe2019)<-variables;names(ma2019)<-variables;names(ab2019)<-variables;names(my2019)<-variables;names(jn2019)<-variables;names(jl2019)<-variables;names(ag2019)<-variables;names(se2019)<-variables;names(oc2019)<-variables;names(no2019)<-variables;names(di2019)<-variables
names(en2020)<-variables;names(fe2020)<-variables;names(ma2020)<-variables;names(ab2020)<-variables;names(my2020)<-variables;names(jn2020)<-variables;names(jl2020)<-variables;names(ag2020)<-variables;names(se2020)<-variables;names(oc2020)<-variables;names(no2020)<-variables;names(di2020)<-variables
names(en2021)<-variables;names(fe2021)<-variables;names(ma2021)<-variables;names(ab2021)<-variables;names(my2021)<-variables;names(jn2021)<-variables;names(jl2021)<-variables

banca_multiple<-rbind(en2016_1,fe2016_1,ma2016_1,ab2016_1,my2016_1,jn2016_1,jl2016_1,ag2016_1,se2016_1,oc2016_1,no2016_1,di2016_1,
                      en2017,fe2017_1,ma2017_1,ab2017_1,my2017_1,jn2017_1,jl2017_1,ag2017_1,se2017_1,oc2017_1,no2017,di2017,
                      en2018,fe2018,ma2018,ab2018,my2018,jn2018,jl2018,ag2018,se2018,oc2018,no2018,di2018,
                      en2019,fe2019,ma2019,ab2019,my2019,jn2019,jl2019,ag2019,se2019,oc2019,no2019,di2019,
                      en2020,fe2020,ma2020,ab2020,my2020,jn2020,jl2020,ag2020,se2020,oc2020,no2020,di2020,
                      en2021,fe2021,ma2021,ab2021,my2021,jn2021,jl2021)

setwd("C:/Users/Administrator/Documents/GitHub/Sector-Financiero-Peru/data/dataprocesada/Informacion Estadistica de Banca Multiple/Indicadores de las Empresas Bancarias/Indicadores Financieros")

banca_multiple<-as.data.frame(banca_multiple)
total_banca_multiple<-banca_multiple[banca_multiple$Bancos=="Total Banca Multiple",]
banca_multiple<-banca_multiple[!banca_multiple$Bancos=="Total Banca Multiple",]


saveRDS(banca_multiple,file="banca_multiple.RDS")
write.csv(banca_multiple, "banca_multiple.csv",fileEncoding = "UTF-8",row.names = FALSE)
saveRDS(total_banca_multiple,file="total_banca_multiple.RDS")
write.csv(total_banca_multiple, "total_banca_multiple.csv",fileEncoding = "UTF-8",row.names = FALSE)

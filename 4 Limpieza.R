
# MOROSIDAD (CRITERIO SBS) 
library(xts)
library(dygraphs)
library(dplyr)
library(tidyr)
library(readxl)
library(tidyverse)

setwd("C:/Users/Jose/Documents/GitHub/Sector-Financiero-Peru/data/dataprocesada/Indicadores_Financieros")
fn<-"Créditos Atrasados MN (criterio SBS)* / Créditos Directos MN"

  dim(df1)
  dim(df2)
  dim(df3)
  dim(df4)
  dim(df5)
  dim(df6)
  dim(df7)
  dim(df8)
  dim(df9)
  dim(df10)
  dim(df11)
  dim(df12)
#VER FILAS Y COLUMNAS

################################### 2016  #############################################
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
# Deutsche no se registra desde JUL-16 (desde df7)
{
bd<-df1 %>%
  select(Periodo,Bancos,fn)
bd<-bd %>% spread(key = Bancos,value = fn)
bd1<-xts(bd[,-1],as.Date(bd$Periodo))

bd<-df2 %>%
  select(Periodo,Bancos,fn)
bd<-bd %>% spread(key = Bancos,value = fn)
bd2<-xts(bd[,-1],as.Date(bd$Periodo))

bd<-df3 %>%
  select(Periodo,Bancos,fn)
bd<-bd %>% spread(key = Bancos,value = fn)
bd3<-xts(bd[,-1],as.Date(bd$Periodo))

bd<-df4 %>%
  select(Periodo,Bancos,fn)
bd<-bd %>% spread(key = Bancos,value = fn)
bd4<-xts(bd[,-1],as.Date(bd$Periodo))

bd<-df5 %>%
  select(Periodo,Bancos,fn)
bd<-bd %>% spread(key = Bancos,value = fn)
bd5<-xts(bd[,-1],as.Date(bd$Periodo))

bd<-df6 %>%
  select(Periodo,Bancos,fn)
bd<-bd %>% spread(key = Bancos,value = fn)
bd6<-xts(bd[,-1],as.Date(bd$Periodo))

Deutsche<-df6[14,]
Deutsche[,-1]<-NA
names(Deutsche)<-names(df7)

Deutsche$Periodo<-as.Date("2016-07-31")
df7<-rbind(df7,Deutsche)
bd<-df7 %>%
select(Periodo,Bancos,fn)
bd<-bd %>% spread(key = Bancos,value = fn)
bd7<-xts(bd[,-1],as.Date(bd$Periodo))

names(Deutsche)<-names(df8)
Deutsche$Periodo<-as.Date("2016-08-31")
df8<-rbind(df8,Deutsche)
bd<-df8 %>%
  select(Periodo,Bancos,fn)
bd<-bd %>% spread(key = Bancos,value = fn)
bd8<-xts(bd[,-1],as.Date(bd$Periodo))

names(Deutsche)<-names(df9)
Deutsche$Periodo<-as.Date("2016-09-30")
df9<-rbind(df9,Deutsche)
bd<-df9 %>%
  select(Periodo,Bancos,fn)
bd<-bd %>% spread(key = Bancos,value = fn)
bd9<-xts(bd[,-1],as.Date(bd$Periodo))

names(Deutsche)<-names(df10)
Deutsche$Periodo<-as.Date("2016-10-31")
df10<-rbind(df10,Deutsche)
bd<-df10 %>%
  select(Periodo,Bancos,fn)
bd<-bd %>% spread(key = Bancos,value = fn)
bd10<-xts(bd[,-1],as.Date(bd$Periodo))

names(Deutsche)<-names(df11)
Deutsche$Periodo<-as.Date("2016-11-30")
df11<-rbind(df11,Deutsche)
bd<-df11 %>%
  select(Periodo,Bancos,fn)
bd<-bd %>% spread(key = Bancos,value = fn)
bd11<-xts(bd[,-1],as.Date(bd$Periodo))

names(Deutsche)<-names(df12)
Deutsche$Periodo<-as.Date("2016-12-31")
df12<-rbind(df12,Deutsche)
bd<-df12 %>%
  select(Periodo,Bancos,fn)
bd<-bd %>% spread(key = Bancos,value = fn)
bd12<-xts(bd[,-1],as.Date(bd$Periodo))
}

bd<-c(bd1,bd2,bd3,bd4,bd5,bd6,bd7,bd8,bd9,bd10,bd11,bd12)
mor_2016<-rbind(bd)




################################### 2017  #############################################
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

{
bd<-df1 %>%
  select(Periodo,Bancos,fn)
bd<-bd %>% spread(key = Bancos,value = fn)
bd1<-xts(bd[,-1],as.Date(bd$Periodo))

bd<-df2 %>%
  select(Periodo,Bancos,fn)
bd<-bd %>% spread(key = Bancos,value = fn)
bd2<-xts(bd[,-1],as.Date(bd$Periodo))

bd<-df3 %>%
  select(Periodo,Bancos,fn)
bd<-bd %>% spread(key = Bancos,value = fn)
bd3<-xts(bd[,-1],as.Date(bd$Periodo))

bd<-df4 %>%
  select(Periodo,Bancos,fn)
bd<-bd %>% spread(key = Bancos,value = fn)
bd4<-xts(bd[,-1],as.Date(bd$Periodo))

bd<-df5 %>%
  select(Periodo,Bancos,fn)
bd<-bd %>% spread(key = Bancos,value = fn)
bd5<-xts(bd[,-1],as.Date(bd$Periodo))

bd<-df6 %>%
  select(Periodo,Bancos,fn)
bd<-bd %>% spread(key = Bancos,value = fn)
bd6<-xts(bd[,-1],as.Date(bd$Periodo))

bd<-df7 %>%
  select(Periodo,Bancos,fn)
bd<-bd %>% spread(key = Bancos,value = fn)
bd7<-xts(bd[,-1],as.Date(bd$Periodo))

bd<-df8 %>%
  select(Periodo,Bancos,fn)
bd<-bd %>% spread(key = Bancos,value = fn)
bd8<-xts(bd[,-1],as.Date(bd$Periodo))

bd<-df9 %>%
  select(Periodo,Bancos,fn)
bd<-bd %>% spread(key = Bancos,value = fn)
bd9<-xts(bd[,-1],as.Date(bd$Periodo))

bd<-df10 %>%
  select(Periodo,Bancos,fn)
bd<-bd %>% spread(key = Bancos,value = fn)
bd10<-xts(bd[,-1],as.Date(bd$Periodo))

bd<-df11 %>%
  select(Periodo,Bancos,fn)
bd<-bd %>% spread(key = Bancos,value = fn)
bd11<-xts(bd[,-1],as.Date(bd$Periodo))

bd<-df12 %>%
  select(Periodo,Bancos,fn)
bd<-bd %>% spread(key = Bancos,value = fn)
bd12<-xts(bd[,-1],as.Date(bd$Periodo))
}

bd<-c(bd1,bd2,bd3,bd4,bd5,bd6,bd7,bd8,bd9,bd10,bd11,bd12)
mor_2017<-rbind.xts(bd)



################################### 2018  #############################################

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

{
bd<-df1 %>%
  select(Periodo,Bancos,fn)
bd<-bd %>% spread(key = Bancos,value = fn)
bd1<-xts(bd[,-1],as.Date(bd$Periodo))

bd<-df2 %>%
  select(Periodo,Bancos,fn)
bd<-bd %>% spread(key = Bancos,value = fn)
bd2<-xts(bd[,-1],as.Date(bd$Periodo))

bd<-df3 %>%
  select(Periodo,Bancos,fn)
bd<-bd %>% spread(key = Bancos,value = fn)
bd3<-xts(bd[,-1],as.Date(bd$Periodo))

bd<-df4 %>%
  select(Periodo,Bancos,fn)
bd<-bd %>% spread(key = Bancos,value = fn)
bd4<-xts(bd[,-1],as.Date(bd$Periodo))

bd<-df5 %>%
  select(Periodo,Bancos,fn)
bd<-bd %>% spread(key = Bancos,value = fn)
bd5<-xts(bd[,-1],as.Date(bd$Periodo))

bd<-df6 %>%
  select(Periodo,Bancos,fn)
bd<-bd %>% spread(key = Bancos,value = fn)
bd6<-xts(bd[,-1],as.Date(bd$Periodo))

bd<-df7 %>%
  select(Periodo,Bancos,fn)
bd<-bd %>% spread(key = Bancos,value = fn)
bd7<-xts(bd[,-1],as.Date(bd$Periodo))

bd<-df8 %>%
  select(Periodo,Bancos,fn)
bd<-bd %>% spread(key = Bancos,value = fn)
bd8<-xts(bd[,-1],as.Date(bd$Periodo))

bd<-df9 %>%
  select(Periodo,Bancos,fn)
bd<-bd %>% spread(key = Bancos,value = fn)
bd9<-xts(bd[,-1],as.Date(bd$Periodo))

bd<-df10 %>%
  select(Periodo,Bancos,fn)
bd<-bd %>% spread(key = Bancos,value = fn)
bd10<-xts(bd[,-1],as.Date(bd$Periodo))

bd<-df11 %>%
  select(Periodo,Bancos,fn)
bd<-bd %>% spread(key = Bancos,value = fn)
bd11<-xts(bd[,-1],as.Date(bd$Periodo))

bd<-df12 %>%
  select(Periodo,Bancos,fn)
bd<-bd %>% spread(key = Bancos,value = fn)
bd12<-xts(bd[,-1],as.Date(bd$Periodo))
}

bd<-c(bd1,bd2,bd3,bd4,bd5,bd6,bd7,bd8,bd9,bd10,bd11,bd12)
mor_2018<-rbind.xts(bd)
View(mor_2018)


################################### 2019  #############################################

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

{
bd<-df1 %>%
  select(Periodo,Bancos,fn)
bd<-bd %>% spread(key = Bancos,value = fn)
bd1<-xts(bd[,-1],as.Date(bd$Periodo))

bd<-df2 %>%
  select(Periodo,Bancos,fn)
bd<-bd %>% spread(key = Bancos,value = fn)
bd2<-xts(bd[,-1],as.Date(bd$Periodo))

Cencosud<-df2[2,]
Cencosud[,-1]<-NA


names(Cencosud)<-names(df3)
Cencosud$Periodo<-as.Date("2019-03-31")
df3<-rbind(df3,Cencosud)
bd<-df3 %>%
  select(Periodo,Bancos,fn)
bd<-bd %>% spread(key = Bancos,value = fn)
bd3<-xts(bd[,-1],as.Date(bd$Periodo))

names(Cencosud)<-names(df4)
Cencosud$Periodo<-as.Date("2019-04-30")
df4<-rbind(df4,Cencosud)
bd<-df4 %>%
  select(Periodo,Bancos,fn)
bd<-bd %>% spread(key = Bancos,value = fn)
bd4<-xts(bd[,-1],as.Date(bd$Periodo))

names(Cencosud)<-names(df5)
Cencosud$Periodo<-as.Date("2019-05-31")
df5<-rbind(df5,Cencosud)
bd<-df5 %>%
  select(Periodo,Bancos,fn)
bd<-bd %>% spread(key = Bancos,value = fn)
bd5<-xts(bd[,-1],as.Date(bd$Periodo))

names(Cencosud)<-names(df6)
Cencosud$Periodo<-as.Date("2019-06-30")
df6<-rbind(df6,Cencosud)
bd<-df6 %>%
  select(Periodo,Bancos,fn)
bd<-bd %>% spread(key = Bancos,value = fn)
bd6<-xts(bd[,-1],as.Date(bd$Periodo))

names(Cencosud)<-names(df7)
Cencosud$Periodo<-as.Date("2019-07-31")
df7<-rbind(df7,Cencosud)
bd<-df7 %>%
  select(Periodo,Bancos,fn)
bd<-bd %>% spread(key = Bancos,value = fn)
bd7<-xts(bd[,-1],as.Date(bd$Periodo))

names(Cencosud)<-names(df8)
Cencosud$Periodo<-as.Date("2019-08-31")
df8<-rbind(df8,Cencosud)
bd<-df8 %>%
  select(Periodo,Bancos,fn)
bd<-bd %>% spread(key = Bancos,value = fn)
bd8<-xts(bd[,-1],as.Date(bd$Periodo))

names(Cencosud)<-names(df9)
Cencosud$Periodo<-as.Date("2019-09-30")
df9<-rbind(df9,Cencosud)
bd<-df9 %>%
  select(Periodo,Bancos,fn)
bd<-bd %>% spread(key = Bancos,value = fn)
bd9<-xts(bd[,-1],as.Date(bd$Periodo))

names(Cencosud)<-names(df10)
Cencosud$Periodo<-as.Date("2019-10-31")
df10<-rbind(df10,Cencosud)
bd<-df10 %>%
  select(Periodo,Bancos,fn)
bd<-bd %>% spread(key = Bancos,value = fn)
bd10<-xts(bd[,-1],as.Date(bd$Periodo))

names(Cencosud)<-names(df11)
Cencosud$Periodo<-as.Date("2019-11-30")
df11<-rbind(df11,Cencosud)
bd<-df11 %>%
  select(Periodo,Bancos,fn)
bd<-bd %>% spread(key = Bancos,value = fn)
bd11<-xts(bd[,-1],as.Date(bd$Periodo))

names(Cencosud)<-names(df12)
Cencosud$Periodo<-as.Date("2019-12-31")
df12<-rbind(df12,Cencosud)
bd<-df12 %>%
  select(Periodo,Bancos,fn)
bd<-bd %>% spread(key = Bancos,value = fn)
bd12<-xts(bd[,-1],as.Date(bd$Periodo))
}

bd<-rbind(bd1,bd2,bd3,bd4,bd5,bd6,bd7,bd8,bd9,bd10,bd11,bd12)
mor_2019<-rbind.xts(bd)



################################### 2020  #############################################

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



{
 
  China<-df7[12,]
  China[,-1]<-NA
  
  
  names(China)<-names(df1)
  China$Periodo<-as.Date("2020-01-31")
  df1<-rbind(df1,China)
   bd<-df1 %>%
    select(Periodo,Bancos,fn)
  bd<-bd %>% spread(key = Bancos,value = fn)
  bd1<-xts(bd[,-1],as.Date(bd$Periodo))
  
  names(China)<-names(df2)
  China$Periodo<-as.Date("2020-02-29")
  df2<-rbind(df2,China)
  bd<-df2 %>%
    select(Periodo,Bancos,fn)
  bd<-bd %>% spread(key = Bancos,value = fn)
  bd2<-xts(bd[,-1],as.Date(bd$Periodo))
  
  names(China)<-names(df3)
  China$Periodo<-as.Date("2020-03-31")
  df3<-rbind(df3,China)
  bd<-df3 %>%
    select(Periodo,Bancos,fn)
  bd<-bd %>% spread(key = Bancos,value = fn)
  bd3<-xts(bd[,-1],as.Date(bd$Periodo))
  
  names(China)<-names(df4)
  China$Periodo<-as.Date("2020-04-30")
  df4<-rbind(df4,China)
  bd<-df4 %>%
    select(Periodo,Bancos,fn)
  bd<-bd %>% spread(key = Bancos,value = fn)
  bd4<-xts(bd[,-1],as.Date(bd$Periodo))
  
  names(China)<-names(df5)
  China$Periodo<-as.Date("2020-05-31")
  df5<-rbind(df5,China)
  bd<-df5 %>%
    select(Periodo,Bancos,fn)
  bd<-bd %>% spread(key = Bancos,value = fn)
  bd5<-xts(bd[,-1],as.Date(bd$Periodo))
  
  names(China)<-names(df6)
  China$Periodo<-as.Date("2020-06-30")
  df6<-rbind(df6,China)
  bd<-df6 %>%
    select(Periodo,Bancos,fn)
  bd<-bd %>% spread(key = Bancos,value = fn)
  bd6<-xts(bd[,-1],as.Date(bd$Periodo))
  
# SE CONSIDERA BANCO CHINA
  bd<-df7 %>%
    select(Periodo,Bancos,fn)
  bd<-bd %>% spread(key = Bancos,value = fn)
  bd7<-xts(bd[,-1],as.Date(bd$Periodo))
  
  bd<-df8 %>%
    select(Periodo,Bancos,fn)
  bd<-bd %>% spread(key = Bancos,value = fn)
  bd8<-xts(bd[,-1],as.Date(bd$Periodo))
  
  bd<-df9 %>%
    select(Periodo,Bancos,fn)
  bd<-bd %>% spread(key = Bancos,value = fn)
  bd9<-xts(bd[,-1],as.Date(bd$Periodo))
  
  bd<-df10 %>%
    select(Periodo,Bancos,fn)
  bd<-bd %>% spread(key = Bancos,value = fn)
  bd10<-xts(bd[,-1],as.Date(bd$Periodo))
  
  bd<-df11 %>%
    select(Periodo,Bancos,fn)
  bd<-bd %>% spread(key = Bancos,value = fn)
  bd11<-xts(bd[,-1],as.Date(bd$Periodo))
  
  bd<-df12 %>%
    select(Periodo,Bancos,fn)
  bd<-bd %>% spread(key = Bancos,value = fn)
  bd12<-xts(bd[,-1],as.Date(bd$Periodo))
}

bd<-rbind(bd1,bd2,bd3,bd4,bd5,bd6,bd7,bd8,bd9,bd10,bd11,bd12)
mor_2020<-rbind.xts(bd)



Deutsche<-NA

mor_2017<-cbind.xts(mor_2017,Deutsche)
mor_2018<-cbind.xts(mor_2018,Deutsche)
mor_2019<-cbind.xts(mor_2019,Deutsche)
mor_2020<-cbind.xts(mor_2020,Deutsche)

dim(mor_2016);dim(mor_2017);dim(mor_2018);dim(mor_2019);dim(mor_2020)


mor_2016<-mor_2016[ , order(c(names(mor_2016)))]
mor_2017<-mor_2017[ , order(c(names(mor_2017)))]
mor_2018<-mor_2018[ , order(c(names(mor_2018)))]
mor_2019<-mor_2019[ , order(c(names(mor_2019)))]
mor_2020<-mor_2020[ , order(c(names(mor_2020)))]





saveRDS(mor_2016,file="mor_2016.RDS")
saveRDS(mor_2017,file="mor_2017.RDS")
saveRDS(mor_2018,file="mor_2018.RDS")
saveRDS(mor_2019,file="mor_2019.RDS")
saveRDS(mor_2020,file="mor_2020.RDS")





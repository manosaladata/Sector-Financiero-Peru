{
library(xts)
library(dygraphs)
library(dplyr)
library(tidyr)
library(readxl)
library(tidyverse)
}

setwd("C:/Users/Jose/Documents/GitHub/Sector-Financiero-Peru/data/dataprocesada/Informacion Estadistica de Banca Multiple/Indicadores de las Empresas Bancarias/Indicadores Financieros")


#AÑO 2016 ####
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

Deutsche<-df6[14,];Deutsche[1,]<-NA;Deutsche[,1]<-"Deutsche"

Deutsche$Periodo<-as.Date("2016-07-31");names(Deutsche)<-names(df7);df7<-rbind(df7,Deutsche)
Deutsche$Periodo<-as.Date("2016-08-31");names(Deutsche)<-names(df8);df8<-rbind(df8,Deutsche)
Deutsche$Periodo<-as.Date("2016-09-30");names(Deutsche)<-names(df9);df9<-rbind(df9,Deutsche)
Deutsche$Periodo<-as.Date("2016-10-31");names(Deutsche)<-names(df10);df10<-rbind(df10,Deutsche)
Deutsche$Periodo<-as.Date("2016-11-30");names(Deutsche)<-names(df11);df11<-rbind(df11,Deutsche)
Deutsche$Periodo<-as.Date("2016-12-31");names(Deutsche)<-names(df12);df12<-rbind(df12,Deutsche)

df1<-df1[order(df1$Bancos),];df2<-df2[order(df2$Bancos),];df3<-df3[order(df3$Bancos),];df4<-df4[order(df4$Bancos),]
df5<-df5[order(df5$Bancos),];df6<-df6[order(df6$Bancos),];df7<-df7[order(df7$Bancos),];df8<-df8[order(df8$Bancos),];df9<-df9[order(df9$Bancos),]
df10<-df10[order(df10$Bancos),];df11<-df11[order(df11$Bancos),];df12<-df12[order(df12$Bancos),]

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



#AÑO 2017 ####
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
Posicion_Global_Promedio<-df2[,16];Posicion_Global_Promedio[,1]<-NA

dim(df1);dim(df2);dim(df3);dim(df4);dim(df5);dim(df6);dim(df7);dim(df8);dim(df9);dim(df10);dim(df11);dim(df12)

df1<-cbind(df1[,c(1:15)],Posicion_Global_Promedio,df1[,c(16:22)])
df11<-cbind(df11[,c(1:15)],Posicion_Global_Promedio,df11[,c(16:22)])
df12<-cbind(df12[,c(1:15)],Posicion_Global_Promedio,df12[,c(16:22)])



Deutsche[-1,]<-NA;Deutsche$Periodo<-as.Date("2017-01-31");names(Deutsche)<-names(df1);df1<-rbind(df1,Deutsche)
Deutsche[-1,]<-NA;Deutsche[,1]<-"Deutsche";Deutsche$Periodo<-as.Date("2017-02-28");names(Deutsche)<-names(df2);df2<-rbind(df2,Deutsche)
Deutsche[1,]<-NA;Deutsche[,1]<-"Deutsche";Deutsche$Periodo<-as.Date("2017-03-31");names(Deutsche)<-names(df3);df3<-rbind(df3,Deutsche)
Deutsche[1,]<-NA;Deutsche[,1]<-"Deutsche";Deutsche$Periodo<-as.Date("2017-04-30");names(Deutsche)<-names(df4);df4<-rbind(df4,Deutsche)
Deutsche[1,]<-NA;Deutsche[,1]<-"Deutsche";Deutsche$Periodo<-as.Date("2017-05-31");names(Deutsche)<-names(df5);df5<-rbind(df5,Deutsche)
Deutsche[1,]<-NA;Deutsche[,1]<-"Deutsche";Deutsche$Periodo<-as.Date("2017-06-30");names(Deutsche)<-names(df6);df6<-rbind(df6,Deutsche)
Deutsche[1,]<-NA;Deutsche[,1]<-"Deutsche";Deutsche$Periodo<-as.Date("2017-07-31");names(Deutsche)<-names(df7);df7<-rbind(df7,Deutsche)
Deutsche[1,]<-NA;Deutsche[,1]<-"Deutsche";Deutsche$Periodo<-as.Date("2017-08-31");names(Deutsche)<-names(df8);df8<-rbind(df8,Deutsche)
Deutsche[1,]<-NA;Deutsche[,1]<-"Deutsche";Deutsche$Periodo<-as.Date("2017-09-30");names(Deutsche)<-names(df9);df9<-rbind(df9,Deutsche)
Deutsche[1,]<-NA;Deutsche[,1]<-"Deutsche";Deutsche$Periodo<-as.Date("2017-10-31");names(Deutsche)<-names(df10);df10<-rbind(df10,Deutsche)
Deutsche[1,]<-NA;Deutsche[,1]<-"Deutsche";Deutsche$Periodo<-as.Date("2017-11-30");names(Deutsche)<-names(df11);df11<-rbind(df11,Deutsche)
Deutsche[1,]<-NA;Deutsche[,1]<-"Deutsche";Deutsche$Periodo<-as.Date("2017-12-31");names(Deutsche)<-names(df12);df12<-rbind(df12,Deutsche)

df1<-df1[order(df1$Bancos),];df2<-df2[order(df2$Bancos),];df3<-df3[order(df3$Bancos),];df4<-df4[order(df4$Bancos),]
df5<-df5[order(df5$Bancos),];df6<-df6[order(df6$Bancos),];df7<-df7[order(df7$Bancos),];df8<-df8[order(df8$Bancos),];df9<-df9[order(df9$Bancos),]
df10<-df10[order(df10$Bancos),];df11<-df11[order(df11$Bancos),];df12<-df12[order(df12$Bancos),]

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

#View(Posicion_Global_Promedio)

#AÑO 2018 ####
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


Ratio_Capital_Global<-en2016[,16];Posicion_Global_Promedio[,1]<-NA

dim(df1);dim(df2);dim(df3);dim(df4);dim(df5);dim(df6);dim(df7);dim(df8);dim(df9);dim(df10);dim(df11);dim(df12)

df1<-cbind(df1[,c(1:15)],Posicion_Global_Promedio,df1[,c(16:22)])
df11<-cbind(df11[,c(1:15)],Posicion_Global_Promedio,df11[,c(16:22)])
df12<-cbind(df12[,c(1:15)],Posicion_Global_Promedio,df12[,c(16:22)])

Deutsche<-df6[14,];Deutsche[1,]<-NA;Deutsche[,1]<-"Deutsche"

Deutsche$Periodo<-as.Date("2018-01-31");names(Deutsche)<-names(df1);df1<-rbind(df1,Deutsche)
Deutsche$Periodo<-as.Date("2018-02-28");names(Deutsche)<-names(df2);df2<-rbind(df2,Deutsche)
Deutsche$Periodo<-as.Date("2018-03-31");names(Deutsche)<-names(df3);df3<-rbind(df3,Deutsche)
Deutsche$Periodo<-as.Date("2018-04-30");names(Deutsche)<-names(df4);df4<-rbind(df4,Deutsche)
Deutsche$Periodo<-as.Date("2018-05-31");names(Deutsche)<-names(df5);df5<-rbind(df5,Deutsche)
Deutsche$Periodo<-as.Date("2018-06-30");names(Deutsche)<-names(df6);df6<-rbind(df6,Deutsche)
Deutsche$Periodo<-as.Date("2018-07-31");names(Deutsche)<-names(df7);df7<-rbind(df7,Deutsche)
Deutsche$Periodo<-as.Date("2018-08-31");names(Deutsche)<-names(df8);df8<-rbind(df8,Deutsche)
Deutsche$Periodo<-as.Date("2018-09-30");names(Deutsche)<-names(df9);df9<-rbind(df9,Deutsche)
Deutsche$Periodo<-as.Date("2018-10-31");names(Deutsche)<-names(df10);df10<-rbind(df10,Deutsche)
Deutsche$Periodo<-as.Date("2018-11-30");names(Deutsche)<-names(df11);df11<-rbind(df11,Deutsche)
Deutsche$Periodo<-as.Date("2018-12-31");names(Deutsche)<-names(df12);df12<-rbind(df12,Deutsche)

dim(df1);dim(df2);dim(df3);dim(df4);dim(df5);dim(df6);dim(df7);dim(df8);dim(df9);dim(df10);dim(df11);dim(df12)

df1<-df1[order(df1$Bancos),];df2<-df2[order(df2$Bancos),];df3<-df3[order(df3$Bancos),];df4<-df4[order(df4$Bancos),]
df5<-df5[order(df5$Bancos),];df6<-df6[order(df6$Bancos),];df7<-df7[order(df7$Bancos),];df8<-df8[order(df8$Bancos),];df9<-df9[order(df9$Bancos),]
df10<-df10[order(df10$Bancos),];df11<-df11[order(df11$Bancos),];df12<-df12[order(df12$Bancos),]

PosGlobprom_PatEfec<-as.data.frame(matrix(nrow = 18,ncol = 1));names(PosGlobprom_PatEfec)<-c("Posición Global Promedio / Patrimonio Efectivo **")
df1<-cbind(df1,PosGlobprom_PatEfec);df2<-cbind(df2,PosGlobprom_PatEfec);df3<-cbind(df3,PosGlobprom_PatEfec);df4<-cbind(df4,PosGlobprom_PatEfec)
df5<-cbind(df5,PosGlobprom_PatEfec);df6<-cbind(df6,PosGlobprom_PatEfec);df7<-cbind(df7,PosGlobprom_PatEfec);df8<-cbind(df8,PosGlobprom_PatEfec);df9<-cbind(df9,PosGlobprom_PatEfec)
df10<-cbind(df10,PosGlobprom_PatEfec);df11<-cbind(df11,PosGlobprom_PatEfec);df12<-cbind(df12,PosGlobprom_PatEfec)

df1<-df1[order(names(df1))];df2<-df2[order(names(df2))];df3<-df3[order(names(df3))];df4<-df4[order(names(df4))];df5<-df5[order(names(df5))];df6<-df6[order(names(df6))];df7<-df7[order(names(df7))]
df8<-df8[order(names(df8))];df9<-df9[order(names(df9))];df10<-df10[order(names(df10))];df11<-df11[order(names(df11))];df12<-df12[order(names(df12))]




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


#AÑO 2019 ####
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

#AÑO 2020 ####
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

names(en2016);names(en2017);names(en2018);names(en2019);names(en2020)

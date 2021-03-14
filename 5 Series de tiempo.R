
# SERIE DE TIEMPO 
library(xts)
library(dygraphs)
library(dplyr)
library(tidyr)
library(readxl)
library(tidyverse)
library(lubridate) 

setwd("C:/Users/Jose/Documents/GitHub/Sector-Financiero-Peru/data/dataprocesada/Indicadores_Financieros/")


fn<-"Créditos Atrasados MN (criterio SBS)* / Créditos Directos MN"



anio_2016<-readRDS("mor_2016.RDS", refhook = NULL)
anio_2017<-readRDS("mor_2017.RDS", refhook = NULL)
anio_2018<-readRDS("mor_2018.RDS", refhook = NULL)
anio_2019<-readRDS("mor_2019.RDS", refhook = NULL)
anio_2020<-readRDS("mor_2020.RDS", refhook = NULL)



#names(anio_2016);names(anio_2017);names(anio_2018);names(anio_2019);names(anio_2020)

data<-as.data.frame(rbind(anio_2016,anio_2017,anio_2018,anio_2019,anio_2020))

{
  fecha<-c(as.Date(c("2016-01-31",
                   "2016-02-29",
                   "2016-03-31",
                   "2016-04-30",
                   "2016-05-31",
                   "2016-06-30",
                   "2016-07-31",
                   "2016-08-31",
                   "2016-09-30",
                   "2016-10-31",
                   "2016-11-30",
                   "2016-12-31",
                   "2017-01-31",
                   "2017-02-28",
                   "2017-03-31",
                   "2017-04-30",
                   "2017-05-31",
                   "2017-06-30",
                   "2017-07-31",
                   "2017-08-31",
                   "2017-09-30",
                   "2017-10-31",
                   "2017-11-30",
                   "2017-12-31",
                   "2018-01-31",
                   "2018-02-28",
                   "2018-03-31",
                   "2018-04-30",
                   "2018-05-31",
                   "2018-06-30",
                   "2018-07-31",
                   "2018-08-31",
                   "2018-09-30",
                   "2018-10-31",
                   "2018-11-30",
                   "2018-12-31",
                   "2019-01-31",
                   "2019-02-28",
                   "2019-03-31",
                   "2019-04-30",
                   "2019-05-31",
                   "2019-06-30",
                   "2019-07-31",
                   "2019-08-31",
                   "2019-09-30",
                   "2019-10-31",
                   "2019-11-30",
                   "2019-12-31",
                   "2020-01-31",
                   "2020-02-29",
                   "2020-03-31",
                   "2020-04-30",
                   "2020-05-31",
                   "2020-06-30",
                   "2020-07-31",
                   "2020-08-31",
                   "2020-09-30",
                   "2020-10-31",
                   "2020-11-30",
                   "2020-12-31")))
}
data2<-cbind.data.frame(fecha,data)


setwd("C:/Users/Jose/Documents/GitHub/Sector-Financiero-Peru/data/dataprocesada/Indicadores_Financieros/")
write.csv(data, file="data_creditos_atrasados_MN.csv")



# Transpone todas las columnas menos la primer
df_transpose <- data.frame(t(data2[-1]))
# Añadimos los nombres de las columnas
colnames(df_transpose) <- data2[, 1]
View(df_transpose)













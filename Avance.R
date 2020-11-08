
library(dbplyr)
library(xlsx)
library(readxl)
library(ggplot2)

setwd("C:/Users/Jose/Desktop/Universidad/Manos a la Data/Investigacion")


ene19BG<-read_xlsx("B-2201-en2019.XLS", sheet = 1)
ene19BG<-ene19BG[!is.na(ene19BG$`Balance General por Empresa Bancaria...1`),]
ene19BG<-ene19BG[!is.na(ene19BG$...2),]
ene19BG<-ene19BG[,-c(5,9,13,17,21,25,29,33,37,41,45,49,53,57,61,65,69,70,74,78)]

nombres<-ene19BG[1,]
nombres<-nombres[!is.na(nombres)]
nombres[nombres == "Activo"] <- "Cuenta"
nombres[nombres == "Banco Continental"] <- "Banco BBVA Perú"


ene19BG<-ene19BG[-c(2,3,5,6,8,9,11,12,14,15,17,18,20,21,23,24,26,27,29,30,32,33,
                    35,36,38,39,41,42,44,45,47,48,50,51,53,54,56,57,59,60)]
ene19BG<-ene19BG[-1,]
ene19BG<-ene19BG[!is.na(ene19BG$...4),]


names(ene19BG) <- NULL
names(ene19BG)<-nombres
ene19BG<-ene19BG[,-11]
#View(ene19BG)

######################################################################################################
######################################################################################################
######################################################################################################

feb19BG<-read_xlsx("B-2201-fe2019.XLS", sheet = 1)

feb19BG<-feb19BG[!is.na(feb19BG$`Balance General por Empresa Bancaria...1`),]
feb19BG<-feb19BG[!is.na(feb19BG$...2),]
feb19BG<-feb19BG[,-c(5,9,13,17,21,25,29,33,37,41,45,49,53,57,61,65,69,70,74,78)]

nombres<-feb19BG[1,]
nombres<-nombres[!is.na(nombres)]
nombres[nombres == "Activo"] <- "Cuenta"
nombres[nombres == "Banco Continental"] <- "Banco BBVA Perú"

feb19BG<-feb19BG[-c(2,3,5,6,8,9,11,12,14,15,17,18,20,21,23,24,26,27,29,30,32,33,
                    35,36,38,39,41,42,44,45,47,48,50,51,53,54,56,57,59,60)]
feb19BG<-feb19BG[-1,]
feb19BG<-feb19BG[!is.na(feb19BG$...4),]


names(feb19BG) <- NULL
names(feb19BG)<-nombres
feb19BG<-feb19BG[,-11]
#View(feb19BG)

######################################################################################################
######################################################################################################
######################################################################################################

mar19BG<-read_xlsx("B-2201-ma2019.XLS", sheet = 1)


mar19BG<-mar19BG[!is.na(mar19BG$`Balance General por Empresa Bancaria...1`),]
mar19BG<-mar19BG[!is.na(mar19BG$...2),]
mar19BG<-mar19BG[,-c(5,9,13,17,21,25,29,33,37,41,45,49,53,57,61,65,69,73)]

nombres<-mar19BG[1,]
nombres<-nombres[!is.na(nombres)]
nombres[nombres == "Activo"] <- "Cuenta"
nombres[nombres == "Banco Continental"] <- "Banco BBVA Perú"


mar19BG<-mar19BG[-c(2,3,5,6,8,9,11,12,14,15,17,18,20,21,23,24,26,27,29,30,32,33,
                    35,36,38,39,41,42,44,45,47,48,50,51,53,54,56,57)]
mar19BG<-mar19BG[-1,]
mar19BG<-mar19BG[!is.na(mar19BG$...4),]


names(mar19BG) <- NULL
names(mar19BG)<-nombres
#View(mar19BG)


######################################################################################################
######################################################################################################
######################################################################################################

abr19BG<-read_xlsx("B-2201-ab2019.XLS", sheet = 1)

abr19BG<-abr19BG[!is.na(abr19BG$`Balance General por Empresa Bancaria...1`),]
abr19BG<-abr19BG[!is.na(abr19BG$...2),]
abr19BG<-abr19BG[,-c(5,9,13,17,21,25,29,33,37,41,45,49,53,57,61,65,69,73)]

nombres<-abr19BG[1,]
nombres<-nombres[!is.na(nombres)]
nombres[nombres == "Activo"] <- "Cuenta"
nombres[nombres == "Banco Continental"] <- "Banco BBVA Perú"

abr19BG<-abr19BG[-c(2,3,5,6,8,9,11,12,14,15,17,18,20,21,23,24,26,27,29,30,32,33,
                    35,36,38,39,41,42,44,45,47,48,50,51,53,54,56,57)]
abr19BG<-abr19BG[-1,]
abr19BG<-abr19BG[!is.na(abr19BG$...4),]


names(abr19BG) <- NULL
names(abr19BG)<-nombres
#View(abr19BG)


######################################################################################################
######################################################################################################
######################################################################################################

may19BG<-read_xlsx("B-2201-my2019.XLS", sheet = 1)

may19BG<-may19BG[!is.na(may19BG$`Balance General por Empresa Bancaria...1`),]
may19BG<-may19BG[!is.na(may19BG$...2),]
may19BG<-may19BG[,-c(5,9,13,17,21,25,29,33,37,41,45,49,53,57,61,65,69,73)]

nombres<-may19BG[1,]
nombres<-nombres[!is.na(nombres)]
nombres[nombres == "Activo"] <- "Cuenta"
nombres[nombres == "Banco Continental"] <- "Banco BBVA Perú"

may19BG<-may19BG[-c(2,3,5,6,8,9,11,12,14,15,17,18,20,21,23,24,26,27,29,30,32,33,
                    35,36,38,39,41,42,44,45,47,48,50,51,53,54,56,57)]
may19BG<-may19BG[-1,]
may19BG<-may19BG[!is.na(may19BG$...4),]


names(may19BG) <- NULL
names(may19BG)<-nombres
#View(may19BG)


######################################################################################################
######################################################################################################
######################################################################################################

jun19BG<-read_xlsx("B-2201-jn2019.XLS", sheet = 1)

jun19BG<-jun19BG[!is.na(jun19BG$`Balance General por Empresa Bancaria...1`),]
jun19BG<-jun19BG[!is.na(jun19BG$...2),]
jun19BG<-jun19BG[,-c(5,9,13,17,21,25,29,33,37,41,45,49,53,57,61,65,69,73)]

nombres<-jun19BG[1,]
nombres<-nombres[!is.na(nombres)]
nombres[nombres == "Activo"] <- "Cuenta"
nombres[nombres == "Banco Continental"] <- "Banco BBVA Perú"

jun19BG<-jun19BG[-c(2,3,5,6,8,9,11,12,14,15,17,18,20,21,23,24,26,27,29,30,32,33,
                    35,36,38,39,41,42,44,45,47,48,50,51,53,54,56,57)]
jun19BG<-jun19BG[-1,]
jun19BG<-jun19BG[!is.na(jun19BG$...4),]


names(jun19BG) <- NULL
names(jun19BG)<-nombres
#View(jun19BG)

######################################################################################################
######################################################################################################
######################################################################################################

jul19BG<-read_xlsx("B-2201-jl2019.XLS", sheet = 1)

jul19BG<-jul19BG[!is.na(jul19BG$`Balance General por Empresa Bancaria...1`),]
jul19BG<-jul19BG[!is.na(jul19BG$...2),]
jul19BG<-jul19BG[,-c(5,9,13,17,21,25,29,33,37,41,45,49,53,57,61,65,69,73)]

nombres<-jul19BG[1,]
nombres<-nombres[!is.na(nombres)]
nombres[nombres == "Activo"] <- "Cuenta"


jul19BG<-jul19BG[-c(2,3,5,6,8,9,11,12,14,15,17,18,20,21,23,24,26,27,29,30,32,33,
                    35,36,38,39,41,42,44,45,47,48,50,51,53,54,56,57)]
jul19BG<-jul19BG[-1,]
jul19BG<-jul19BG[!is.na(jul19BG$...4),]


names(jul19BG) <- NULL
names(jul19BG)<-nombres
#View(jul19BG)

######################################################################################################
######################################################################################################
######################################################################################################

ago19BG<-read_xlsx("B-2201-ag2019.XLS", sheet = 1)

ago19BG<-ago19BG[!is.na(ago19BG$`Balance General por Empresa Bancaria...1`),]
ago19BG<-ago19BG[!is.na(ago19BG$...2),]
ago19BG<-ago19BG[,-c(5,9,13,17,21,25,29,33,37,41,45,49,53,57,61,65,69,73)]

nombres<-ago19BG[1,]
nombres<-nombres[!is.na(nombres)]
nombres[nombres == "Activo"] <- "Cuenta"


ago19BG<-ago19BG[-c(2,3,5,6,8,9,11,12,14,15,17,18,20,21,23,24,26,27,29,30,32,33,
                    35,36,38,39,41,42,44,45,47,48,50,51,53,54,56,57)]
ago19BG<-ago19BG[-1,]
ago19BG<-ago19BG[!is.na(ago19BG$...4),]


names(ago19BG) <- NULL
names(ago19BG)<-nombres
#View(ago19BG)

######################################################################################################
######################################################################################################
######################################################################################################

sep19BG<-read_xlsx("B-2201-se2019.XLS", sheet = 1)

sep19BG<-sep19BG[!is.na(sep19BG$`Balance General por Empresa Bancaria...1`),]
sep19BG<-sep19BG[!is.na(sep19BG$...2),]
sep19BG<-sep19BG[,-c(5,9,13,17,21,25,29,33,37,41,45,49,53,57,61,65,69,73)]

nombres<-sep19BG[1,]
nombres<-nombres[!is.na(nombres)]
nombres[nombres == "Activo"] <- "Cuenta"


sep19BG<-sep19BG[-c(2,3,5,6,8,9,11,12,14,15,17,18,20,21,23,24,26,27,29,30,32,33,
                    35,36,38,39,41,42,44,45,47,48,50,51,53,54,56,57)]
sep19BG<-sep19BG[-1,]
sep19BG<-sep19BG[!is.na(sep19BG$...4),]


names(sep19BG) <- NULL
names(sep19BG)<-nombres
#View(sep19BG)

######################################################################################################
######################################################################################################
######################################################################################################

oct19BG<-read_xlsx("B-2201-oc2019.XLS", sheet = 1)

oct19BG<-oct19BG[!is.na(oct19BG$`Balance General por Empresa Bancaria...1`),]
oct19BG<-oct19BG[!is.na(oct19BG$...2),]
oct19BG<-oct19BG[,-c(5,9,13,17,21,25,29,33,37,41,45,49,53,57,61,65,69,73)]

nombres<-oct19BG[1,]
nombres<-nombres[!is.na(nombres)]
nombres[nombres == "Activo"] <- "Cuenta"


oct19BG<-oct19BG[-c(2,3,5,6,8,9,11,12,14,15,17,18,20,21,23,24,26,27,29,30,32,33,
                    35,36,38,39,41,42,44,45,47,48,50,51,53,54,56,57)]
oct19BG<-oct19BG[-1,]
oct19BG<-oct19BG[!is.na(oct19BG$...4),]


names(oct19BG) <- NULL
names(oct19BG)<-nombres
#View(oct19BG)

######################################################################################################
######################################################################################################
######################################################################################################

nov19BG<-read_xlsx("B-2201-no2019.XLS", sheet = 1)

nov19BG<-nov19BG[!is.na(nov19BG$`Balance General por Empresa Bancaria...1`),]
nov19BG<-nov19BG[!is.na(nov19BG$...2),]
nov19BG<-nov19BG[,-c(5,9,13,17,21,25,29,33,37,41,45,49,53,57,61,65,69,73)]

nombres<-nov19BG[1,]
nombres<-nombres[!is.na(nombres)]
nombres[nombres == "Activo"] <- "Cuenta"


nov19BG<-nov19BG[-c(2,3,5,6,8,9,11,12,14,15,17,18,20,21,23,24,26,27,29,30,32,33,
                    35,36,38,39,41,42,44,45,47,48,50,51,53,54,56,57)]
nov19BG<-nov19BG[-1,]
nov19BG<-nov19BG[!is.na(nov19BG$...4),]


names(nov19BG) <- NULL
names(nov19BG)<-nombres
#View(nov19BG)

######################################################################################################
######################################################################################################
######################################################################################################

dic19BG<-read_xlsx("B-2201-di2019.XLS", sheet = 1)

dic19BG<-dic19BG[!is.na(dic19BG$`Balance General por Empresa Bancaria...1`),]
dic19BG<-dic19BG[!is.na(dic19BG$...2),]
dic19BG<-dic19BG[,-c(5,9,13,17,21,25,29,33,37,41,45,49,53,57,61,65,69,73)]

nombres<-dic19BG[1,]
nombres<-nombres[!is.na(nombres)]
nombres[nombres == "Activo"] <- "Cuenta"


dic19BG<-dic19BG[-c(2,3,5,6,8,9,11,12,14,15,17,18,20,21,23,24,26,27,29,30,32,33,
                    35,36,38,39,41,42,44,45,47,48,50,51,53,54,56,57)]
dic19BG<-dic19BG[-1,]
dic19BG<-dic19BG[!is.na(dic19BG$...4),]


names(dic19BG) <- NULL
names(dic19BG)<-nombres
#View(dic19BG)

ene19BG<-ene19BG[,-c(18:20)]
feb19BG<-feb19BG[,-c(18:20)]
mar19BG<-mar19BG[,-c(18:20)]
abr19BG<-abr19BG[,-c(18:20)]
may19BG<-may19BG[,-c(18:20)]
jun19BG<-jun19BG[,-c(18:20)]
jul19BG<-jul19BG[,-c(18:20)]
ago19BG<-ago19BG[,-c(18:20)]
sep19BG<-sep19BG[,-c(18:20)]
oct19BG<-oct19BG[,-c(18:20)]
nov19BG<-nov19BG[,-c(18:20)]
dic19BG<-dic19BG[,-c(18:20)]

######################################################################################################
######################################################################################################
######################################################################################################

#names(ene19BG)
#names(feb19BG)
#names(mar19BG)
#names(abr19BG)
#names(may19BG)
#names(jun19BG)
#names(jul19BG)
#names(ago19BG)
#names(sep19BG)
#names(oct19BG)
#names(nov19BG)
#names(dic19BG)


Fecha<-as.Date(c("31/01/2019","28/02/2019","31/03/2019","30/04/2019",
               "31/05/2019","30/06/2019","31/07/2019","31/08/2019",
               "30/09/2019", "31/10/2019","30/11/2019","31/12/2019"), format = "%d/%m/%Y")
Cuenta<-ene19BG[,1]



######################################################################################################
######################################################################################################
######################################################################################################


{i<-2
matriz_t<-data.frame(ene19BG[,i],feb19BG[,i],mar19BG[,i],abr19BG[,i],may19BG[,i],jun19BG[,i],
                     jul19BG[,i],ago19BG[,i],sep19BG[,i],oct19BG[,i],nov19BG[,i],dic19BG[,i])

matriz19<-t(matriz_t)



a<-as.data.frame(matriz19)
colnames(a)<-t(Cuenta)
rownames(a)<- Fecha
a[, c(1:93)] <- sapply(a[, c(1:93)], as.numeric) 
BBVA19=a
View(BBVA19)
}
  

######################################################################################################
######################################################################################################
######################################################################################################

{i<-3
matriz_t<-data.frame(ene19BG[,i],feb19BG[,i],mar19BG[,i],abr19BG[,i],may19BG[,i],jun19BG[,i],
                     jul19BG[,i],ago19BG[,i],sep19BG[,i],oct19BG[,i],nov19BG[,i],dic19BG[,i])

matriz19<-t(matriz_t)



  a<-as.data.frame(matriz19)
  colnames(a)<-t(Cuenta)
  rownames(a)<- Fecha
  a[, c(1:93)] <- sapply(a[, c(1:93)], as.numeric) 
  Comercio19=a
  View(Comercio19)
}



######################################################################################################
######################################################################################################
######################################################################################################

{i<-4
matriz_t<-data.frame(ene19BG[,i],feb19BG[,i],mar19BG[,i],abr19BG[,i],may19BG[,i],jun19BG[,i],
                     jul19BG[,i],ago19BG[,i],sep19BG[,i],oct19BG[,i],nov19BG[,i],dic19BG[,i])

matriz19<-t(matriz_t)



  a<-as.data.frame(matriz19)
  colnames(a)<-t(Cuenta)
  rownames(a)<- Fecha
  a[, c(1:93)] <- sapply(a[, c(1:93)], as.numeric) 
  BCP19=a
  View(BCP19)
}

######################################################################################################
######################################################################################################
######################################################################################################

{i<-5
matriz_t<-data.frame(ene19BG[,i],feb19BG[,i],mar19BG[,i],abr19BG[,i],may19BG[,i],jun19BG[,i],
                     jul19BG[,i],ago19BG[,i],sep19BG[,i],oct19BG[,i],nov19BG[,i],dic19BG[,i])

matriz19<-t(matriz_t)



a<-as.data.frame(matriz19)
colnames(a)<-t(Cuenta)
rownames(a)<- Fecha
a[, c(1:93)] <- sapply(a[, c(1:93)], as.numeric) 
Pichincha19=a
View(Pichincha19)
}

######################################################################################################
######################################################################################################
######################################################################################################

{i<-6
matriz_t<-data.frame(ene19BG[,i],feb19BG[,i],mar19BG[,i],abr19BG[,i],may19BG[,i],jun19BG[,i],
                     jul19BG[,i],ago19BG[,i],sep19BG[,i],oct19BG[,i],nov19BG[,i],dic19BG[,i])

matriz19<-t(matriz_t)



a<-as.data.frame(matriz19)
colnames(a)<-t(Cuenta)
rownames(a)<- Fecha
a[, c(1:93)] <- sapply(a[, c(1:93)], as.numeric) 
BanBif19=a
View(BanBif19)
}

######################################################################################################
######################################################################################################
######################################################################################################

{i<-7
matriz_t<-data.frame(ene19BG[,i],feb19BG[,i],mar19BG[,i],abr19BG[,i],may19BG[,i],jun19BG[,i],
                     jul19BG[,i],ago19BG[,i],sep19BG[,i],oct19BG[,i],nov19BG[,i],dic19BG[,i])

matriz19<-t(matriz_t)



a<-as.data.frame(matriz19)
colnames(a)<-t(Cuenta)
rownames(a)<- Fecha
a[, c(1:93)] <- sapply(a[, c(1:93)], as.numeric) 
Scotia19=a
View(Scotia19)
}


######################################################################################################
######################################################################################################
######################################################################################################

{i<-8
matriz_t<-data.frame(ene19BG[,i],feb19BG[,i],mar19BG[,i],abr19BG[,i],may19BG[,i],jun19BG[,i],
                     jul19BG[,i],ago19BG[,i],sep19BG[,i],oct19BG[,i],nov19BG[,i],dic19BG[,i])

matriz19<-t(matriz_t)



a<-as.data.frame(matriz19)
colnames(a)<-t(Cuenta)
rownames(a)<- Fecha
a[, c(1:93)] <- sapply(a[, c(1:93)], as.numeric) 
Citi19=a
View(Citi19)
}

######################################################################################################
######################################################################################################
######################################################################################################

{i<-9
matriz_t<-data.frame(ene19BG[,i],feb19BG[,i],mar19BG[,i],abr19BG[,i],may19BG[,i],jun19BG[,i],
                     jul19BG[,i],ago19BG[,i],sep19BG[,i],oct19BG[,i],nov19BG[,i],dic19BG[,i])

matriz19<-t(matriz_t)



a<-as.data.frame(matriz19)
colnames(a)<-t(Cuenta)
rownames(a)<- Fecha
a[, c(1:93)] <- sapply(a[, c(1:93)], as.numeric) 
Inter19=a
View(Inter19)
}



######################################################################################################
######################################################################################################
######################################################################################################

{i<-10
matriz_t<-data.frame(ene19BG[,i],feb19BG[,i],mar19BG[,i],abr19BG[,i],may19BG[,i],jun19BG[,i],
                     jul19BG[,i],ago19BG[,i],sep19BG[,i],oct19BG[,i],nov19BG[,i],dic19BG[,i])

matriz19<-t(matriz_t)



a<-as.data.frame(matriz19)
colnames(a)<-t(Cuenta)
rownames(a)<- Fecha
a[, c(1:93)] <- sapply(a[, c(1:93)], as.numeric) 
MiBanco19=a
View(MiBanco19)
}

######################################################################################################
######################################################################################################
######################################################################################################

{i<-12
matriz_t<-data.frame(ene19BG[,i-1],feb19BG[,i-1],mar19BG[,i],abr19BG[,i],may19BG[,i],jun19BG[,i],
                     jul19BG[,i],ago19BG[,i],sep19BG[,i],oct19BG[,i],nov19BG[,i],dic19BG[,i])

matriz19<-t(matriz_t)



a<-as.data.frame(matriz19)
colnames(a)<-t(Cuenta)
rownames(a)<- Fecha
a[, c(1:93)] <- sapply(a[, c(1:93)], as.numeric) 
Falabella19=a
View(Falabella19)
}


######################################################################################################
######################################################################################################
######################################################################################################

{i<-13
matriz_t<-data.frame(ene19BG[,i-1],feb19BG[,i-1],mar19BG[,i],abr19BG[,i],may19BG[,i],jun19BG[,i],
                     jul19BG[,i],ago19BG[,i],sep19BG[,i],oct19BG[,i],nov19BG[,i],dic19BG[,i])

matriz19<-t(matriz_t)



a<-as.data.frame(matriz19)
colnames(a)<-t(Cuenta)
rownames(a)<- Fecha
a[, c(1:93)] <- sapply(a[, c(1:93)], as.numeric) 
Santander19=a
View(Santander19)
}


######################################################################################################
######################################################################################################
######################################################################################################

{i<-14
matriz_t<-data.frame(ene19BG[,i-1],feb19BG[,i-1],mar19BG[,i],abr19BG[,i],may19BG[,i],jun19BG[,i],
                     jul19BG[,i],ago19BG[,i],sep19BG[,i],oct19BG[,i],nov19BG[,i],dic19BG[,i])

matriz19<-t(matriz_t)



a<-as.data.frame(matriz19)
colnames(a)<-t(Cuenta)
rownames(a)<- Fecha
a[, c(1:93)] <- sapply(a[, c(1:93)], as.numeric) 
Ripley19=a
View(Ripley19)
}


######################################################################################################
######################################################################################################
######################################################################################################

{i<-15
matriz_t<-data.frame(ene19BG[,i-1],feb19BG[,i-1],mar19BG[,i],abr19BG[,i],may19BG[,i],jun19BG[,i],
                     jul19BG[,i],ago19BG[,i],sep19BG[,i],oct19BG[,i],nov19BG[,i],dic19BG[,i])

matriz19<-t(matriz_t)



a<-as.data.frame(matriz19)
colnames(a)<-t(Cuenta)
rownames(a)<- Fecha
a[, c(1:93)] <- sapply(a[, c(1:93)], as.numeric) 
Azteca19=a
View(Azteca19)
}


######################################################################################################
######################################################################################################
######################################################################################################

{i<-16
matriz_t<-data.frame(ene19BG[,i],feb19BG[,i],mar19BG[,i],abr19BG[,i],may19BG[,i],jun19BG[,i],
                     jul19BG[,i],ago19BG[,i],sep19BG[,i],oct19BG[,i],nov19BG[,i],dic19BG[,i])

matriz19<-t(matriz_t)



a<-as.data.frame(matriz19)
colnames(a)<-t(Cuenta)
rownames(a)<- Fecha
a[, c(1:93)] <- sapply(a[, c(1:93)], as.numeric) 
ICBC19=a
View(ICBC19)
}


######################################################################################################
######################################################################################################
######################################################################################################

{i<-11
matriz_t<-data.frame(ene19BG[,i],feb19BG[,i],mar19BG[,i],abr19BG[,i],may19BG[,i],jun19BG[,i],
                     jul19BG[,i],ago19BG[,i],sep19BG[,i],oct19BG[,i],nov19BG[,i],dic19BG[,i])

matriz19<-t(matriz_t)



a<-as.data.frame(matriz19)
colnames(a)<-t(Cuenta)
rownames(a)<- Fecha
a[, c(1:93)] <- sapply(a[, c(1:93)], as.numeric) 
a[c(1:2),]<-a[c(1:2),]*0
GNB19=a
View(GNB19)
}

######################################################################################################
######################################################################################################
######################################################################################################

{i<-15
matriz_t<-data.frame(ene19BG[,i],feb19BG[,i],mar19BG[,i],abr19BG[,i],may19BG[,i],jun19BG[,i],
                     jul19BG[,i],ago19BG[,i],sep19BG[,i],oct19BG[,i],nov19BG[,i],dic19BG[,i])

matriz19<-t(matriz_t)



a<-as.data.frame(matriz19)
colnames(a)<-t(Cuenta)
rownames(a)<- Fecha
a[, c(1:93)] <- sapply(a[, c(1:93)], as.numeric) 
a[-c(1:2),]<-a[-c(1:2),]*0
Cencosud19=a
View(Cencosud19)
}

######################################################################################################
######################################################################################################
######################################################################################################

{i<-17
matriz_t<-data.frame(ene19BG[,i],feb19BG[,i],mar19BG[,i],abr19BG[,i],may19BG[,i],jun19BG[,i],
                     jul19BG[,i],ago19BG[,i],sep19BG[,i],oct19BG[,i],nov19BG[,i],dic19BG[,i])

matriz19<-t(matriz_t)



a<-as.data.frame(matriz19)
colnames(a)<-t(Cuenta)
rownames(a)<- Fecha
a[, c(1:93)] <- sapply(a[, c(1:93)], as.numeric) 
TotalBanca19=a
View(TotalBanca19)
}

#barplot(TotalBanca19$`TOTAL ACTIVO`)


######################################################################################################
######################################################################################################
######################################################################################################
######################################################################################################
######################################################################################################
######################################################################################################

#                                       % / ACTIVO
{
  options(scipen=999)
BBVA19_Porcent<-BBVA19[,c(1:42)]/BBVA19[,42]
Comercio19_Porcent<-Comercio19[,c(1:42)]/BBVA19[,42]
BCP19_Porcent<-BCP19[,c(1:42)]/BCP19[,42]
Pichincha19_Porcent<-Pichincha19[,c(1:42)]/Pichincha19[,42]
BanBif19_Porcent<-BanBif19[,c(1:42)]/BanBif19[,42]
Scotia19_Porcent<-Scotia19[,c(1:42)]/Scotia19[,42]
Citi19_Porcent<-Citi19[,c(1:42)]/Citi19[,42]
Inter19_Porcent<-Inter19[,c(1:42)]/Inter19[,42]
MiBanco19_Porcent<-MiBanco19[,c(1:42)]/MiBanco19[,42]
Falabella19_Porcent<-Falabella19[,c(1:42)]/Falabella19[,42]
Santander19_Porcent<-Santander19[,c(1:42)]/Santander19[,42]
Ripley19_Porcent<-Ripley19[,c(1:42)]/Ripley19[,42]
Azteca19_Porcent<-Azteca19[,c(1:42)]/Azteca19[,42]
ICBC19_Porcent<-ICBC19[,c(1:42)]/ICBC19[,42]
GNB19_Porcent<-GNB19[,c(1:42)]/GNB19[,42]
Cencosud19_Porcent<-Cencosud19[,c(1:42)]/Cencosud19[,42]
TotalBanca19_Porcent<-TotalBanca19[,c(1:42)]/TotalBanca19[,42]
}


{View(BBVA19_Porcent)
View(Comercio19_Porcent)
View(BCP19_Porcent)
View(Pichincha19_Porcent)
View(BanBif19_Porcent)
View(Scotia19_Porcent)
View(Citi19_Porcent)
View(Inter19_Porcent)
View(MiBanco19_Porcent)
View(Falabella19_Porcent)
View(Santander19_Porcent)
View(Ripley19_Porcent)
View(Azteca19_Porcent)
View(ICBC19_Porcent)
View(GNB19_Porcent)
View(Cencosud19_Porcent)
View(TotalBanca19_Porcent)}

{####LISTA<-list(BBVA19_Porcent,Comercio19_Porcent,BCP19_Porcent,
#     Pichincha19_Porcent,BanBif19_Porcent,Scotia19_Porcent,
#     Scotia19_Porcent,Citi19_Porcent,Inter19_Porcent,
#     MiBanco19_Porcent,Falabella19_Porcent,Santander19_Porcent,
#     Ripley19_Porcent,Azteca19Porcent,ICBC19_Porcent,GNB19_Porcent,
#     Cencosud19_Porcent)
#####View(LISTA)
  }
#LISTA2<-Reduce(merge, LISTA)
#View(LISTA2)

dev.off()
 
{
  x11()
  graf1<-matrix(c(1:16),nrow = 4, byrow = TRUE)
  layout(graf1)
  layout.show(16)
  
  plot(BBVA19_Porcent$`CRÉDITOS NETOS DE PROVISIONES Y DE INGRESOS NO DEVENGADOS`,
       type = "l", main="BBVA")
  
  plot(Comercio19_Porcent$`CRÉDITOS NETOS DE PROVISIONES Y DE INGRESOS NO DEVENGADOS`,
       type = "l", main="COMERCIO")
  plot(BCP19_Porcent$`CRÉDITOS NETOS DE PROVISIONES Y DE INGRESOS NO DEVENGADOS`,
       type = "l", main="BCP")
  plot(Pichincha19_Porcent$`CRÉDITOS NETOS DE PROVISIONES Y DE INGRESOS NO DEVENGADOS`,
       type = "l", main="PICHINCHA")
  plot(BanBif19_Porcent$`CRÉDITOS NETOS DE PROVISIONES Y DE INGRESOS NO DEVENGADOS`,
       type = "l", main="BANBIF")
  plot(Scotia19_Porcent$`CRÉDITOS NETOS DE PROVISIONES Y DE INGRESOS NO DEVENGADOS`,
       type = "l", main="SCOTIABANK")
  plot(Citi19_Porcent$`CRÉDITOS NETOS DE PROVISIONES Y DE INGRESOS NO DEVENGADOS`,
       type = "l", main="CITIBANK")
  plot(Inter19_Porcent$`CRÉDITOS NETOS DE PROVISIONES Y DE INGRESOS NO DEVENGADOS`,
       type = "l", main="INTERBANK")
  plot(MiBanco19_Porcent$`CRÉDITOS NETOS DE PROVISIONES Y DE INGRESOS NO DEVENGADOS`,
       type = "l", main="MIBANCO")
  plot(Falabella19_Porcent$`CRÉDITOS NETOS DE PROVISIONES Y DE INGRESOS NO DEVENGADOS`,
       type = "l", main="FALABELLA")
  plot(Santander19_Porcent$`CRÉDITOS NETOS DE PROVISIONES Y DE INGRESOS NO DEVENGADOS`,
       type = "l", main="SANTANDER")
  plot(Ripley19_Porcent$`CRÉDITOS NETOS DE PROVISIONES Y DE INGRESOS NO DEVENGADOS`,
       type = "l", main="RIPLEY")
  plot(Azteca19_Porcent$`CRÉDITOS NETOS DE PROVISIONES Y DE INGRESOS NO DEVENGADOS`,
       type = "l", main="AZTECA")
  plot(ICBC19_Porcent$`CRÉDITOS NETOS DE PROVISIONES Y DE INGRESOS NO DEVENGADOS`,
       type = "l", main="ICBC")
  plot(GNB19_Porcent$`CRÉDITOS NETOS DE PROVISIONES Y DE INGRESOS NO DEVENGADOS`,
       type = "l", main="GNB")
  plot(Cencosud19_Porcent$`CRÉDITOS NETOS DE PROVISIONES Y DE INGRESOS NO DEVENGADOS`,
       type = "l", main="CENCOSUD")
} 
  
{
  x11()
  graf1<-matrix(c(1:16),nrow = 4, byrow = TRUE)
  layout(graf1)
  layout.show(16)
  
  barplot(BBVA19$`TOTAL ACTIVO`, main="BBVA")
  barplot(Comercio19$`TOTAL ACTIVO`, main="COMERCIO")
  barplot(BCP19$`TOTAL ACTIVO`, main="BCP")
  barplot(Pichincha19$`TOTAL ACTIVO`, main="PICHINCHA")
  barplot(BanBif19$`TOTAL ACTIVO`, main="BANBIF")
  barplot(Scotia19$`TOTAL ACTIVO`, main="SCOTIABANK")
  barplot(Citi19$`TOTAL ACTIVO`, main="CITIBANK")
  barplot(Inter19$`TOTAL ACTIVO`, main="INTERBANK")
  barplot(MiBanco19$`TOTAL ACTIVO`, main="MIBANCO")
  barplot(Falabella19$`TOTAL ACTIVO`, main="FALABELLA")
  barplot(Santander19$`TOTAL ACTIVO`, main="SANTANDER")
  barplot(Ripley19$`TOTAL ACTIVO`, main="RIPLEY")
  barplot(Azteca19$`TOTAL ACTIVO`, main="AZTECA")
  barplot(ICBC19$`TOTAL ACTIVO`, main="ICBC")
  barplot(GNB19$`TOTAL ACTIVO`, main="GNB")
  barplot(Cencosud19$`TOTAL ACTIVO`, main="CENCOSUD")
} 
  
  
View(BBVA19)

#                                       VARIACIÓN %
{
  BBVA19_Var_Porcent<-(BBVA19[c(1:12),]/BBVA19[1,])-1
  Comercio19_Var_Porcent<-Comercio19[,c(1:42)]/BBVA19[,42]
  BCP19_Var_Porcent<-BCP19[,c(1:42)]/BCP19[,42]
  Pichincha19_Var_Porcent<-Pichincha19[,c(1:42)]/Pichincha19[,42]
  BanBif19_Var_Porcent<-BanBif19[,c(1:42)]/BanBif19[,42]
  Scotia19_Var_Porcent<-Scotia19[,c(1:42)]/Scotia19[,42]
  Citi19_Var_Porcent<-Citi19[,c(1:42)]/Citi19[,42]
  Inter19_Var_Porcent<-Inter19[,c(1:42)]/Inter19[,42]
  MiBanco19_Var_Porcent<-MiBanco19[,c(1:42)]/MiBanco19[,42]
  Falabella19_Var_Porcent<-Falabella19[,c(1:42)]/Falabella19[,42]
  Santander19_Var_Porcent<-Santander19[,c(1:42)]/Santander19[,42]
  Ripley19_Var_Porcent<-Ripley19[,c(1:42)]/Ripley19[,42]
  Azteca19_Var_Porcent<-Azteca19[,c(1:42)]/Azteca19[,42]
  ICBC19_Var_Porcent<-ICBC19[,c(1:42)]/ICBC19[,42]
  GNB19_Var_Porcent<-GNB19[,c(1:42)]/GNB19[,42]
  Cencosud19_Var_Porcent<-Cencosud19[,c(1:42)]/Cencosud19[,42]
  TotalBanca19_Var_Porcent<-TotalBanca19[,c(1:42)]/TotalBanca19[,42]
}











  #m<-data.frame(Fecha,BBVA19_Porcent)
  #View(m)
  #ggplot(m, aes(x = Fecha, y =Caja ))+
   #        geom_bar()
  
  #Fecha<-as.numeric(Fecha)
  #gr1 <- ggplot(genero, aes(x = SEXO)) + geom_bar()
  #class(m$Fecha)
  #
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  ene19ER<-read_xlsx("B-2201-en2019.XLS", sheet = 2)
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  ene20BG<-read_xlsx("B-2201-en2020.XLS", sheet = 1)
  ene20BG<-ene20BG[!is.na(ene20BG$`Balance General por Empresa Bancaria...1`),]
  ene20BG<-ene20BG[!is.na(ene20BG$...2),]
  ene20BG<-ene20BG[,-c(5,9,13,17,21,25,29,33,37,41,45,49,53,57,61,65,69,70,74,78)]
  
  nombres<-ene20BG[1,]
  nombres<-nombres[!is.na(nombres)]
  nombres[nombres == "Activo"] <- "Cuenta"
  nombres[nombres == "Banco Continental"] <- "Banco BBVA Perú"
  
  
  ene20BG<-ene20BG[-c(2,3,5,6,8,9,11,12,14,15,17,18,20,21,23,24,26,27,29,30,32,33,
                      35,36,38,39,41,42,44,45,47,48,50,51,53,54,56,57,59,60)]
  ene20BG<-ene20BG[-1,]
  ene20BG<-ene20BG[!is.na(ene20BG$...4),]
  
  
  names(ene20BG) <- NULL
  names(ene20BG)<-nombres
  ene20BG<-ene20BG[,-11]
  View(ene20BG)
  
  ######################################################################################################
  ######################################################################################################
  ######################################################################################################
  
  feb20BG<-read_xlsx("B-2201-fe2020.XLS", sheet = 1)
  
  feb20BG<-feb20BG[!is.na(feb20BG$`Balance General por Empresa Bancaria...1`),]
  feb20BG<-feb20BG[!is.na(feb20BG$...2),]
  feb20BG<-feb20BG[,-c(5,9,13,17,21,25,29,33,37,41,45,49,53,57,61,65,69,70,74,78)]
  
  nombres<-feb20BG[1,]
  nombres<-nombres[!is.na(nombres)]
  nombres[nombres == "Activo"] <- "Cuenta"
  nombres[nombres == "Banco Continental"] <- "Banco BBVA Perú"
  
  feb20BG<-feb20BG[-c(2,3,5,6,8,9,11,12,14,15,17,18,20,21,23,24,26,27,29,30,32,33,
                      35,36,38,39,41,42,44,45,47,48,50,51,53,54,56,57,59,60)]
  feb20BG<-feb20BG[-1,]
  feb20BG<-feb20BG[!is.na(feb20BG$...4),]
  
  
  names(feb20BG) <- NULL
  names(feb20BG)<-nombres
  feb20BG<-feb20BG[,-11]
  #View(feb20BG)
  
  ######################################################################################################
  ######################################################################################################
  ######################################################################################################
  
  mar20BG<-read_xlsx("B-2201-ma2020.XLS", sheet = 1)
  
  
  mar20BG<-mar20BG[!is.na(mar20BG$`Balance General por Empresa Bancaria...1`),]
  mar20BG<-mar20BG[!is.na(mar20BG$...2),]
  mar20BG<-mar20BG[,-c(5,9,13,17,21,25,29,33,37,41,45,49,53,57,61,65,69,73)]
  
  nombres<-mar20BG[1,]
  nombres<-nombres[!is.na(nombres)]
  nombres[nombres == "Activo"] <- "Cuenta"
  nombres[nombres == "Banco Continental"] <- "Banco BBVA Perú"
  
  
  mar20BG<-mar20BG[-c(2,3,5,6,8,9,11,12,14,15,17,18,20,21,23,24,26,27,29,30,32,33,
                      35,36,38,39,41,42,44,45,47,48,50,51,53,54,56,57)]
  mar20BG<-mar20BG[-1,]
  mar20BG<-mar20BG[!is.na(mar20BG$...4),]
  
  
  names(mar20BG) <- NULL
  names(mar20BG)<-nombres
  #View(mar20BG)
  
  
  ######################################################################################################
  ######################################################################################################
  ######################################################################################################
  
  abr20BG<-read_xlsx("B-2201-ab2020.XLS", sheet = 1)
  
  abr20BG<-abr20BG[!is.na(abr20BG$`Balance General por Empresa Bancaria...1`),]
  abr20BG<-abr20BG[!is.na(abr20BG$...2),]
  abr20BG<-abr20BG[,-c(5,9,13,17,21,25,29,33,37,41,45,49,53,57,61,65,69,73)]

nombres<-abr20BG[1,]
nombres<-nombres[!is.na(nombres)]
nombres[nombres == "Activo"] <- "Cuenta"
nombres[nombres == "Banco Continental"] <- "Banco BBVA Perú"

abr20BG<-abr20BG[-c(2,3,5,6,8,9,11,12,14,15,17,18,20,21,23,24,26,27,29,30,32,33,
                    35,36,38,39,41,42,44,45,47,48,50,51,53,54,56,57)]
abr20BG<-abr20BG[-1,]
abr20BG<-abr20BG[!is.na(abr20BG$...4),]


names(abr20BG) <- NULL
names(abr20BG)<-nombres
#View(abr20BG)


######################################################################################################
######################################################################################################
######################################################################################################

may20BG<-read_xlsx("B-2201-my2020.XLS", sheet = 1)

may20BG<-may20BG[!is.na(may20BG$`Balance General por Empresa Bancaria...1`),]
may20BG<-may20BG[!is.na(may20BG$...2),]
may20BG<-may20BG[,-c(5,9,13,17,21,25,29,33,37,41,45,49,53,57,61,65,69,73)]

nombres<-may20BG[1,]
nombres<-nombres[!is.na(nombres)]
nombres[nombres == "Activo"] <- "Cuenta"
nombres[nombres == "Banco Continental"] <- "Banco BBVA Perú"

may20BG<-may20BG[-c(2,3,5,6,8,9,11,12,14,15,17,18,20,21,23,24,26,27,29,30,32,33,
                    35,36,38,39,41,42,44,45,47,48,50,51,53,54,56,57)]
may20BG<-may20BG[-1,]
may20BG<-may20BG[!is.na(may20BG$...4),]


names(may20BG) <- NULL
names(may20BG)<-nombres
#View(may20BG)


######################################################################################################
######################################################################################################
######################################################################################################

jun20BG<-read_xlsx("B-2201-jn2020.XLS", sheet = 1)

jun20BG<-jun20BG[!is.na(jun20BG$`Balance General por Empresa Bancaria...1`),]
jun20BG<-jun20BG[!is.na(jun20BG$...2),]
jun20BG<-jun20BG[,-c(5,9,13,17,21,25,29,33,37,41,45,49,53,57,61,65,69,73)]

nombres<-jun20BG[1,]
nombres<-nombres[!is.na(nombres)]
nombres[nombres == "Activo"] <- "Cuenta"
nombres[nombres == "Banco Continental"] <- "Banco BBVA Perú"

jun20BG<-jun20BG[-c(2,3,5,6,8,9,11,12,14,15,17,18,20,21,23,24,26,27,29,30,32,33,
                    35,36,38,39,41,42,44,45,47,48,50,51,53,54,56,57)]
jun20BG<-jun20BG[-1,]
jun20BG<-jun20BG[!is.na(jun20BG$...4),]


names(jun20BG) <- NULL
names(jun20BG)<-nombres
#View(jun20BG)

######################################################################################################
######################################################################################################
######################################################################################################

jul20BG<-read_xlsx("B-2201-jl2020.XLS", sheet = 1)

jul20BG<-jul20BG[!is.na(jul20BG$`Balance General por Empresa Bancaria...1`),]
jul20BG<-jul20BG[!is.na(jul20BG$...2),]
jul20BG<-jul20BG[,-c(5,9,13,17,21,25,29,33,37,41,45,49,53,57,61,65,69,73)]

nombres<-jul20BG[1,]
nombres<-nombres[!is.na(nombres)]
nombres[nombres == "Activo"] <- "Cuenta"


jul20BG<-jul20BG[-c(2,3,5,6,8,9,11,12,14,15,17,18,20,21,23,24,26,27,29,30,32,33,
                    35,36,38,39,41,42,44,45,47,48,50,51,53,54,56,57)]
jul20BG<-jul20BG[-1,]
jul20BG<-jul20BG[!is.na(jul20BG$...4),]


names(jul20BG) <- NULL
names(jul20BG)<-nombres
#View(jul20BG)

######################################################################################################
######################################################################################################
######################################################################################################




ene20BG<-ene20BG[,-c(18:20)]
feb20BG<-feb20BG[,-c(18:20)]
mar20BG<-mar20BG[,-c(18:20)]
abr20BG<-abr20BG[,-c(18:20)]
may20BG<-may20BG[,-c(18:20)]
jun20BG<-jun20BG[,-c(18:20)]
jul20BG<-jul20BG[,-c(18:20)]




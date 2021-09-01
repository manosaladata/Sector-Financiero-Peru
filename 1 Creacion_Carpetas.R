#############################################################################################################

## CREANDO CARPETAS ##

mainDir <- "C:/Users/Jose/Documents/GitHub/Sector-Financiero-Peru"
setwd(mainDir)
subDir1 <- "data"
subDir2 <- "raw data"
dir.create(file.path(mainDir, subDir1), showWarnings = T)
dir.create(file.path(subDir1, subDir2), showWarnings = T)


mainDir <- "C:/Users/Jose/Documents/GitHub/Sector-Financiero-Peru/data"
setwd(mainDir)
dir.create('./raw data') #Carpeta raw data
dir.create('./dataprocesada') #Carpeta dataprocesada


                                        #### RAW DATA ####

mainDir <- "C:/Users/Jose/Documents/GitHub/Sector-Financiero-Peru/data/raw data"
setwd(mainDir)

dir.create('./Informacion Estadistica de Banca Multiple')


mainDir <- "C:/Users/Jose/Documents/GitHub/Sector-Financiero-Peru/data/raw data/Informacion Estadistica de Banca Multiple"
setwd(mainDir)
dir.create('./Indicadores de las Empresas Bancarias')

mainDir <- "C:/Users/Jose/Documents/GitHub/Sector-Financiero-Peru/data/raw data/Informacion Estadistica de Banca Multiple/Indicadores de las Empresas Bancarias"
setwd(mainDir)
dir.create('./Indicadores Financieros') #Carpeta Indicadores Financieros de "raw data"
mainDir <- "C:/Users/Jose/Documents/GitHub/Sector-Financiero-Peru/data/raw data/Informacion Estadistica de Banca Multiple/Indicadores de las Empresas Bancarias/Indicadores Financieros"
setwd(mainDir)
# INDICE DE MOROSIDAD
dir.create('./Indice_Morosidad')

                                      

                                       #### DATA PROCESADA ####


mainDir <- "C:/Users/Jose/Documents/GitHub/Sector-Financiero-Peru/data/dataprocesada"
setwd(mainDir)
dir.create('./Informacion Estadistica de Banca Multiple')

mainDir <- "C:/Users/Jose/Documents/GitHub/Sector-Financiero-Peru/data/dataprocesada/Informacion Estadistica de Banca Multiple"
setwd(mainDir)
dir.create('./Indicadores de las Empresas Bancarias')

mainDir <- "C:/Users/Jose/Documents/GitHub/Sector-Financiero-Peru/data/dataprocesada/Informacion Estadistica de Banca Multiple/Indicadores de las Empresas Bancarias"
setwd(mainDir)
dir.create('./Indicadores Financieros') #Carpeta Indicadores Financieros de "dataprocesada"



mainDir <- "C:/Users/Jose/Documents/GitHub/Sector-Financiero-Peru/data/dataprocesada/Informacion Estadistica de Banca Multiple/Indicadores de las Empresas Bancarias/Indicadores Financieros"
setwd(mainDir)


# INDICE DE MOROSIDAD
dir.create('./Indice_Morosidad')




##################################### RAW DATA ###########################################
# CREANDO CARPETAS 2016 al 2020 PARA EL raw data
mainDir <- "C:/Users/Jose/Documents/GitHub/Sector-Financiero-Peru/data/raw data/Informacion Estadistica de Banca Multiple/Indicadores de las Empresas Bancarias/Indicadores Financieros"
subfolder_names <- as.character(c(2016:2020)) 
for (j in 1:length(subfolder_names)){
  dir.create(file.path(mainDir, subfolder_names[j]), showWarnings = T)
}

# CREANDO CARPETAS 2021 PARA EL raw data
mainDir <- "C:/Users/Administrator/Documents/GitHub/Sector-Financiero-Peru/data/raw data/Informacion Estadistica de Banca Multiple/Indicadores de las Empresas Bancarias/Indicadores Financieros"
subfolder_names <- as.character(2021) 
dir.create(file.path(mainDir, subfolder_names))


##################################### DATA procesada ###########################################
# CREANDO CARPETAS 2016 al 2020 PARA LA data procesada
mainDir <- "C:/Users/Jose/Documents/GitHub/Sector-Financiero-Peru/data/dataprocesada/Informacion Estadistica de Banca Multiple/Indicadores de las Empresas Bancarias/Indicadores Financieros"

subfolder_names <- as.character(c(2016:2020)) 
for (j in 1:length(subfolder_names)){
  dir.create(file.path(mainDir, subfolder_names[j]), showWarnings = T)
}

# CREANDO CARPETAS 2021 PARA LA data procesada
mainDir <- "C:/Users/Jose/Documents/GitHub/Sector-Financiero-Peru/data/dataprocesada/Informacion Estadistica de Banca Multiple/Indicadores de las Empresas Bancarias/Indicadores Financieros"

subfolder_names <- as.character(2021) 
dir.create(file.path(mainDir, subfolder_names))






# Librería utilizada y carga de datos
#install.packages("dplyr") # Instalar de
#manipulación de dataframes "dplyr"
library(dplyr)

nombre <- c("A","B","C","D","E","F","G","H","I","J")
sexo <- c(rep("man",5),rep("woman",5))
edad <- c (25,14,25,76,12,90,65,45,56,43)
pais <- c(rep("spain",3),rep("italy",3),rep("portugal",4))

datos <- data.frame(nombre=nombre,sexo=sexo,edad=edad,pais=pais)
head(datos)


# Filtrar de datos por filas
datos[datos$sexo == "man" & datos$pais == "spain", ]
filter(datos, pais !="portugal")

# Borrar filas con valores nulos
datos <- na.omit(datos)


# Ordenar datos por filas
arrange(datos, edad, pais)#asc
arrange(datos,desc(edad), pais )#desc

# Seleccionar ciertas columnas concreto
select(datos, nombre, edad, pais)

# Seleccionar un rango de columnas
select(datos, nombre:sexo)

# Excluir un rango de columnas
select(datos, -(nombre:edad))


#Seleccionar ciertas columnas y renombrarlas
select(datos, nombreNuevo= nombre, edadNueva = edad)


# Seleccionar y quedarse con las
# filas de valores no repetidos (unique)

distinct(datos, pais)
distinct(datos, sexo, pais)


# Insertar nuevas columnas
# a las ya existentes
datos= mutate(datos,
              nacimiento = 2021 - edad,
              nacimiento1 = 2021 - edad)

# Crear un nuevo dataframe con las
# columnas nuevas


year
transmute(datos,
          nacimiento = 2017 - edad,
          new.pais = paste("my county is ", pais),
)

#Agrupar información por sus variables COUNT()
grupos_pais_sexo <- group_by(datos,pais,sexo)

data_Agrupada = summarise(grupos_pais_sexo,
                          CantidadPais_Sexo = n()
)



grupos_tipodeAhorro_Edad <- group_by(datos,Tipo.de.Ahorro, Edad)

data_Agrupada = summarise(grupos_tipodeAhorro_Edad,
                          CantidadTipo.de.Ahorro_Edad = n()
)




grupos_tipodeAhorro_Edad <- group_by(datos,Tipo.de.Ahorro, Edad)

data_Agrupada = summarise(grupos_tipodeAhorro_Edad,
                          CantidadTipo.de.Ahorro_Edad = n()
)


date <-  as.Date('30/10/2018','%Y')
date



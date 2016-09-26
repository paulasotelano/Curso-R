lista<-list(1 , "a", TRUE, 1, "4i")
list(lista)
lista
lista
gatos<-read.csv("Data/Datos-felinos.csv")#cargar el archivo
gatos[1]#muestra la 1er columna, los corchetes seleccionan algo de nuestro objeto, devuelve una lista
gatos[[1]]#muestra los datos de la primer columna (sin titulo)
gatos$pelaje#idem anterior, devuelve el vector
gatos["pelaje"]
gatos[1, 1]
gatos[, 1]# devuelve la primer columna como vector
gatos[1, ]# devuelve la fila
typeof(gatos[1, ]) 
matrix <- matrix(0, ncol = 6, nrow = 3)#genera una matriz de 6col y 3 filas
matrix
dim(matrix)
matrix2 <- matrix(1:50, ncol = 5, nrow = 10)#ejercicio 5 (lo lleno por columna)
matrix2
matrix3 <- matrix(1:50, ncol = 5, nrow = 10, byrow = TRUE)#llena la matriz por fila
matrix3
list2<-list(data_types = c("integer", "double", "logical", "complex", "character"), data_structures= c("vector", "matrix", "list", "data.frame"))#ejercicio6
list2
#ctrl l borra la consola
matrix3<-matrix(c(4, 1, 9, 5, 10, 7), ncol = 2, byrow = TRUE) #ejercicio 7
matrix3#en las matrices, los datos son siempre del mismo tipo. caracteres, lógicos o lo que sea.
levels(gatos$pelaje)
levels(gatos$pelaje) <- c(levels(gatos$pelaje), "carey")#agregar un nivel, se agrega antes de crear la fila si no no la toma
nuevafila <- list("carey", 3.3, TRUE, 9)#creo la nueva fila
gatos <-rbind(gatos, nuevafila)#añadir nueva fila
gatos$edad <- c(4,5,8,9)#añadir nueva columna
gatos
gatos[,1]#muestra la columna 1
gatos[,-1]# se utiliza el signo menos, saca la columna 1 (pero para eliminarla completamente hay que asignarle un nombre) nuevamente
gatos[-1,-2]# saca la primera fila y segunda col, lo asigno con otro nombre
gatos2 <- gatos[-1,-2]#asigno el nombre , gatos2
gatos2
gatos#sigue siendo la matriz original de 4 col y 4 filas
gatos[-4,]
nuevafila <- list("pelado", 3.3, TRUE, 9)
levels(gatos$pelaje) <- c(levels(gatos$pelaje), "pelado")
gatos <-rbind(gatos, nuevafila)
gatos
nuevafila <- list("blanco", 8, TRUE, 4)#cree una nueva fila, sin crear el nivel, por eso aparece como Na
gatos <-rbind(gatos, nuevafila)
gatos
na.omit(gatos)# NA.OMIT , ELIMINA LAS FILAS SIN NOMBRE, O QUE APARECEN COMO NA
df <- data.frame(id = c('a', 'b', 'c'),
                 x = 1:3, y = c(TRUE, TRUE, FALSE), 
                 stringsAsFactors = FALSE)# con data frame se pueden "mezclar" datos de diferente tipo (distinto a la matriz)
df2 <- data.frame(nombre = c('Paula'),
                apellido = sotelano, numerosuerte = c(4), 
                 stringsAsFactors = FALSE)
df2 <- data.frame(nombre = c('Paula'),
                  apellido = 'sotelano', numerosuerte = c(4), 
                  stringsAsFactors = FALSE)#ejercicio1
df2
df3 <- data.frame(nombre = c('Paula'),
                  apellido = 'sotelano', numerosuerte = c(4))
        df3
        str(df2) #nombre y apellido son caracteres, datos
        str(df3) #nombre y apellido son factores, de un nivel cada uno, o sea que cada vez que quiera agregar algo tendría que agregar un nivel. por eso se usa el stringasfactor, para que lo genere como caracters. 
        nuevafila <- list("Gabriela", "Scioscia", 20)
        nuevafila
        df4 <-rbind(df2, nuevafila)
        df4
 cbind(df4, recreo = c("si","si"))#para agregar la columna recreo y sus valores       
 df5 <- cbind(df4, recreo = c("si","si"))  #lo guardo con nombre df5
 df5
 gapminder <- read.csv("data/gapminder-FiveYearData.csv") #leer el archivo gapminder-FiveYearData.cvs al escribir data/ presionar TAB para elegir el archivo
 gapminder
 #para leer archivos de excel, cargar el paquete readxl 
 str(gapminder)
 library(readxl) #para cargar el paquete readxl buscar en packages, install, readxl install. luego cargarlo en la sesión con library(readxl)
 str(gapminder) # da la estructura de los datos
 length(gapminder)# devuelve un 6 porque es el número de columnas, y el dataframe es una lista
 names(gapminder)
 names(gap)
 names(gapminder) <- c("pais", "año", "pob", "continente", "expectativa", "pbi")
 names(gapminder)
 str(gapminder)
 typeof(gapminder$pob)# el tipo de datos de población, no tiene sentido que sea de tipo "double", debería ser "integer"
 as.integer(gapminder$pob)#con esto se fuerza a que los numeros sean enteros
 head(gapminder) #muestra las primeras columnas...
 #la próxima vez que quiera correr todo el archivo se usa la función SOURCE
 
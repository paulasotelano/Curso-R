gapminder<-read.csv("Data/gapminder-FiveYearData.csv")#a demás de leer clikear source, para ejecutar los comandos del archivo. Source lee o ejecuta todos los comandos del script juntos. 

str(gapminder)
colnames(gapminder$country)
#usar levels 
x <- c(5.4, 6.2, 7.1, 4.8, 7.5)
names(x)<-c('a', 'b', 'c', 'd', 'e')
x
x[1]#el corchete llama los objetos que estan adentro
x[c(1, 3)]#así se puede llamar conj de datos determinados
x[1:4]
x[c(1, 1, 3)]#se puede llamar varias veces el mismo objeto, en este caso el 1 y una vez el 3
x[7]
x <- c(5.4, 6.2, 7.1, 4.8, 7.5)
names(x) <- c('a', 'b', 'c', 'd', 'e')
x
print(x)#print(x) y x es lo mismo...
x[2:4]#ej1 creando selecciones de datos 
x[c(2, 3, 4)]
x[c(-1,-5)]
x[-c(1, 5)]
x["a"]# los nombres van entre comillas
x[c("a", "b")]#si llamo más de un elemento, se agreca la c
x[which(names(x) == "a")]
x <- c(5.4, 6.2, 7.1, 4.8, 7.5)
names(x) <- c('a', 'b', 'c', 'd', 'e')
print(x)
x[-which(names(x) == "g")]#ejercicio 2 , sale un named numeric(0), porque no hay ninguno que se llame g
names(x) == "g" #de las cinco columnas ninguna se llama g, por eso devuelve todo FALSE
x[c(TRUE, TRUE, FALSE, FALSE)]
x[x<7]
x[x>7]
x[x < 6 | x > 7] #pedir los elementos de un rango determinado
x <- c(5.4, 6.2, 7.1, 4.8, 7.5)
names(x) <- c('a', 'b', 'c', 'd', 'e')
print(x)
x[x>4 &x<7]#ejercicio 3, valores mayores que 4 y menores que 7. el y es el signo &
x <- c(x, NA)
XX
X
x
is.na(x) #devuelve TRUE a los valores que son Na
na.omit(x)
x
xomit <- na.omit(x)
xomit #aca no se que paso, ... 
f <- factor(c("a", "a", "b", "c", "c", "d"))
f
f[f == "a"]
set.seed(1)
m <- matrix(rnorm( 6 * 4), ncol = 4, nrow = 6)
m[3:4, c(3, 1)]
m
m[5, 2]
m[3:4, c(3, 1)]
m[, c(3, 4)] # devuelve las columnas 3 y 4 (y todas las filas porque no las seleccioné antes de al coma del comando)
m[3, ]# devuelve la fila 3 y todas sus columnas porque no las especificamos
m[3, , drop = FALSE] # SI solo se accede a una fila como en este caso o incluso a una columna, R lo convierte en vector. Para mantenertlo como matriz se usa el comando DROP = FALSE
m
m[5]
set.seed(1)
m <- matrix(rnorm( 6 * 4), ncol = 4, nrow = 6)
m <- matrix(1:18, nrow = 3, ncol = 6)
print(m)
m[2,4,2,5]
m[2:5]
m[2,c(4,5)]#correctooo
xlist <- list(a = "UNTDF", b = 1:10, data = head(iris))
xlist[1]
b
"b"
xlist
xlist <- list(a = "UNTDF", b = 1:10, data = head(iris))
xlist[1]
xlist
xlist[[2]]
xlist[[2]][2]
mod <- aov(pop ~ lifeExp, data=gapminder)
mod
str(mod)
attributes(mod)
names(mod)
mod$df.residual#resultado ejercicio 6 
head(gapminder[3], 5)
gapminder[1:3,]
gapminder[gapminder$year = 1957,]
gapminder[gapminder$year == 1957,]#faltaba un =
gapminder[,-1:4]
gapminder[,-c(1:4)]
gapminder
head(gapminder)
str(gapminder)
gapminder[,-c(1:4)]
gapminder[gapminder$lifeExp>80]

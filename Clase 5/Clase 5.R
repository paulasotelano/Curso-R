set.seed(10)
X <-rpois(1, lambda =8 )
if (x < 10) print ("x es menor a 10")
x <- rpois(1, lambda = 8)
xif (x >= 10) {print("x es más grande o igual que 10")}
x
x <- rpois(1, lambda=8)

if (x >= 10) {
  print("x es más grande o igual que 10")
} else if (x > 5) {
  print("x es mayor que 5")
} else {
  print("x es menor que 5")
}

read.csv("data/gapminder-FiveYearData.csv")
gapminder <- read.csv("data/gapminder-FiveYearData.csv")
gapminder$year == 2002
if (any(gapminder$year == 2002)) {print("hay elementos del año 2002")} # el any sirve para buscar datos en todos los elementos del vector. si no lo ponemos, busca solo en el primer elemento del vector.
gapminder$year == 2012
if (any(gapminder$year == 2012)) {print("hay elementos del año 2012")} else print("no hay datos")
for (i in seq(from = 1, to = 10, by = 2 )) {print(i)}
vector_salida <- c() # crea un vector vacio, para guardar los resultados y usar en lugar de print
matrix_salida <- matrix(nrow = 5, ncol = 5)
matrix_salida <- matrix(nrow = 5, ncol = 5)
vector_j <- c('a', 'b', 'c', 'd', 'e')
for (i in 1:5) {
  for (j in 1:5) {
    valor_j_temp <- vector_j[j]
    salida_temp <- paste(i, valor_j_temp)
    matrix_salida[i, j] <- salida_temp
  }
}
vector_salida2 <- as.vector(matrix_salida)
matrix_salida

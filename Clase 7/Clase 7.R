mi_suma <- function(a, b) {
  suma <- a + b
  return(suma)
}
mi_suma(5, 4)
mi_suma(5, 4, 6) #hay un argumento sin usar, la funcion original tiene solo dos variables y acá le doy tres valores.
kelvin_a_fahr <- function(temp) {
  fahr <- (temp - 273.15) * (9/5) + 32
  return(fahr)
}
kelvin_a_fahr (23)
kelvin_a_fahr (273)
gapminder <- read.csv("Data/gapminder-FiveYearData.csv")
kelvin_a_fahr (gapminder$year) # ejemplo con col year de gapminder... 
celsius_a_kelvin <- function (temp) {
  kel <- (temp + 273.15) 
  return (kel)}
celsius_a_kelvin (0)
celsius_a_fahr <- function (temp) { 
  kelvin <- celsius_a_kelvin(temp)
  fahr <- kelvin_a_fahr(kelvin)
  return(fahr)}
celsius_a_fahr (10)
calcPBI <- function(dat) {
  pbi <- dat$pop * dat$gdpPercap
  pbi
}
calcPBI <- (head(gapminder))
calcPBI <- function(dat) {
  pbi <- dat$pop * dat$gdpPercap
  pbi
}
calcPBI(head(gapminder))
calcPBI <- function(dat, year=NULL, country=NULL) {
  if(!is.null(year)) {
    dat <- dat[dat$year %in% year, ]
  }
  if (!is.null(country)) { #signo ! es para negar  lo que estoy determinando
    dat <- dat[dat$country %in% country,]
  }
  gdp <- dat$pop * dat$gdpPercap
  
  new <- cbind(dat, gdp = gdp)
  return(new)
}
calcPBI(head(gapminder))
calcPBI(gapminder, year= c(1987, 1952), country = "New Zealand") #ejercicio3
mejores_practicas <- c("Escribe", "programas", "para", "personas", 
                       "no", "para", "computadoras")
paste(mejores_practicas, collapse = " ") #ejercicio 4
mejores_practicas <- c("Escribe", "programas", "para", "personas", 
                       "no", "para", "computadoras")
paste(mejores_practicas, collapse = "_")

vallar <- function(mejores_practicas, "***")
vallar <- paste(mejores_practicas, collapse = " ")
vallar
vallar("***")
paste(mejores_practicas, collapse = " ")
paste0("***", paste(mejores_practicas, collapse= " "), "***") #el cero es para que no haya espacios entre los asteriscos
vallar <- function(texto, envoltura){
  paste0(envoltura, paste(texto, collapse = " "), envoltura)
}
vallar(mejores_practicas, "***")
library(ggplot2)
ggsave("Mi_grafico_mas_reciente.pdf")
ggplot(data=gapminder, aes(x=year, y=lifeExp, colour=country)) 
+ geom_line() +
  theme(legend.position = "bottom") +
  facet_grid(continent~ .)
pdf("Mi_grafico.pdf", width = 12, height = 8, onefile = TRUE)
for(continent in levels(gapminder$continent)){
  print(ggplot(data=gapminder[gapminder$continent == continent, ], aes(x=year, y=lifeExp, colour=country)) +
          geom_line())
}
dev.off()
pdf("Life_Exp_vs_time.pdf", width=12, height=12, onefile = TRUE)
ggplot(data=gapminder, aes(x=year, y=lifeExp, colour=country)) +
  geom_line() +
  theme(legend.position = "bottom")
dev.off()
       
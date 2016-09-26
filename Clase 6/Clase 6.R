gapminder <- read.csv("data/gapminder-FiveYearData.csv")
library("ggplot2")
ggplot(data = gapminder, aes(x = gdpPercap, y = lifeExp)) +
  geom_point()# ggplot "avisa" que vamos a hacer un gráfico. dentro de "aes" va la info del gráfico, ejes, colores etc. dentro de geom, le decimos que vamos a graficar los datos como puntos. 
ggplot(data = gapminder, aes(x = gdpPercap, y = lifeExp))# grafico vacio (ver plots) porque no le indicamos que tipo de geometria usar para graficar x e y
ggplot(data = gapminder, aes(x = year, y = lifeExp)) +
  geom_point()#ejercicio 1 clase 6        
ggplot(data = gapminder, aes(x = gdpPercap, y = lifeExp, color = continent)) +
  geom_point()
ggplot(data = gapminder, aes(x = year, y = lifeExp, color = continent)) +
  geom_point()#ejercicio 2
ggplot(data = gapminder, 
       aes(x = year, y = lifeExp, 
          color = continent)) +
  geom_line()# falta el by... country
ggplot(data = gapminder, 
       aes(x = year, y = lifeExp, 
           by = country, color = continent)) +
  geom_line()#grafica tantas líneas por continente como países haya
ggplot(data = gapminder, 
       aes(x = year, y = lifeExp,
           by = country, color = continent)) +
  geom_line() + geom_point()#cada signo + es una capa nueva
ggplot(data = gapminder, 
      aes(x = year, y = lifeExp, by = country)) +
  geom_line(aes(color = continent)) + geom_point()#como el color lo pusimos solo dentro de geomline, las líneas tienen color y los puntos por defecto son negros. Los puntos están por encima de las líneas porque el orden así lo indica.
ggplot(data = gapminder, 
       aes(x = year, y = lifeExp, by = country)) + geom_point() +
  geom_line(aes(color = continent))#cambiamos el orden. lineas por debajo de los puntos, ejercicio 3
ggplot(data = gapminder, aes(x = gdpPercap, y = lifeExp)) +
  geom_point(alpha = 0.5) + scale_x_log10()#se pueden aplicar transformaciones, el alpha se agrega una transparencia, para visualizar mejor el gráfico, presenta algunos puntos grises y otros negros para mejor visualizacion
ggplot(data = gapminder, aes(x = gdpPercap, y = lifeExp)) +
  geom_point(alpha = 0.5, color = "red") + scale_x_log10()#agregamos el color rojo fuera del "aes" porque queremos TODOS los puntos rojos. ojo , red entre comillas!
ggplot(data = gapminder, aes(x = gdpPercap, y = lifeExp)) +
  geom_point() + scale_x_log10() + geom_smooth(method = "lm") #para agregar una linea de tendencia
ggplot(data = gapminder, aes(x = gdpPercap, y = lifeExp)) +
  geom_point() + scale_x_log10() + geom_smooth()#si no especificamos el método lineal (lm), agrega una regresion local...LOES
ggplot(data = gapminder, aes(x = gdpPercap, y = lifeExp)) +
  geom_point() + scale_x_log10() + geom_smooth(method = "lm", color = "red") + geom_smooth()#se puede agregar capas con el signo +
ggplot(data = gapminder, aes(x = gdpPercap, y = lifeExp)) +
  geom_point() + scale_x_log10() + geom_smooth(method = "lm", size = 1.5)#el argumento size, permite cambiar el tamaño de en este caso la línea de la regresión, por la posición donde lo puse
ggplot(data = gapminder, aes(x = gdpPercap, y = lifeExp)) +
  geom_point(size = 1) + scale_x_log10() + geom_smooth(method = "lm", size = 1.5) #si lo agrego a geom point, al tamaño pongo 1 se achican
ggplot(data = gapminder, aes(x = gdpPercap, y = lifeExp)) +
  geom_point(alpha = 0.5, size = 1, color = "violet") + scale_x_log10() + geom_smooth(method = "lm", size = 1.5)
ggplot(data = gapminder, aes(x = gdpPercap, y = lifeExp )) +
  geom_point(alpha = 0.5, size = 1, aes (color = continent)) + scale_x_log10() + geom_smooth(method = "lm", size = 1.5)#ejercicio 4. ojo faltaría usar el comando shape para cambiar la forma (y no el tamaño) del punto
starts.with <- substr(gapminder$country, start = 1, stop = 1)
az.countries <- gapminder[starts.with %in% c("A", "Z"), ]
ggplot(data = az.countries, 
       
       ggplot(data = az.countries, 
              aes(x = year, y = lifeExp, color = continent)) +
         geom_line() + 
         facet_wrap( ~ country) +
         xlab("Year") +
         ylab("Life expectancy") + 
         ggtitle("Figura 1") +
         scale_colour_discrete( name = "Continent") +
         theme(strip.text = element_text(size = 13))    

       aes(x = year, y = lifeExp, color = continent)) +
  geom_line() + facet_wrap( ~ country)# starts.with, armo un nuevo vector que incluye las primeras letras de cada pais, start y stop = 1, si pusiera start 1 y stop 2, chequea las dos primeras letras del pais
#facet_wrap determina hacer un gráfico por país (en este caso). signo ~ siempre se usa en el comando facet_wrap
#facet_grid otra forma de hacer gráficos multipanel, con dos variables. ej. gdp dividio en niveles alto medio y bajo y los continentes. facet_grid (gdpfactor ~ continent)
ggplot(data = az.countries, 
       aes(x = year, y = lifeExp, color = continent)) +
  geom_line() + 
  facet_wrap( ~ country) +
  xlab("Year") +
  ylab("Life expectancy") + 
  ggtitle("Figura 1") +
  scale_colour_discrete( name = "Continent") +
  theme_dark()#se puede cambiar el "theme" por algunos pre especificados (ej theme_dark) o cambiar cosas específicas
ggplot(data = az.countries, 
       aes(x = year, y = lifeExp, color = continent)) +
  geom_line() + 
  facet_wrap( ~ country) +
  xlab("Year") +
  ylab("Life expectancy") + 
  ggtitle("Figura 1") +
  scale_colour_manual( name = "Continent",
                       values =
                         c(Africa = "red",
                           Americas = "blue",
                           Asia = "yellow",
                           Oceania = "orange",
                           Europa = "purple"))+ 
  theme(axis.text.x=
          element_text(angle = 90, hjust = 1))
#ver en la solapa help CheatSheets, Data Visualization with ggplot2
# gráfico animado... comandos x slack. cargar paquetes que permiten animar los gráficos 
# Cargar paquetes, library(gganimate), library(tweenr),library(dplyr). ImageMagick es un programa que hay que bajar de internes (a demás de los tres paquetes que hay que instalar en R). el ImageMagick permite juntar, animar los gráficos que se generan
gapminder
gapminder$pop
popmillon <- gapminder$pop / 1000000 #ejercicio 1 de vectorizacion
gapminder <- cbind(gapminder, popmillon)
gapminder$popmillon <- gapminder$popmillon
gapminder$popmillon
head(gapminder)
ggplot(data = gapminder, aes(x = year, y = popmillon)) +
  geom_point()#ejercicio 2
m <- matrix(1:12, nrow = 3, ncol = 4)
m
m ** -1
m * c(1, 0, -1)
m > c(0, 20)
m * c(1, 0, -1, 2)
vector1 <- (1:100)
vector1
vector2 <- (1:10000)
vector2
vector1 ** -2
sum(vector1 ** -2)

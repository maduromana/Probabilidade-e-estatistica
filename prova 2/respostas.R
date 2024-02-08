install.packages("ggplot2")
library(ggplot2)

### ex 1
dados_1=read.csv('ex1.csv', dec = "." )
dados_1
ggplot(dados_1,aes(tempo))+geom_histogram()

media = mean(dados_1$tempo)
dados_1$px=dexp(dados_1$tempo,1/media)
ggplot(dados_1,aes(tempo,px))+geom_histogram(aes(y=..density..))+geom_line(col='blue')


## ex 4
dados_4=read.csv('ex4.csv', dec = "." )
dados_4
ggplot(dados_4,aes(peso))+geom_histogram()


media = mean(dados_4$peso)
desvio = sd(dados_4$peso)
pnorm(45,media,desvio )+(1-pnorm(55,media,desvio))


dados_4$px=dnorm(dados_4$peso,media,desvio)
ggplot(dados_4,aes(peso,px))+geom_histogram(aes(y=..density..))+geom_line(col='blue')


### exercico 3 

leves = qnorm(0.3,media, desvio)
leves
pesados = qnorm(0.7,media, desvio)
pesados 



# Determinar os limites dos pesos para classificação
limite_leve <- qnorm(0.3, mean = media, desvio)  # 30% mais baixos
limite_medio_inferior <- qnorm(0.3, mean = media, desvio)  # 30%
limite_medio_superior <- qnorm(0.7, mean = media,desvio)  # 70%
limite_pesado <- qnorm(0.7, mean = media, desvio)  # 30% mais altos

# Exibir os resultados
limite_leve
limite_medio_inferior
limite_medio_superior
limite_pesado



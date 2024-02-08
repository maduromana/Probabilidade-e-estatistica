dados=read.csv('dados3.csv',sep = ",", dec = ".")

# Carregue as bibliotecas
library(gamlss)
library(GGally)
library(ggplot2)

# a) Análise gráfica
ggpairs(dados)

# b) Determinar um modelo de regressão
modelo = gamlss(consumo ~ chuva + temperatura + radiacao + altitude, data = dados)
summary(modelo)

# c) Interpretações do modelo final ajustado
summary(modelo)

# d) Efeitos ajustados
modelo$mu.fv
term.plot(modelo)

# e) Avaliar o ajuste do modelo
plot(modelo)

# f) Previsão para as condições específicas
novos_dados <- data.frame(chuva = 40, temperatura = 25, radiacao = 2500, altitude = 2000)
previsao <- predict(modelo, newdata = novos_dados, type = "response")
previsao


#Criar Data.Frame de Raspagem de Dados
library (rvest)
library (dplyr)

#Criar objeto a partir do link
link <- "https://www.tripadvisor.com.br/Attractions-g303506-Activities-c42-Rio_de_Janeiro_State_of_Rio_de_Janeiro.html"
page <- read_html(link)

#Usar o pipe %>% para jogar o objeto dentro da função
Passeios_RJ <- page %>% 
html_nodes(".AIbhI") %>%
html_text()

valor <- page %>%
html_nodes(".avBIb.ngXxk") %>%
html_text()

#Criar Tabela

tabela <- data.frame(Passeios_RJ, valor)

#Criar Gráfico
library(ggplot2)
grafico <- ggplot(tabela, aes(x = Passeios_RJ, y = valor)) +
  geom_bar(stat = "identity", fill = "blue") +
  xlab("Passeios_RJ") +
  ylab("valor") +
  ggtitle("Valores dos passeios no Rio de Janeiro")
print (grafico)


# Criar o gráfico de linhas

grafico <- ggplot(tabela, aes(x = Passeios_RJ, y = valor, group = 1)) +
  geom_line(color = "blue") +
  geom_point(color = "red", size = 3) +
  xlab("Passeios_RJ") +
  ylab("valor") +
  ggtitle("Valores dos passeios no Rio de Janeiro")
print (grafico)

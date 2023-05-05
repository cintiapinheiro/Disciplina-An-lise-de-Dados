# Temperatura média atual e a taxa de aquecimento esperada
# Definir semente aleatória
set.seed(123)

# Temperatura média global em 2022
temp_media <- 14.76

# Taxa de aquecimento por ano
taxa_aquecimento <- 0.018

# Criar sequência de anos de 2022 a 2100
anos <- seq(2022, 2100, by = 1)

# Calcular temperaturas para cada ano
temperaturas <- temp_media + (anos - 2022) * taxa_aquecimento + rnorm(length(anos), mean = 0, sd = 0.5)

#Criar Data.Frame
Evolução <- data.frame(anos, temperaturas)

#Criar variável década
Evolução$decada <- cut(Evolução$anos, breaks = seq(2020, 2110, by = 10))

# Imprimir temperaturas
print(temperaturas)

Média <- data.frame(anos, temperaturas)

#Criar gráfico
ggplot(Evolução, aes(x = anos, y = temperaturas)) +
  geom_line(color = "blue") +
  geom_smooth(method = "lm", se = FALSE, color = "red") +
  scale_y_continuous(limits = c(13, 17), expand = c(0, 0)) +
  labs(x = "Anos", y = "Temperaturas (°C)", title = "Evolução das temperaturas médias globais (2022-2100)")













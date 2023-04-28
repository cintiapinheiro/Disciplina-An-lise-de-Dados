# Definir os tipos de eventos
tipos_eventos <- c("Ondas de calor", "Tempestades", "Enchentes")

# Gerar simulações de Poisson para cada tipo de evento
eventos_ondas_calor <- rpois(100, lambda = 1)
eventos_tempestades <- rpois(100, lambda = 3)
eventos_enchentes <- rpois(100, lambda = 2)

# Criar uma base de dados com as informações simuladas
dados <- data.frame(
  Evento = c(rep(tipos_eventos[1], 100), rep(tipos_eventos[2], 100), rep(tipos_eventos[3], 100)),
  Eventos_por_semana = c(eventos_ondas_calor, eventos_tempestades, eventos_enchentes)
)

# Calcular a média dos eventos para cada tipo de evento
media_ondas_calor <- mean(eventos_ondas_calor)
media_tempestades <- mean(eventos_tempestades)
media_enchentes <- mean(eventos_enchentes)

# Centralizar os valores simulados para cada tipo de evento
ondas_calor <- scale(eventos_ondas_calor)
tempestades <- scale(eventos_tempestades)
enchentes <- scale(eventos_enchentes)

# Plotar um histograma para cada tipo de evento
hist(ondas_calor, breaks = 10, main = "Histograma de Ondas de Calor", xlab = "Eventos por semana", ylab = "Frequência")
hist(tempestades, breaks = 10, main = "Histograma de Tempestades", xlab = "Eventos por semana", ylab = "Frequência")
hist(enchentes, breaks = 10, main = "Histograma de Enchentes", xlab = "Eventos por semana", ylab = "Frequência")

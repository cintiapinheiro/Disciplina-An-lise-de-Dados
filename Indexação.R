# Definir os tipos de eventos
tipos_eventos <- c("Ondas de calor", "Tempestades", "Enchentes")

# Gerar simulações de Poisson para cada tipo de evento
eventos_ondas_calor <- rpois(100, lambda = 1)
eventos_tempestades <- rpois(100, lambda = 3)
eventos_enchentes <- rpois(100, lambda = 2)

# Criar uma base de dados com as informações simuladas
dados <- data.frame(
  Evento = c(rep("ondas de calor"[1], 100), rep("tempestades"[2], 100), rep("enchentes"[3], 100)),
  Eventos_por_semana = c("eventos_ondas_calor", "eventos_tempestades", "eventos_enchentes")
)


dados <- data.frame(
  Evento = c(rep("ondas de calor", 100), rep("tempestades", 100), rep("enchentes", 100)),
  Eventos_por_semana = c("eventos_ondas_calor", "eventos_tempestades", "eventos_enchentes")
)

library(tidyr)

dados_separados <- separate(dados, col = "Evento", into = c("Tipo", "Descricao"), sep = "_de_")

dados_separados$Tipo

dados$Eventos_por_semana
dados [1:2]

ondas_de_calor <-11
eventos_tempestade <-10
enchentes <- 8

ondas_de_calor < enchentes
enchentes <= eventos_tempestade
dados_separados$Eventos_por_semana <= 0

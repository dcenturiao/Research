setwd("C:/Arquivos Daniel/Relatório SUDECO 2")

library(readxl)
library(dplyr)
library(ggplot2)
library(gplots)

db <- read_xlsx("Dados_Estabelecimentos_MS_2020.xlsx", sheet = "Data")

dbRILA <- db[,2:11]
db_mat <- data.matrix(dbRILA)

dbRILA_scaled <- t(scale(t(dbRILA)))

heatmap(db_mat)

my_palette <- colorRampPalette(c("blue", "white", "red"))

heatmap.2(db_mat)

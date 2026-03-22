

library("tidyverse")
library("readr")

df <- read.csv("C:/Users/filip/OneDrive/Documentos/metodos/municipios_virgula.csv")
idh <- df %>%
  summarise(idh_medio = mean(idh))

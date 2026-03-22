

library("tidyverse")
library("readr")
library("ggplot2")

df <- read.csv("C:/Users/filip/OneDrive/Documentos/metodos/municipios_virgula.csv")
idh <- df %>%
  summarise(idh_minimo = min(idh),
            idh_maximo = max(idh),
            idh_medio = mean(idh))

df <- read.csv("C:/Users/filip/OneDrive/Documentos/metodos/municipios_virgula.csv")
ggplot(df, aes(x = nome_municipio, y = idh))+
  geom_col(fill = "red")+
  labs(tittle = "Idh por município",
       x = "municípios",
       y = "IDH")
df
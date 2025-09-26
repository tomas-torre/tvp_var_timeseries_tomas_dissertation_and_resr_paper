setwd("C:/Users/tomas/OneDrive/Downloads/Dissertação/base_de_dados/ipca_jan95_mar2024_carnes")

library(ggplot2)

library(readxl)
inflacao <- read_excel("ipca_carnes_variacaomensal_base_final.xlsx")

colnames(inflacao)[1]<-'mes' 
colnames(inflacao)[2]<-'indice_geral' 
colnames(inflacao)[3]<-'carnes' 
colnames(inflacao)[4]<-'aves_e_ovos' 
colnames(inflacao)[5]<-'leites_e_derivados' 
colnames(inflacao)[6]<-'acc_12_meses'

library(tidyverse)
library(lubridate)
library(gridExtra)

inflacao %>% mutate(mes = ymd(mes))

g1 = ggplot(inflacao[25:351, ], aes(x=mes, y=indice_geral))+geom_line() + ggtitle("Índice Geral")
g2 = ggplot(inflacao[25:351, ], aes(x=mes, y=carnes))+geom_line() + ggtitle("Carnes")
g3 = ggplot(inflacao[25:351, ], aes(x=mes, y=aves_e_ovos))+geom_line() + ggtitle("Aves e Ovos")
g4 = ggplot(inflacao[25:351, ], aes(x=mes, y=leites_e_derivados))+geom_line() + ggtitle("Leites e Derivados")
g5 = ggplot(inflacao[25:351, ], aes(x=mes, y=acc_12_meses))+geom_line() + ggtitle("Alimentos - Acc. 12 meses")

grid.arrange(g1,g2,g3,g4,g5, ncol=1)



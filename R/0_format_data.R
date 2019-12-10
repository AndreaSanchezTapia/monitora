#read data
library(readxl)
library(dplyr)

#only read and imediately save to csv. won't use xlsx again
especies <- read_excel("./data/Dados-compilados_salve.xlsx", sheet = 01)
original_coord <- read_excel("./data/Dados-compilados_salve.xlsx", sheet = 02) %>%
  arrange(Fonte, spp_reduzido)
clean_coord <- read_excel("./data/Dados-compilados_salve.xlsx", sheet = 03) %>%
  arrange(Fonte, spp)

write.csv(especie, "./data/especies.csv")
write.csv(original_coord, "./data/original_coord.csv")
write.csv(clean_coord, "./data/clean_coord.csv")

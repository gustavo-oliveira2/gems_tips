---
  #GEMS-R: rio package
  #Tips 3
  #---
  
  #---
  # rio package
  #https://cran.r-project.org/web/packages/rio/vignettes/rio.html
  #---
  
  #Instalar pacote rio
  install.packages("Rio")
library("Rio")

#manipula??o de dados
library(dplyr)

#setando o caminho
setwd("C:/Users/gustavooliveira/OneDrive - ufs.br/ARTIGOS E ANALISES/Lucas Sartor")

#Importando o banco de dados
d.lucas <- import("DADOS F?SICA.xlsx")

d.lucas.tidy <- d.lucas %>% 
  mutate(TRAT = TRATAMENTOS, REP = REPETI??O, AMG = AreiaMuitoGrossa) %>% 
  select(TRAT,REP,AMG)


#Exportando o banco de dados
export(d.lucas.tidy, "Tip GEMS 3.xlsx")

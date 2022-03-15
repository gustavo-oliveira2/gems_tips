
# Informações do autor ----------------------------------------------------

#Gustavo H.F. de Oliveira
#Professor na Universidade Federal de Sergipe - UFS
---
#Engenheiro Agrônomo
#Doutor em Genética e Melhoramento de Plantas
  

# Primeiros passos --------------------------------------------------------

#Importação de dados
#Há várias maneiras de exportar seus dados. Aqui usaremos o pacote Rio para essa função.

#install.packages("rio")
library(rio)

#Antes de importar seus dados, tenha certeza que setou o caminho correto 
#para que o R identifique o caminho dos dados.

setwd("CAMINHO DOS DADOS")

#Agora você está pronto para importar seus dados com muita facilidade e por meio de linhas de 
#comando.

rio::import("DADOS")#Quando se usa pacote::função é a mesma coisa de usar somente a função, mas antes você deve acionar o labrary()






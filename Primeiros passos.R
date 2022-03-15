
# Informações do autor ----------------------------------------------------

#Gustavo H.F. de Oliveira
#Professor na Universidade Federal de Sergipe - UFS
---
#Engenheiro Agrônomo
#Doutor em Genética e Melhoramento de Plantas
  

# Primeiros passos --------------------------------------------------------

#Importação de dados
#Há várias maneiras de exportar seus dados. Aqui usaremos o pacote Rio para essa função.

install.packages("rio")
library(rio)

#Antes de importar seus dados, tenha certeza que setou o caminho correto 
#para que o R identifique o caminho dos dados.

setwd("CAMINHO DOS DADOS")

#Agora você está pronto para importar seus dados com muita facilidade e por meio de linhas de 
#comando.

rio::import("DADOS.csv")#Usar dessa forma quando não acionar a função labrary()
#ou somente
import("DADOS.csv")#Usar dessa forma quando acionar o library(rio)

#----ATENÇÃO----#
#É importante sempre direcionar os dados importados a algum objeto dentro do R, 
#para que facilite sua manipulação. Não é obrigatório, mas é uma boa sugestão

#Exemplor
DADOS <- import("DADOS.csv")






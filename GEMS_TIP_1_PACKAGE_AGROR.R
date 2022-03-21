## Informações do autor ----------------------------------------------------

  #---
  #GEMS-R: AgroR package
  #Tips 1
  #---
  
  #---
  # AgroR package
  #https://rdrr.io/cran/AgroR/man/AgroR-package.html
  #---
  #Authors:
  
  #Rodrigo Yudi Palhaci Marubayashi (ORCID) [contributor]

#Leandro Simoes Azeredo Goncalves (ORCID) [contributor]

# Pacotes -----------------------------------------------------------------


#Instalação do pacote
#install.packages("AgroR")
library(AgroR)


# Banco de dados ----------------------------------------------------------

#Banco de dados
data("laranja")


# -------------------------------------------------------------------------

#Gr?fico de barras
data("laranja")

attach(laranja)

a <- DBC(trat, bloco, resp,
         mcomp = "sk",angle=45,
         ylab = "Number of fruits/plants")
bar_graph(a,horiz = FALSE)



data("passiflora")
attach(passiflora)
a <- DBC(trat,bloco,MSPA)
b <- DBC(trat,bloco,MSR)
barplot_positive(a,b,var_name = c("DMAP","DRM"),ylab = "Dry root (g)")

#An?lise de variancia

install.packages("AgroR")
library(AgroR)
data(laranja)
attach(laranja)
DBC(trat, bloco, resp,
    mcomp = "sk",angle=45,
    ylab = "Number of fruits/plants")

#=============================
# Friedman test
#=============================
DBC(trat, bloco, resp, test="noparametric")
  
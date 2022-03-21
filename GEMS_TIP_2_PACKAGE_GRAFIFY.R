---
  #GEMS-R: grafify package
  #Tips 2
  #---
  
  #---
  # grafify package
  #https://grafify-vignettes.netlify.app/plot.html
  #https://github.com/ashenoy-cmbi/grafify
  #---
  
  #install.packages("remotes") #install remotes
remotes::install_github("ashenoy-cmbi/grafify@*release") #install latest release 
library("grafify")

#ler arquivos excell xlsx
install.packages("readxl")
library("readxl")

#criar planilha excell xlsx
install.packages("writexl")
library("writexl")

#Exemplo com duas variaveis 
plot_scatterbar_sd(data = d.lucas.tidy, #data table
                   xcol = TRAT,      #X variable
                   ycol = AMG)+        #Y variable
  labs(title = "Gr?fico para Sartor", #title 
       subtitle = "(Prof. Lucas valeu pelos dados)")       #subtitle

#Exemplo com tr?s variaveis
plot_3d_scatterbar(data_2w_Festing,     #data table
                   Strain,           #X variable
                   GST,                 #Y variable
                   shapes = Treatment, 
                   symsize = 3,         #grouping factor for shapes
                   ColPal = "vibrant",fontsize = 15)+ #"vibrant" palette
  labs(title = "Two-way ANOVA, matched shapes",
       subtitle = "(`vibrant` fill & black symbols)")

#distribui??o de dados
plot_qqline(data = data_t_pratio, 
            ycol = Cytokine,
            xcol = Genotype)+
  labs(title = "QQ plot",
       subtitle = "(`all_grafify` palette)")

plot_qqline(data_t_pratio, 
            log(Cytokine),       #log transformed-data
            Genotype)+         
  labs(title = "QQ plot with log-transformation",
       subtitle = "(`all_grafify` palette)")

#Analise de vari?ncia
d <- mixed_anova(d.lucas.tidy,          #data table
                 "AMG",             #dependent variable
                 "TRAT",#fixed factors   
                 "REP") 

dd <- mixed_model(d.lucas.tidy,          #data table
                  "AMG",             #dependent variable
                  "TRAT",#fixed factors   
                  "REP") #random factors

simple_anova(data = data_doubling_time,  #Doubling time dataset, no quotes
             Y_value = "Doubling_time",     #Quantitative variable in quotes
             Fixed_Factor = "Student") 

ranova(dd)
library(dplyr)

d.lucas <- read_excel("DADOS F?SICA.xlsx")

d.lucas.tidy <- d.lucas %>% 
  mutate(TRAT = TRATAMENTOS, REP = REPETI??O, AMG = AreiaMuitoGrossa) %>% 
  select(TRAT,REP,AMG)

write_xlsx(d.lucas.tidy, "Tip GEMS.xlsx")

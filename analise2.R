library(nortest)
library(MASS)

workSpace = "/home/danilo/Documentos/UFAL/Mestrado/Gamificação/analiseDados/"
setwd(workSpace)


contagem <- read.csv("contagemPorGami.csv")
summary(contagem)

dadosSemGami <- c(contagem$SemGami)
dadosComGami1 <-  c(contagem$ComGami1)
dadosComGami2 <-  c(contagem$ComGami2)


#dadosLibrasPortugues <- c(contagem$Libras.Datilologia, contagem$Português)

#Anderson-Darling Explicação http://paginapessoal.utfpr.edu.br/sheilaro/estatistica-aplicada-a-experimentos/AULA5TestesdeNormalidadeeSignificncia.pdf
print("Anderson-Darling")
resultadoDoTesteAndersonDarlingSemGami <- ad.test(dadosSemGami) # Anderson-Darling
resultadoDoTesteAndersonDarlingSemGami

resultadoDoTesteAndersonDarlingComGami1 <- ad.test(dadosComGami1) # Anderson-Darling
resultadoDoTesteAndersonDarlingComGami1

resultadoDoTesteAndersonDarlingComGami2 <- ad.test(dadosComGami2) # Anderson-Darling
resultadoDoTesteAndersonDarlingComGami2

#Wilcoxon
print("Wilcoxon")
wilcox.test(dadosSemGami, dadosComGami1, conf.level = 0.95) #dadosSemGamiXdadosComGami1
wilcox.test(dadosSemGami, dadosComGami2, conf.level = 0.95) #dadosSemGamiXdadosComGami2
wilcox.test(dadosComGami1, dadosComGami2, conf.level = 0.95) #dadosComGami1XdadosComGami2



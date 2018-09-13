library(nortest)
library(MASS)

workSpace = "/home/danilo/Documentos/UFAL/Mestrado/Gamificação/analiseDados/"
setwd(workSpace)


contagem <- read.csv("contagem.csv")
summary(contagem)

dadosComPortugues <- c(contagem$Libras.Datilologia, contagem$Sinais, contagem$Texto, contagem$Português)
dadosSemPortugues <- c(contagem$Libras.Datilologia, contagem$Sinais, contagem$Texto)


#dadosLibrasPortugues <- c(contagem$Libras.Datilologia, contagem$Português)

#Anderson-Darling Explicação http://paginapessoal.utfpr.edu.br/sheilaro/estatistica-aplicada-a-experimentos/AULA5TestesdeNormalidadeeSignificncia.pdf
resultadoDoTesteAndersonDarlingComPortugues <- ad.test(dadosComPortugues) # Anderson-Darling
resultadoDoTesteAndersonDarlingComPortugues

resultadoDoTesteAndersonDarlingSemPortugues <- ad.test(dadosSemPortugues) # Anderson-Darling
resultadoDoTesteAndersonDarlingSemPortugues

#Wilcoxon
wilcox.test(contagem$Libras.Datilologia, contagem$Sinais) #dadosLibrasSinais
wilcox.test(contagem$Libras.Datilologia, contagem$Texto) #dadosLibrasTexto
wilcox.test(contagem$Libras.Datilologia, contagem$Português) #dadosLibrasPortugues
wilcox.test(contagem$Sinais, contagem$Texto) #dadosSinaisTexto
wilcox.test(contagem$Sinais, contagem$Português) #dadosSinaisPortugues
wilcox.test(contagem$Texto, contagem$Português) #dadosTextPortugues



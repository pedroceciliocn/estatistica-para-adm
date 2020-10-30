##  QUESTÃO 1
IPC <- c(0.75, 0.64, 0.55, 0.52, 0.50, 0.48, 0.48, 0.44, 0.37, 0.37, 0.18)
pesos <- c(3.06, 9.15, 6.23, 9.19, 7.49, 4.25, 3.78, 3.85, 36.26, 3.34, 13.4)


# 1.1 MEDIA
media_ponderada_INPC<- weighted.mean(IPC, pesos)
media_ponderada_INPC


# 1.2 DESVIO PADRAO
install.packages("SDMTools")
library(SDMTools)

variancia<- wt.var(IPC, pesos)


desvio_padrao<- sqrt(variancia)
desvio_padrao


cv <- desvio_padrao/length(IPC)


## QUESTAO 2

amostra <- c(1.40, 1.49, 1.51, 1.40, 1.47, 1.39, 1.55, 1.52, 1.26, 1.51, 1.54, 1.35, 1.46, 1.49)

install.packages("DescTools")
library(DescTools)

mean(amostra)

#2.1 desvio medio
MeanAD(amostra)




#2.2 coeficiente de variacao
variancia_amostra<- var(amostra)
cv <- ((sqrt(variancia_amostra))/mean(amostra))*100

#ou


install.packages("goeveg")
library(goeveg)
cv(amostra)*100

#ou

CVaidarcerto<- (sd(amostra)/mean(amostra))*100


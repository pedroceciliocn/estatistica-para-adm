#Q01 P(1.5) - P(-1.2) P(1.2<z<=1.5)
pnorm(q = 1.5, lower.tail = TRUE) - pnorm(q = -1.2, lower.tail = TRUE) 


#PLOT
ggplot(data.frame(x = c(-3, 3)), aes(x)) +
  stat_function(fun = dnorm) + 
  stat_function(fun = dnorm, 
                xlim = c(0,1.5),
                geom = "area", fill = "blue", alpha = 0.5) +
  stat_function(fun = dnorm, 
                xlim = c(1.5,3),
                geom = "area", fill = "red", alpha = 0.5) +
  annotate("text", x = 1.8, y = 0.05, label = round(((pnorm(q = 1.5, lower.tail = FALSE))*100), 2)) +
  stat_function(fun = dnorm, 
                xlim = c(-3,-1.2),
                geom = "area", fill = "green", alpha = 0.5) +
  annotate("text", x = 0, y = 0.3, label = round(((pnorm(q = 1.5, lower.tail = TRUE) - pnorm(q = -1.2, lower.tail = TRUE))*(100)), 2)) +
  annotate("text", x = -1.5, y = 0.05, label = round(((pnorm(q = -1.2, lower.tail = TRUE))*(100)), 2))

########################################################################################
#Q02 HIPERGEOMETRICA PROVA
phyper(q = 1, m = 80, n = 720, k = 15, log = FALSE) #probabilidade do lote ser aceito? no maximo 1 defeituoso


#x = 1 ESTABILIZADORES DEFEITUOSOS entre os 15 retirados
#m = 80 ESTABILIZADORES DEFEITUOSOS entre as 800 totais (historico)
#n = 720 ESTABILIZADORES BONS (NAO DEFEITUOSOS) entre as 800 totais (historico)
#k = 15 ESTABILIZADORES retirados entre as 800 totais


ggplot(data = df_distri_hipergeometrica_megasena, mapping = aes(x = acertos, y = prob)) +
  geom_point() +
  geom_text(aes(label = round(1/prob,2), y = prob + 0.01),
            position = position_dodge(0.9),
            size = 3,
            vjust = 0) +
  labs(title = "Distribuição Hipergeométrica",
       subtitle = "Probabilidade de acertar entre 0 e 6 números na Loteria.",
       x = "Acertos (x)",
       y = "Probabilidade (1 em tantas chances)")

####################################################################################
#Q03 POISSON PROVA 60 media de atendimentos por hora ou 10 a cada 10min



dpois(x = 3, lambda = 10) #3 CHAMADAS EM 10min
dpois(x = 2, lambda = 10) #2 CHAMADAS EM 10min
dpois(x = 1, lambda = 10) #1 CHAMADAS EM 10min
dpois(x = 0, lambda = 10) #0 CHAMADAS EM 10min

dpois(x = 0, lambda = 10) #NAO RECEBER CHAMADAS

1 - (dpois(x = 0, lambda = 10) +
       dpois(x = 1, lambda = 10)) #PELO MENOS 2 CHAMADAS

ppois(1, lambda = 10, lower = FALSE) #PELO MENOS 3 CHAMADAS (OU O COMPLEMENTAR 1-P(X<3))






########################################################################################
#Q04 BINOMIAL PROVA
dbinom(x = 8, size = 10, prob = 0.98)
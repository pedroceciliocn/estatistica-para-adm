#' ---
#' title: "distribuição binomial"
#' author: "Pedro Neto"
#' date: "25/10/2020"
#' encoding: "UTF-8"
#' output: github_document
#' ---
#' Distribuição Hipergeométrica
dhyper(x = 2, m = 5, n = 7, k = 6, log = FALSE) #probabilidade de que 2 estejam queimadas


#x = 2 lampadas queimadas entre as 6 retiradas
#m = 5 lampadas queimadas entre as 12 totais (historico)
#n = 7 lampadas n?o queimadas entre as 12 totais (historico)
#k = 6 lampadas retiradas entre as 12 totais


1- (dhyper(x = 1, m = 5, n = 7, k = 6, log = FALSE) +
  dhyper(x = 0, m = 5, n = 7, k = 6, log = FALSE)) #probabilidade de que pelo menos 2 estejam queimadas

1-(0.007575758+ 0.113636364) +0.378787879

phyper(1, m = 5, n = 7, k = 6, lower.tail = FALSE, log.p = FALSE)





# LOTERIA (MEGA-SENA) PROBABILIDADES ##############################

1/dhyper(x = 4, m = 6, n = 54, k = 6, log = FALSE) ############ QUADRA

dhyper(x = 5, m = 6, n = 54, k = 6, log = FALSE) ############ QUINA

1/(dhyper(x = 6, m = 6, n = 54, k = 6, log = FALSE)) ############ SENA

dhyper(x = 0, m = 6, n = 54, k = 6, log = FALSE) ############ NENHUM

df_distri_hipergeometrica_megasena <- data.frame(acertos = 0:6, prob = dhyper(x = 0:6, m = 6, n = 54, k = 6, log = FALSE))

library("tidyverse")
# USANDO LINHAS
ggplot(data = df_distri_hipergeometrica_megasena, mapping = aes(x = acertos, y = prob)) +
  geom_line() +
  geom_text(aes(label = round(1/prob,2), y = prob + 0.01),
            position = position_dodge(0.9),
            size = 3,
            vjust = 0) +
  labs(title = "Distribuição Hipergeométrica",
       subtitle = "Probabilidade de acertar entre 0 e 6 n?meros na Loteria.",
       x = "Acertos (x)",
       y = "Probabilidade (1 em tantas chances)")



# USANDO COLUNAS
ggplot(data = df_distri_hipergeometrica_megasena, mapping = aes(x = acertos, y = prob)) +
  geom_col() +
  geom_text(aes(label = round(1/prob,2), y = prob + 0.01),
            position = position_dodge(0.9),
            size = 3,
            vjust = 0) +
  labs(title = "Distribuição Hipergeométrica",
       subtitle = "Probabilidade de acertar entre 0 e 6 n?meros na Loteria.",
       x = "Acertos (x)",
       y = "Probabilidade (1 em tantas chances)")





#USANDO PONTOS

0







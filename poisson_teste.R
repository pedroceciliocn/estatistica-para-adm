

#logical; if TRUE (default), probabilities are P[X ??? x], otherwise, P[X > x].



#######################
#POISSON EXEMPLO 5 CHAMADAS/H/FDS



dpois(x = 3, lambda = 5) #3 CHAMADAS EM 1H
dpois(x = 0, lambda = 5) #NAO RECEBER CHAMADAS

1 - (dpois(x = 0, lambda = 5) +
  dpois(x = 1, lambda = 5)) #PELO MENOS 2 CHAMADAS

ppois(1, lambda = 5, lower = FALSE) #PELO MENOS 2 CHAMADAS (OU O COMPLEMENTAR 1-P(X<2))


plot(dpois(x = 0:5, lambda = 5), type = "b")
#usando ggplot2
ggplot(data.frame(x=c(0:5)), aes(x)) +
  geom_line(aes(y=dpois(x, 5)), colour="red") 

  
#usando ggplot direito
df_dpois_chamadas <- data.frame(n_de_chamadas_ph = 0:5, prob = dpois(x = 0:5, lambda = 5))
ggplot(data = df_dpois_chamadas, mapping = aes(x = n_de_chamadas_ph, y = prob)) +
  geom_line() +
  geom_text(aes(label = round(prob,4), y = prob + 0.01),
            position = position_dodge(0.9),
            size = 3,
            vjust = 0) +
  labs(title = "Distribuição de Poisson",
       subtitle = "Chamadas: Probabilidade de 0 a 5 por hora num fim de semana.",
       x = "Sucessos (x)",
       y = "Probabilidade")


#### USANDO GGPLOT MAS COM BARRAS
df_dpois_chamadas <- data.frame(n_de_chamadas_ph = 0:5, prob = dpois(x = 0:5, lambda = 5))
ggplot(data = df_dpois_chamadas, mapping = aes(x = n_de_chamadas_ph, y = prob)) +
  geom_col() +
  geom_text(aes(label = round(prob,4), y = prob + 0.01),
            position = position_dodge(0.9),
            size = 3,
            vjust = 0) +
  labs(title = "Distribuição de Poisson",
       subtitle = "Chamadas: Probabilidade de 0 a 5 por hora num fim de semana.",
       x = "Sucessos (x)",
       y = "Probabilidade")
  
  


ggplot(transform(data.frame(x=c(0:5)), y=dpois(x, 5)), aes(x, y)) + 
  geom_bar(stat="identity")



#### PLOT

options(scipen = 999, digits = 2) # sig digits

events <- 0:5
density <- dpois(x = events, lambda = 5)
prob <- ppois(q = events, lambda = 5, lower.tail = TRUE)
df_poisson <- data.frame(events, density, prob)
ggplot(df_poisson, aes(x = factor(events), y = density)) +
  geom_col() +
  geom_text(
    aes(label = round(density,2), y = density + 0.01),
    position = position_dodge(0.9),
    size = 3,
    vjust = 0
  ) +
  labs(title = "PMF and CDF of Poisson Distribution",
       subtitle = "P(3).",
       x = "Events (x)",
       y = "Density") +
  geom_line(data = df_poisson, aes(x = events, y = prob))










library(tidyverse)



dist_discreta_df <- data.frame(value = c(0, 1, 2, 3, 4),
                               prob = c(1/16, 4/16, 6/16, 4/16, 1/16))

dist_discreta2_df <- data.frame(value = c("=0", "<=1", "<=2", "<=3", "<=4"),
                               prob = c(1/16, 4/16, 6/16, 4/16, 1/16))

#A ideia do operador %>% (pipe) é bem simples: 
#usar o valor resultante da expressão do lado esquerdo 
#como primeiro argumento da função do lado direito.
dist_discreta_df %>%
  ggplot(mapping = aes(x = value, y = prob)) +
  geom_bar(stat = "identity") +
  ylim(c(0, 1)) +
  xlab("Espaço de probabilidade S = {X:x = 0, 1, 2, 3, 4}") +
  ylab("Probabilidade")



  ggplot(data = dist_discreta_df, mapping = aes(x = value, y = prob)) +
  geom_bar(stat = "identity", fill = "blue", alpha = 0.5) +
  ylim(c(0, 1)) +
  xlab("Espaço de probabilidade S = {X:x = 0, 1, 2, 3, 4}") +
  ylab("Probabilidade")

  ggplot(data = dist_discreta_df, mapping = aes(x = value, y = cumsum(prob))) +
    geom_bar(stat = "identity") +
    ylim(c(0, 1)) +
    xlab("Espaço de probabilidade S = {X:x = 0, 1, 2, 3, 4}") +
    ylab("Probabilidade cumulativa")
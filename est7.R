numero_de_irmaos <- c(0, rep(1, 6), rep(2, 12), rep(3, 2), 6)
Fi <- table(numero_de_irmaos)

#freq simples Fi
df_nirmaos <- data.frame(Fi, stringsAsFactors = FALSE)
df_nirmaos2 <- data.frame(Fi, stringsAsFactors = FALSE)

#freq acumulada Fai
freq_acumulada <- cumsum(Fi)

df_nirmaos$freq_acumulada <- freq_acumulada

#freq % fi%

freq_relativa <- round(prop.table(Fi)*100, digits = 2) 

df_nirmaos$freq_relativa <- freq_relativa

#df_nirmaos$fiporc <- NULL



#freq fai%

freq_acu_relativa <- cumsum(freq_relativa)
df_nirmaos$freq_acu_relativa <- freq_acu_relativa


require(Hmisc)
describe(numero_de_irmaos)







prop.table(students_brothers_numb)















ggplot(data = df_nirmaos) +
  geom_point(mapping = aes(x = numero_de_irmaos, y = Freq))












##write.csv(df_nirmaos, file = "distribuicaoDeFreq.csv", row.names = FALSE)
getwd()



##tabelafreq <- read.csv("distribuicaoDeFreq.csv", dec = ".", sep = ",", header = TRUE)
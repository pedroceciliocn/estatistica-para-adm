idade <- c(20, 22, 23, 23, 23, 24, 26, 27, 22,
24, 24, 26, 25, 25, 25, 21, 23, 21,
25, 25, 25, 25, 26, 26, 22, 20, 20,
26, 26, 20, 26, 26, 26, 21, 27, 27,
26, 26, 27, 27, 25, 25, 23, 20, 20,
27, 27, 28, 28, 29, 28, 23, 29, 21)


library(tidyverse)


tabidade <- table(idade)
ggplot(data = df_idade2) +
  geom_bar(mapping = aes(x = idade))

ggplot(data = df_idade2) +
  geom_histogram(mapping = aes(x = idade), bins = 20)

ggplot(data = df_idade2) +
  stat_count(mapping = aes(x = idade))

ggplot(data = df_idade) +
  stat_count(mapping = aes(x = idade, fill = Freq), position = "fill")

ggplot(data = df_idade) +
  geom_col(mapping = aes(x = idade , y = Freq))





20-23
23-26
26-29

df_idade <- data.frame(tabidade, stringsAsFactors = FALSE)


#############################
length(idade)
#adicionando sexos


df_idade$sexos_alunos <- sexos_alunos

sexos_alunos<- sample(c("F", "M"), 54, replace = TRUE)
########################################################################################
breaks <- seq(from = min(idade), to = max(idade), by = 3)
interv_idades <- cut(idade, breaks = c(20, 23, 26, 29), right = FALSE, include.lowest = TRUE)
table(interv_idades)

#freq simples
df_freq_class <- data.frame(table(interv_idades), stringsAsFactors = FALSE)

#freq simples acumulada
freq_class_acumulada <- cumsum(table(interv_idades))

df_freq_class$freq_class_acumulada <- freq_class_acumulada

#freq relativa

freq_class_relativa <- round(prop.table(table(interv_idades))*100, digits = 2) 

df_freq_class$freq_class_relativa <- freq_class_relativa

#freq relativa acumulada

freq_class_acu_relativa <- cumsum(freq_class_relativa)
df_freq_class$freq_class_acu_relativa <- freq_class_acu_relativa



boxplot(idade)
summary(idade)

# MODA
# Create the function.
getmode <- function(v) {
  uniqv <- unique(v)
  uniqv[which.max(tabulate(match(v, uniqv)))]
}

# Create the vector with numbers.
v <- c(2,1,2,3,1,2,3,4,1,5,5,3,2,3)

# Calculate the mode using the user function.
result <- getmode(v)
print(result)


# 

4 + (15.5-8)*0.2
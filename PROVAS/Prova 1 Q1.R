#idade <- c(20, 22, 23, 23, 23, 24, 26, 27, 22,
           24, 24, 26, 25, 25, 25, 21, 23, 21,
           25, 25, 25, 25, 26, 26, 22, 20, 20,
           26, 26, 20, 26, 26, 26, 21, 27, 27,
           26, 26, 27, 27, 25, 25, 23, 20, 20,
           27, 27, 28, 28, 29, 28, 23, 29, 21)
           
           
           
           

#tabidade <- table(idade)


90-100  6
100-105 11
105-110 12
110-115 17
115-120 18
120-125 11
125-130 9
130-135 6
135-140 4
140-145 4


23-26
26-29

#df_altura <- data.frame(tabidade, stringsAsFactors = FALSE)

#breaks <- seq(from = min(idade), to = max(idade), by = 3)
interv_alturas <- cut(idade, breaks = c(90, 100, 105, 110, 115, 120, 125, 130, 135, 140, 145), right = FALSE, include.lowest = TRUE)
table(interv_alturas)

#freq simples
df_freq_alturas <- data.frame(table(interv_alturas), stringsAsFactors = FALSE)

df_freq_alturas$Freq <- c(6, 11, 12, 17, 18, 11, 9, 6, 4, 4)

df_freq_alturas$midpnt <- interv_alturas






#freq simples acumulada
freq_class_acumulada <- cumsum(table(interv_idades))

df_freq_class$freq_class_acumulada <- freq_class_acumulada
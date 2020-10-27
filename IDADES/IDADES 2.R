
infalunos <- c(18, 18, 19, 20, 20, 20, 20, 20, 21, 21, 22, 23, 24, 25, 25, 25, 26, 29, 30, 35, 37)


boxplot(infalunos)
df_infalunos <- data.frame(infalunos)
table(df_infalunos)

boxplot(df_infalunos)



id <- c(rep(18, 2), 19, rep(20, 6), rep(21, 2), 22, 23, 24, rep(25, 3), 26, 29, 30, 35, 37)
mean(id)





idades_alunos_adm <- c(23, 21, 18, 24, 26, 23, 20, 19,
                       18, 22, 19, 24, 19, 19, 17, 21,
                       23, 23, 28, 23, 17, 18, 21, 23,
                       27, 17, 18, 18, 19, 18, 20, 18,
                       18, 24, 47, 24, 20, 19, 27, 23,
                       22, 18, 19, 21, 28, 18, 18)

df_infalunos <- data.frame(idades_alunos_adm)

length(idades_alunos_adm)
mean(idades_alunos_adm)
median(idades_alunos_adm)

getmode <- function(idades_alunos_adm) {
  uniqv <- unique(idades_alunos_adm)
  uniqv[which.max(tabulate(match(idades_alunos_adm, uniqv)))]
}

moda <- getmode(idades_alunos_adm)
moda

sd(idades_alunos_adm)
plot(idades_alunos_adm, main = "", xlab = "ordem apresentada", ylab = "idade dos alunos")
title(main = "Idades dos alunos da turma de Estatística Univasf 2019.2")
abline(h = mean(idades_alunos_adm), col = "green")
abline(h = mean(idades_alunos_adm) + sd(idades_alunos_adm), col = "blue")
abline(h = mean(idades_alunos_adm) - sd(idades_alunos_adm), col = "light blue")
abline(h = median(idades_alunos_adm), col = "red")
abline(h = moda, col = "purple")
boxplot(idades_alunos_adm)

require(stats)
sale5 <- c(6, 4, 9, 7, 6, 12, 8, 10, 9, 13)
plot(sale5)
abline(lsfit(1:10, sale5))
abline(lsfit(1:10, sale5, intercept = FALSE), col = 4)

summary(idades_alunos_adm)

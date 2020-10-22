#livro pag 152
#q22 Numa central telefonica, o numero de chamadas chega segundo uma distribuicao de Poisson, 
#com a media de oito chamadas por minuto. Determine qual a probabilidade de que num minuto se tenha:

#(a) dez ou mais chamadas;
#(b) menos de 9 chamadas;
#(c) entre sete(inclusive) e nove(exclusive) chamadas.

#logical; se TRUE (default), as probabilidades sao P[X = x], usando o contrario, P[X > x].
#(a)
ppois(9, lambda = 8, lower = FALSE) #PELO MENOS 10 CHAMADAS (OU 10 OU MAIS CHAMADAS) (OU O COMPLEMENTAR 1-P(X<10))

#(b)
ppois(8, lambda = 8, lower = TRUE) #menos de 9 chamadas

#(c)

dpois(x = 8, lambda = 8) + dpois(x = 7, lambda = 8) #entre 7(incluso) e 9(excluso)


#q23
dpois(x = 0, lambda = 1/2000)
ppois(2, lambda = 1/2000, lower = TRUE)
ppois(2, lambda = 1/2000, lower = FALSE)

#q24
#lower.tail	logical; if TRUE (default), probabilities are P[X = x], otherwise, P[X > x].
pbinom(1, 10, 0.2) #P(x<=1) no max 1 defeituoso


#q31 1 entre 10 dos artigos é defeituoso. Numa amostra casual de 4, qual a probabilidade de que contenha:
#(a) nenhum defeituoso
dbinom(0, 4, 0.1)

#(b) exatamente 1 defeituoso
dbinom(1, 4, 0.1)

#(c) exatamente 2 defeituosos
dbinom(2, 4, 0.1)

#q32 uma caixa contera no maximo 2 pecas defeituosas. A caixa contem 18 pecas 
#A experiencia demonstra que apenas 5% das pecas vem defeituosas.
#Qual a probabilidade de que uma caixa satisfaca a garantia?

pbinom(2, 18, 0.05)

  
#q33 Curso de treinamento aumenta a produtividade de certa populacao de funcionarios em 80% dos casos. Se 10 funcionarios
# quaisquer participam desse curso, encontre a probabilidade de:

#(a) exatamente 7 funcionarios aumentaram a produtividade
dbinom(7, 10, 0.8)

#(b) no maximo 8 funcionarios aumentaram a produtividade
pbinom(8, 10, 0.8)

#(c) pelo menos 3 funcionarios NAO aumentaram a produtividade (usando como sucesso o "nao aumentam a produtividade")
# p = 0.2, q = 0.8 n = 10
pbinom(2, 10, 0.2, lower.tail = FALSE)

#q34
ppois(3, lambda = 2, lower = FALSE)

#q37
dbinom(0, 20, 0.1)
pbinom(2, 20, 0.1)
pbinom(2, 20, 0.1, lower.tail = FALSE)


#####TESTE NORMAL#####################

#1. bicaudal?
xbar <- 10.06
mu0 <- 10
sigma <- 0.2458
n <- 10
z <- (xbar-mu0)/(sigma/sqrt(n))
z

alpha <- 0.01
z.half.alpha = qnorm(1-alpha/2)
c(-z.half.alpha, z.half.alpha)
#como z está entre -z.half.alpha e z.half.alpha, segue a normalidade

#2. UNICAUDAL ESQUERDA

xbar <- 220
mu0 <- 244
sigma <- 24.5
n <- 20
z <- (xbar-mu0)/(sigma/sqrt(n))
z

alpha <- 0.07
z.alpha <- qnorm(1-alpha)
-z.alpha

#como z é menor do que -z.alpha, nao segue a normalidade


#3. UNICAUDAL DIREITA (EXEMPLO SLIDE BARRAS SIDERURGICA)

xbar <- 115
mu0 <- 118
sigma <- 15
n <- 35
z <- (xbar-mu0)/(sigma/sqrt(n))
z

alpha <- 0.05
z.alpha <- qnorm(1-alpha)
z.alpha



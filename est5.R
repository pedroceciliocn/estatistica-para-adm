system.time({
  output <- rep(NA, 1000000) 
  for (i in 1:1000000) {
    output[i] <- i + 1
  }
})


i <- 0


system.time({
  output <- NA 
  for (i in 1:1000000) {
    output[i] <- i + 1
  }
})


winnings <- vector(length = 1000000)
for (i in 1:1000000) {
  winnings[i] <- play()
}

mean(winnings)

system.time(for (i in 1:1000000) {
  winnings[i] <- play()
})


############ UPDATED VECTORIZED GET_SYMBOLS FUNCTION
get_many_symbols <- function(n) {
  wheel <- c("DD", "7", "BBB", "BB", "B", "C", "0")
  vec <- sample(wheel, size = 3 * n, replace = TRUE,
         prob = c(0.03, 0.03, 0.06, 0.1, 0.25, 0.01, 0.52))
  matrix(vec, ncol = 3)
}
get_many_symbols(5)



############# UPDATED VECTORIZED PLAY FUNCTION #######

play_many <- function(n) {
  symb_mat <- get_many_symbols(n = n)
  data.frame(w1 = symb_mat[,1], w2 = symb_mat[,2], w3 = symb_mat[,3], prize = score_many(symb_mat))
}

symbols <- matrix(c("DD", "DD", "DD", 
                     "C", "DD", "0", 
                    "B", "B", "B",
                    "B", "BB", "BBB",
                    "C", "C", "0",
                    "7", "DD", "DD"), nrow = 6, byrow = TRUE)

symbols
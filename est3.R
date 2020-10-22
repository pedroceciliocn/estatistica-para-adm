abs_loop <- function(vec) {
  for (i in 1:length(vec)) {
    if (vec[i] < 0) {
      vec[i] <- -vec[i]
    }
  }
  vec
}

###############################

abs_sets <- function(vec) {
  negs <- vec < 0
  vec[negs] <- vec[negs] * -1
  vec
}



#################################

long <- rep(c(-1, 1), 5000000)
system.time(abs_loop(long))
system.time(abs_sets(long))
system.time(abs(long))

###########################

vec <- c(1, -2, 3, -4, 5, -6, 7, -8, 9, -10)
vec < 0

vec[vec < 0]

vec[vec < 0] * -1


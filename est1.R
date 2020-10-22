while (condition) {
  
}


play_till_broke <- function(start_with) {
  cash <- start_with
  n <- 0
  while (cash > 0) {
    cash <- cash - 1 + play()
    n <- n + 1 
  }
  n
}

play_till_broke(100)

#################################### REPEAT ######################

play_till_broke <- function(start_with) {
  cash <- start_with
  n <- 0
  repeat {
    cash <- cash - 1 + play()
    n <- n + 1 
    if (cash <= 0) {
      break
    }
  }
  n
}

play_till_broke(100)



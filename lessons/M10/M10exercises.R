# Exercize 10.1:
fib <- numeric(10)
fib[1] <- 1
fib[2] <- 2
for (i in 3:10){
  fib[i] <- fib[i-1] + fib[i-2]
}
print(fib)

#Exercise 10.2:
fibonnaci <- function(x=10) {
  fib <- numeric(x)
  fib[1] <- 1
  fib[2] <- 2
  for (i in 3:10){
    fib[i] <- fib[i-1] + fib[i-2]
  }
  return(fib)
}
print(fibonnaci())

# Exercise 10.3:
between_zero_one <- function(x){
  if (x >= 0 & x <= 1){
    return(1)
  }
  else{
    return(0)
  }
}

#Exercise 10.4:
for(i in -2:2){
  print(between_zero_one(i))
}

# Exercise 10.5:
first10 = head(letters, 10)
last10 = tail(LETTERS, 10)
middle = LETTERS[22:24]
print(first10)
print(last10)
print(middle)

# Exercise 10.6:
for (i in 1:100){
  if(i %% 3 == 0 & i %% 5 == 0){
    print(paste(i, " FizzBuzz"))
  }
  else if (i %% 3 == 0){
    print(paste(i, " Fizz"))
  }
  else if (i %% 5 == 0){
    print(paste(i, " Buzz"))
  }
  else{
    print(paste(i))
  }
}

# Exercise 10.7:
str1 <- "Hilde loves Data Science."
print(unique(unlist(str1)))
#Class 6 Bioinformatics

add <- function(x,y=1) {
  x+y
}

#my second function
rescale <- function(x) {
  rng <-range(x)
  (x - rng[1]) / (rng[2] - rng[1])
}
# Test on a small example where you know the answer
rescale(1:10)

# How would you get your function to work here.
rescale( c(1,2,NA,3,10) )
# What should your function do here?
rescale( c(1,10,"string"))

## rescale2- Next generation rescaling -WOW!
rescale2 <- function(x, na.rm=TRUE, plot=FALSE) {
  if(na.rm) {
    rng <-range(x, na.rm=na.rm)
  } else {
    rng <-range(x)
  }
  print("Hello")
  answer <- (x - rng[1]) / (rng[2] - rng[1])
  print("is it me you are looking for?")
  if(plot) {
    plot(answer, typ="b", lwd=4)
  }
  print("I can see it in ...")
}

#test rescale 2
rescale2( c(1,2,NA,3,10), plot = TRUE)

#rescale 3- has return after answer
rescale3 <- function(x, na.rm=TRUE, plot=FALSE) {
  if(na.rm) {
    rng <-range(x, na.rm=na.rm)
  } else {
    rng <-range(x)
  }
  print("Hello")
  answer <- (x - rng[1]) / (rng[2] - rng[1])
  return(answer)
  print("is it me you are looking for?")
  if(plot) {
    plot(answer, typ="b", lwd=4)
  }
  print("I can see it in ...")
}

#test rescale 3
rescale3( c(1,2,NA,3,10), plot = TRUE)

#recale 4 - has return after the entire code
rescale4 <- function(x, na.rm=TRUE, plot=FALSE) {
  if(na.rm) {
    rng <-range(x, na.rm=na.rm)
  } else {
    rng <-range(x)
  }
  print("Hello")
  answer <- (x - rng[1]) / (rng[2] - rng[1])
  print("is it me you are looking for?")
  if(plot) {
    plot(answer, typ="b", lwd=4)
  }
  print("I can see it in ...")
  
  return(answer)
}

#test rescale 4
rescale4( c(1,2,NA,3,10), plot = TRUE)

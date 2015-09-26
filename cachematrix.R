## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
## inverted matrix parameter
  inv <- NULL
## set function y
  set <- function(y) {
    x <<- y
    inv <<- NULL
  }
## get the value of x
  get <- function() x

## variable set inverse function solve
  setinv <-function(solve) inv <<- solve
## retrieves the inverse function
  getinv <- function() inv
##  make the values os this function available
  list(set = set, get = get,
       setinv = setinv,
       getinv = getinv)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
    i <- x$getinv()
#if the value of the matrix already exists, gets the cached version, else recalculate
        if(!is.null(i)) {
      message("getting cached data")
      return(i)
    }
    data <- x$get()
    inv <- solve(data, ...)
    x$setinv(i)
    inv
  }
  
  

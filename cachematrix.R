## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
## A list if functions that cache the matrices and their inversions
makeCacheMatrix <- function(x = matrix()) {
 
    m <- NULL
    set <- function(y) {
      x <<- y
      m <<- NULL
    }
    get <- function() x
  setinv <- function(inv) m <<- inv
  getinv <- function() m 
  list(set = set, get = get, getinv = getinv, setinv=setinv)
}


## Write a short comment describing this function

cacheSolve <- function(x,...) {
  ## Return a matrix that is the inverse of 'x'
##check whether inversion exists and read from  cache  
  m <- x$getinv()
  if(!is.null(m)) {
    message("getting cached data")
    return(m)
  }
##calculate the inversion if not existing 
  data <- x$get()
  m <- solve(data,...)
  x$setinv(m)
  m
}

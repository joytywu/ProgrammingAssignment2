## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
  i <- NULL
  setx <- function(y){
    x <<- y
    i <<- NULL
  }
  getx <- function() x
  setinverse <- function(inverse) i <<- inverse
  getinverse <- function() i
  list(setx = setx, getx = getx, 
       setinverse = setinverse, getinverse = getinverse)
}
## Write a short comment describing this function

cacheSolve <- function(x, ...) {
  i <- x$getinverse()
  if(!is.null(i)) {
    message("getting cached data")
    return(i)
  }
  data <- x$getx()
  i <- solve(data,...)
  x$setinverse(i)
  i
        ## Return a matrix that is the inverse of 'x'
}

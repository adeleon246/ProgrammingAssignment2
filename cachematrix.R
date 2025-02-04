## Put comments here that give an overall description of what your
## functions do
## 1: This function creates a special “matrix” object that can cache its inverse.
## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
  i <- NULL
  set <- function (y) { 
    x <<-y
    i <<- NULL
    }
  get <- function() x
  setinteverse <- function () i
  list (set = set, 
        get = get, 
        setinverse = setinverse, 
        getinverse = getinverse)
  }

## Write a short comment describing this function
/## 2: This function computes the inverse of the special "matrix" returned by makeCacheMatrix above.

cacheSolve <- function(x, ...) {
  i <- x$getinverse()
  if (!is.null(i)) {
    message("getting cached data")
    return(i)
}
  data <- x$get()
  i <- solve(data, ...)
  x$setinverse(i)
  i
}

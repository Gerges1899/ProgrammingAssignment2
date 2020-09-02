## Put comments here that give an overall description of what your
## functions do

## makeCacheMatrix creats special matrix object which can cache its inverse


makeCacheMatrix <- function(x = matrix()) {
  IN <- NULL
  set <- function(y) {
    x <<- y
    IN <<- NULL
  }
  get <- function() x
  setinverse <- function(inverse) IN <<- inverse
  getinverse <- function() IN
  list(set = set, get = get,
       setinverse = setinverse,
       getinverse = getinverse)

}


## cachesolve computes the inverse of the special matrix that was returned
## by the makeChacheMatrix-function
cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  IN <- x$getinverse()
  if(!is.null(IN)) {
    message("getting cached data")
    return(m)
  }
  data <- x$get()
  IN <- solve(data, ...)
  x$setinverse(IN)
  IN
}

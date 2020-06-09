## to find the cache matrix
## functions do

## to get the inverse of cache matrix


 makeCacheMatrix <- function(x = matrix()) {
  j <- NULL
  set <- function(y){
  x <<- y
  j <<- NULL
  }
  get <- function()x
  setInverse <- function(inverse) j <<- inverse  ## setting inverse function
  getInverse <- function() j 
  list(set = set, get = get, 
  setInverse = setInverse, 
  getInverse = getInverse)        ## output matrix

}


## solving the cache matrix

cacheSolve <- function(x, ...) {
## Return a matrix that is the inverse of 'x'
  j <- x$getInverse()
  if(!is.null(j)){
  message("getting cached data")
  return(j)
  }
  mat <- x$get()
  j <- solve(mat,...)
        ## solving the matrix
  x$setInverse(j)
  j
}

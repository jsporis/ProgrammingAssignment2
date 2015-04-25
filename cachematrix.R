
## Create a "matrix that includes functions that do the following:
##   - set the value of the matrix
##   - get the value of the matrix
##   - set the value of the inverse matrix
##   - get the value of the inverse matrix


makeCacheMatrix <- function(x = numeric()) {
  cache <- NULL
  setMatrix <- function(funcval) {
    x <<- funcval
    cache <<- NULL
  }
  
  getMatrix <- function() {
    x
  }
  
  cacheInverse <- function(solve) {
    cache <<- solve
  }
  
  getInverse <- function() {
    cache
  }
  list(setMatrix = setMatrix, getMatrix = getMatrix, cacheInverse = cacheInverse, getInverse = getInverse)
}




## Calculate the inverse of the matrix created above

cacheSolve <- function(y, ...) {
  inverse <- y$getInverse()
  if(!is.null(inverse)) {
    message("collecting cached data")
    return(inverse)
  }
  data <- y$getMatrix()
  inverse <- solve(data)
  y$cacheInverse(inverse)
  

  inverse
}
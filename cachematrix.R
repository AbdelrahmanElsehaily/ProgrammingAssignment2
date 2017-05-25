## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {

  m_inverse <- NULL
  set <- function(y) {
    x <<- y
    matrix_inverse <<- NULL
  }
  get <- function() x
  setinverse <- function(matrix_inverse) m_inverse <<- matrix_inverse
  getinverse <- function()m_inverse
  list(set = set, get = get,
       setinverse = setinverse,
       getinverse = getinverse)
}



## Write a short comment describing this function

cacheSolve <- function(x, ...) {
    mi<- x$getinverse()
    if(!is.null(mi)) {
      message("getting cached data")
      return(mi)
    }
    data <- x$get()
    mi <- solve(data, ...)
    x$setinverse(mi)
    mi

}

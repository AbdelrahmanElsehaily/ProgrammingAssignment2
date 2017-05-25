
#call this function first with square matrix or use set
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
#should be called to cache the inverse of the matrix
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
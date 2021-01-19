
# Fore makeCacheMatrix
makeCacheMatrix <- function(x = matrix()) {
  m <- NULL
  set <- function(y){
    x <<- y
    m <<- NULL
  }
  get <- function() x
  setInverse <- function(solveMatrix) 
  m <<- solveMatrix
  getInverse <- function() m
  list(set = set, get = get, setInverse = setInverse, getInverse = getInverse)
}


#For cacheSolve
cacheSolve <- function(x, ...) {

  m <- x$getInverse()
  if(!is.null(m)){
    return(m)
  }
  req_Data <- x$get()
  m <- solve(req_Data)
  x$setInverse(m)
}
  
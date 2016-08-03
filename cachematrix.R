## Rishab Verma
## 3rd August 2016
## Programming assignment 2 for R programming in Data Science Specialization.

## This function creates a special "matrix" object that can cache its inverse.

makeCacheMatrix <- function(x = matrix()) {
    m <- NULL
    set <- function(y){
      x <<- y
      m <<- NULL
    }
    
    get <- function() x

    ##solve function returns the inverse.
    
    setInverse <- function(solve) m <<- solve
    getInverse <- function() m
    
    list(set = set, get = get, setInverse = setInverse, getInverse=getInverse)
}

## This function computes the inverse of the special "matrix" returned by makeCacheMatrix above.
## If the inverse has already been calculated (and the matrix has not changed), 
## then cacheSolve should retrieve the inverse from the cache.

cacheSolve <- function(x, ...) {
  ## Return a matrix that is the inverse of 'x'
  
  
    m <- x$getInverse()
  
    if(!is.null(m)){
      message("HEY HEY")
      return(m)
    }
    data <- x$get()
    m <- solve(data, ...)
    
    
    message("HERE")
    x$setInverse(m)
    ##inverse returned.
    m
}



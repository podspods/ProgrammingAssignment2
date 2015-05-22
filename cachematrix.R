# Pods
## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
<<<<<<< HEAD
library('MASS')
=======

>>>>>>> 55782f03cdcc12aeef6ac8509d15d8504b131a34
makeCacheMatrix <- function(x = matrix()) {

    matrixInverse <- NULL
    set <- function(y) {
        x <<- y
        matrixInverse <<- NULL
    }
    get <- function() x
<<<<<<< HEAD
    setInvMatrix <- function(ginv) matrixInverse <<- ginv
=======
    setInvMatrix <- function(rnorm) matrixInverse <<- rnorm
>>>>>>> 55782f03cdcc12aeef6ac8509d15d8504b131a34
    getInvMatrix <- function() matrixInverse
    list(set = set, 
         get = get,
         setInvMatrix = setInvMatrix,
         getInvMatrix = getInvMatrix)
    
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
## Return a matrix that is the inverse of 'x'
    matrixInverse <- x$getInvMatrix()
    if(is.null(matrixInverse)) {
        message("no cached data yet")
        data <- x$get()
<<<<<<< HEAD
        matrixInverse <- ginv(data)
=======
        matrixInverse <- rnorm(data, ...)
>>>>>>> 55782f03cdcc12aeef6ac8509d15d8504b131a34
        x$setInvMatrix(matrixInverse)
    } else{
        message("getting cached data")
    }
    matrixInverse
}

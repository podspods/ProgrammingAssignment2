# Pods
# -------------------- usage 
# cacheMatrive <- makeCacheMatrix(matriceToCache)
# result <- cacheSolve(cacheMatrive)
# This generic function solves the equation a %*% x = b for x, 
# where b can be either a vector or a matrix.

# this fuction create a cache variable containing the matrix,the matrix inverse, the reverse function,  

makeCacheMatrix <- function(x = matrix()) {

    matrixInverse <- NULL
    set <- function(y) {
        x <<- y
        matrixInverse <<- NULL
    }
    get <- function() x
    setInvMatrix <- function(solve) matrixInverse <<- solve
    getInvMatrix <- function() matrixInverse
    list(set = set, 
         get = get,
         setInvMatrix = setInvMatrix,
         getInvMatrix = getInvMatrix)
    
}


# this function check if the matrix is already calculate
# if the matrix inverse exist then return the cache value
# else calculate the inverse matrix by using solve function and cache data

cacheSolve <- function(x, ...) {
## Return a matrix that is the inverse of 'x'
    matrixInverse <- x$getInvMatrix()
    if(is.null(matrixInverse)) {
        message("no cached data yet")
        data <- x$get()
        matrixInverse <- solve(data,...)
        x$setInvMatrix(matrixInverse)
    } else{
        message("getting cached data")
    }
    matrixInverse
}

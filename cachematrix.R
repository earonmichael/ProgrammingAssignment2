## Put comments here that give an overall description of what your
## functions do
The goal of this experiment is to create two functions, "makeCacheMatrix" and "cacheSolve," that cache the inverse of a matrix.

## Write a short comment describing this function
makeCacheMatrix is a function that generates a special "matrix" object capable of caching its inverse for the given input.

makeCacheMatrix <- function(x = matrix()) {

## Write a short comment describing this function
cacheSolve is a function that returns the inverse of the special "matrix" returned by makeCacheMatrix. 
If the inverse has already been calculated, cachesolve should retrieve it from the cache.

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        inv <- x$getinv()
if(!is.null(inv)) 
{
message("getting cached result")
return(inv)
}
data <- x$get()
inv <- solve(data, ...)
x$setinv(inv)
inv
}

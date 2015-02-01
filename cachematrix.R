## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
# write a pair of functions that cache the inverse of a matrix.        
        
        y <- NULL
        set <- function(m) {
                x <<- m
                y <<- NULL
        }
        get <- function() x
        setInverse <- function(inverse) y <<-inverse
        getInverse <- function() y
        list(set = set, get = get,
             setInverse = setInverse,
             getInverse = getInverse)
}


## Write a short comment describing this function
# the function looks for the inverse in the cache and skips computation. Otherwise, it computes the
# the inverse of the matrix and and sets the value of the inversein the cache via the setInverse function.

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        y <- x$getInverse()
        if ( ! is.null(y)) {
                print("getting cached data")
                return (y)
        }
        y <- solve(x$get())
        x$setInverse(y)
        y
}

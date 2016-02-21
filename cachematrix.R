## The objective of the functions below is to return the inverse of a matrix. 
## The first function acts as a cache which can be used to set stage for the solve function and list out the possibilities.
## And the second function basically helps us return the value based on prior results or usage of the solve function ones.

## This is a function to make Cache Matrix which is basically being used to set stage for the solve function or set a place for the inverse task.

makeCacheMatrix <- function(x = matrix()) {
m <- NULL
        set <- function(y) {
                x <<- y
                m <<- NULL
        }
        get <- function() x
        setinverse <- function(solve) m <<- solve
        getinverse <- function() m
        list(set = set, get = get,
             setinverse = setinverse,
             getinverse = getinverse)


}


## This is a function which returns a value based on the situation. If the inverse is present, it is returning that. 
## Or it sends a message to execute the Solve function and get the result. 
## Assumption is that the matrix is invertible.

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'

m <- x$getinverse()
        if(!is.null(m)) {
                message("getting cached data")
                return(m)
        }
        data <- x$get()
        m <- solve(data, ...)
        x$setinverse(m)
        m
a

}

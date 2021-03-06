## The objective of the functions below is to cache the inverse of a matrix. 
## The first function acts as a object which can cache the inverse of the special matrix.
## And the second function calculates the inverse of this special matrix. If the inverse is already present then it retreives that inverse.

## This is a function to make special matrix object which eventually is a list of functions to set and get the matrix and set and get its value.

makeCacheMatrix <- function(x = matrix()) {
q <- NULL
        set <- function(w) {
                x <<- y
                q <<- NULL
        }
        get <- function() x
        setinverse <- function(solve) q <<- solve
        getinverse <- function() q
        list(set = set, get = get,
             setinverse = setinverse,
             getinverse = getinverse)


}


## This is a function which calculates the inverse of the special matrix. It first checks for any prior calcualtion of the inverse and if found it skips computation and returns it.
## Otherwise it calcualtes the inverse and sets its value in the cache with the setinverse function
cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'

q <- x$getinverse()
        if(!is.null(q)) {
                message("getting cached data")
                return(q)
        }
        data <- x$get()
        q <- solve(data, ...)
        x$setinverse(q)
        q

}

## Put comments here that give an overall description of what your
## functions do

## As the example,
##  set the value of the matrix
##  get the value of the matrix
##  set the value of the reverse
##  get the value of the reverse


makeCacheMatrix <- function(x = matrix()) {
    m <- NULL
    set <- function(y) {
        x <<- y
        m <<- NULL
    }
    get <- function() x
    setinverse <- function(inverse) m <<- inverse
    getinverse <- function() m
    list(set = set, get = get,
         setinverse = setinverse,
         getinverse = getinverse)
}


## Check if the inverse exists, if not, calculate and then cache it.

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
    m <- x$getinverse
    if(!is.null(m)) {
        return(m)
    }
    data <- x$get()
    m <- solve(data,...)
    x$setinverse(m)
    m
}

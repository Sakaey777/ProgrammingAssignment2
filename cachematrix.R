## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {

    # cache clear
    m.cache <- NULL

    # set function
    set <- function(y) {
        x.cache <<- y
        m.cache <<- NULL
    }

    # set matrix data
    get <- function() x

    # set cache data
    setmtx <- function(mtxi){
        m.cache <<- mtxi
        message("Setting cache data")
    }

    # get cache data
    getmtx <- function() m.cache
        
    # Return object as list
    list(set = set, get = get, setmtx = setmtx, getmtx = getmtx)    
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
    ## Return a matrix that is the inverse of 'x'

    ## If cashe can be used, use it!
    ca <- x$getmtx()    
    if(!is.null(ca)) {
        message("getting cache data")
        return(ca)
    }
    
    ## Get matrix data and inverse... It's heavy.
    message("Inversing now")
    data <- x$get()
    mtxi <- t(data)
    x$setmtx(mtxi)

    mtxi
}
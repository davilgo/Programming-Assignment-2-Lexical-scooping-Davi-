## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function


## make matrix assign to variable x
makeCacheMatrix <- function(x = matrix()) {
        d <- NULL               ## initialize d to NULL
        set <- function(y){     
                x <<- y         ## new matrix to x
                d <<- NULL
        }
        get <- function()x
        setInverse <- function(inverse) d <<- inverse
        getInverse <- function() d 
        list(set = set, get = get, 
             setInverse = setInverse, 
             getInverse = getInverse)
        
}


## Write a short comment describing this function


## Return a matrix that is the inverse of 'x'
## here I am generating a matrix that is the inverse of x
cacheSolve <- function(x, ...) {
        d <- x$getInverse()
        if(!is.null(d)){
                message("obtaining cache data")
                return(d)        ## return d  
        }
        mat <- x$get()
        d <- solve(mat,...)     ## here obtaining the inverse matrix
        x$setInverse(d)
        d                       ##"d" is the inverse matrix
        
}

## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) 
{
    i <- NULL  ## Initialize the inverse property
    set <- function( y)  ## Method to set the matrix
    {
            x <<- y
            i <<- NULL
    }
    get <- function() ## Get the matrix
    {
    	x ## Return the matrix
    }
    setInverse <- function(inverse)    ## Set the inverse of the matrix
    {
        i <<- inverse
    }
    getInverse <- function() ## Method to get the inverse of the matrix
    {
        i ## Return the inverse property
    }
    list(set = set, get = get,
         setInverse = setInverse,
         getInverse = getInverse)
}

## Write a short comment describing this function

cacheSolve <- function(x, ...) 
{
    i <- x$getInverse() ## Return a matrix that is the inverse of 'x'
    if( !is.null(i) ) ## Return the inverse if its already set
    {
            message("getting cached data")
            return(i)
    }
    data <- x$get() ## Get the matrix from our object
    i <- solve(data) %*% data ## Calculate the inverse using matrix multiplication
    x$setInverse(i)  ## Set the inverse to the object
    i  ## Set the inverse to the object
}



    

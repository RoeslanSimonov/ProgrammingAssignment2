## Assignment: Caching the Inverse of a Matrix
## Tho following two functions create a special object that allows to store a matrix and cache its inverse

## This funtion allows to catch the inverse of a special matrix-object

makeCacheMatrix <- function(x = matrix()) { 
    inv <- NULL                             
    set <- function(y) {                     
                          x <<- y                           
                          inv <<- NULL                      
                        }
    get <- function() x                           
    setinverse <- function(inverse) inv <<- inverse  
    getinverse <- function() inv                     
    list(set = set, 
         get = get, 
         setinverse = setinverse, 
         getinverse = getinverse)  
                                           }
                                                                                     


## This function allows to catch the inverse of a special matrix. 
## The function should retrieve the inverse of a catch if the inverse is already calculated

cacheSolve <- function(x, ...) {
    inv <- x$getinverse()
    if(!is.null(inv)) {
            message("getting cached data")
            return(inv)
        }
      data <- x$get()
      inv <- solve(data, ...)
      x$setinverse(inv)
      inv
  
                                }

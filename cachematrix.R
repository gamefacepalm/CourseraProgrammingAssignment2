## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

## In this code, 2 functions , 'makeCacheMatrix' and 'cacheSolve' , were made 
## to cache the inverse of a matrix

## 'makeCacheMatrix' function will create a special matrix object that cache
## the inverse of the matrix as the input(which is the invertible square matrix)

makeCacheMatrix <- function(x = matrix()) {
  
  ## Using the example given to produce the inverse matrix cache
  ## replacing 'mean' with 'inverse' for identification purposes
  
    inv <- NULL
    set <- function(y){
      x <<- y
      inv <<- NULL
    }
    get <- function()x
    setInverse <- function(inverse) inv <<- inverse
    getInverse <- function() inv 
    list(set = set, get = get, 
         setInverse = setInverse, 
         getInverse = getInverse)
  
  
}


## Write a short comment describing this function

## 'cacheSolve' function computes the inverse of the matrix from the above code
## If the inverse matrix has already been calculated, it will retrieve and show
## the matrix

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  
    inv <- x$getInverse()
  if(!is.null(inv)){
    message("getting cached data")
    return(inv)
  }
  mat <- x$get()
  inv <- solve(mat,...)
  x$setInverse(inv)
  inv
  
}

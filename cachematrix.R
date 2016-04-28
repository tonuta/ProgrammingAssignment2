## This program calculates the inverse of a non-singular matrix and caches the inverse of this matrix.
## The matrix must be invertible (that is, n x n dimensionally, n - positive integer)!!!

## makeCacheMatrix is a function that creates a matrix object that can cache its inverse.

makeCacheMatrix <- function(x = matrix()) {
  
  m <- NULL
  ## It initializes a matrix to NULL where the result of inversion will be stored.
  
  set <- function(y){
    x <<- y
    m <<- NULL
  }
  ## The set function shows where the values wil be cached.
  
  get <- function() x
  ## The get function return the input matrix (the first-time created matrix or the inverse matrix).
  
  setmatrix_inv <- function(solve) m <<- solve
  ## It calculates the inverse matrix.
  
  getmatrix_inv <- function() m
  ## It returns the inverse matrix.
  
  list(set = set, get = get, setmatrix_inv = setmatrix_inv, getmatrix_inv = getmatrix_inv)
}
  ## It is a list of functions that allo to extract calculated values of the matrix, changed matrix 
  ## and the inverse matrix using the overall makeCacheMatrix function.

## cacheSolve is a functrion to get the cache of the inverse matrix.
## If the matrix inverse has already been calculated, it will instead 
## find it in the cache and return it, and not calculate it again.


cacheSolve <- function(x = matrix(), ...) {
  
  m <- x$getmatrix_inv()
  if(!is.null(m)){
    message("getting cached data")
    return(m)
  }
  ## This coding block is related to the fact that if the inverse matrix exists, 
  ## than it is extracted from the cache.
  
  matrix <- x$get()
  m <- solve(matrix, ...)
  x$setmatrix_inv(m)
  m
  ## This coding block is related to the fact that if the inverse matrix is not in the cache,
  ## than it is first calculated (with the solve function) and then retrieved.
}



## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
# This will be used to create and object contaitin functions to set an retrieva a matrix and its inverse.

makeCacheMatrix <- function(x = matrix()) {
  inv<<-NULL
  set<-function(y){
    x<<-y
    inv<<-NULL
  }
  get<-function() x
  setinv<-function(y) inv<<-y
  getinv<-function() inv
  list(set = set, get = get, setinv = setinv, getinv = getinv)
}


## Write a short comment describing this function
# This is the function calculating the inverse and chacing it if needed based on the methods defined in the previous function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  inv <- x$getinv()
  if(!is.null(inv)) {
    message("getting cached data")
    return(inv)
  }
  data <- x$get()
  inv <- solve(data, ...)
  x$setinv(inv)
  inv
}

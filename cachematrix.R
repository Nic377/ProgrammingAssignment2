## Put comments here that give an overall description of what your
## functions do
##makeCacheMatrix is a function that creates a special matrix object that can cache its inverse

## Write a short comment describing this function
##The function stores the matrix and the cached value of the inverse of that matrix

makeCacheMatrix <- function(x = matrix()) {
cache<-NULL
setMatrix<-function(z){
x<<-z
cache<<-NULL
}
getMatrix<-function(){
x
}
cacheInverse<-function(solve){
cache<<-solve
}
getInverse <- function() {
cache
}
list(setMatrix=setMatrix, getMatrix=getMatrix, cacheInverse=cacheInverse, getInverse=getInverse)
}


## Write a short comment describing this function
##The function calculates the inverse of the makeCacheMatrix matrix


cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'

inverse<-x$getInverse()
if(!is.null(inverse)) {
message("getting cached data")
return(inverse)
}
data<-x$getMatrix()
inverse<-solve(data)
x$cacheInverse(inverse)
inverse
}


## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) 

{
invmatrix<-NULL
set<-function(y)
    {
      x<<-y
      invmatrix<<-NULL
    }
    
    get<-function() x
    
    setInvMat <-function(inverseMatrix) invmatrix <<-inverseMatrix
    getInvMat <-function() inverseMatrix
    
    list(set = set, get = get, setInvMat = setInvMat, getInvMat = getInvMat)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) 

{
 
        ## Return a matrix that is the inverse of 'x'
}

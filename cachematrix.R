## By mean of OOP concept encapsulation, the following two functions improve the performance of solve()
## when it is used for the calcilating the inverse of a matrix.


## makeCacheMatrix create matrix object. 
## This function set and get the value of the matrix and set and get the inverse value of the matrix

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
    getInvMat <-function() invmatrix
    
    list(set = set, get = get, setInvMat = setInvMat, getInvMat = getInvMat)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) 

{
 
        ## Return a matrix that is the inverse of 'x'
}

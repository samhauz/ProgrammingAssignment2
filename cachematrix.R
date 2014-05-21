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


## cacheSolve function returns the inverse of the matrix that is created by the makeCacheMatrix() above
## It check if the cache inverse of the matrix is already calcualte. If so, it retrieve the inverse value.
## if not, it calcualte the inverse of the matrix and set this inverse value  in the cache via setinverse.

cacheSolve <- function(x, ...) 

{        ## Return a matrix that is the inverse of 'x'
         
         invmatrix <- x$getinverse()
            if (!is.null(inv_x)) 
            {
                message("getting cached inverse matrix")
                return(invmatrix)
            } 
            
            else 
            {
                invmatrix <- solve(x$get())
                x$setinverse(invmatrix)
                return(invmatrix)
            }
}

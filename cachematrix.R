## Using OOP concept "encapsulation" the following two functions improve the performance of solve()
## when it is used for the calculating the inverse of a matrix.


## makeCacheMatrix create matrix object. 
## This function set & get the value of the matrix and set & get the inverse value of the matrix

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
    
    list(set = set, get = get, setInvMat = setInvMat, c = getInvMat)
}


## cacheSolve function returns the inverse of the matrix that is created by the makeCacheMatrix() above
## It check if the inverse of the matrix is already being calcualted. If so, it retrieve the inverse value from the cache.
## If not, it calcualte the inverse of the matrix and set this inverse value in the cache via setInvMat.

cacheSolve <- function(x, ...) 

{        ## Return a matrix that is the inverse of 'x'
         
         invmatrix <- x$getInvMat()
            if (!is.null(invmatrix)) 
            {
                message("Obtaining cached inverse matrix")
                return(invmatrix)
            } 
            
            else 
            {
                invmatrix <- solve(x$get())
                x$setInvMat(invmatrix)
                return(invmatrix)
            }
}

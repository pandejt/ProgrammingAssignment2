## This function is a constructor for global environment memory
## y<-matrix() is matrix in memory potentially other function use
## invM <-matrix() is matrix in memory for y inverse
makeCacheMatrix <- function(x = matrix()) {
  ## set external memory matrix y
  ## initialize the Inverse matrix (invM) for y matrix
  set<-function(){
    y<<-x
    invM <<- NULL                  
  }                                
  ## Retrieve Cached external stored matrix y
  get<-function() y

  ## Calculate Inverse using outside function call
  ## Parameter x is internal to makeCacheMatrix environment
  setInvMatrix<-function() {
    ## Call Inverse function
    ## The called function sets the inverse
    cacheSolve(x)
    }
  
  ## Retrieve inverse matrix
  getInvMatrix<-function() invM
  
  ## list provide a way to shorten or alter the sub function calls
  ## s=set allows for a$s() versus a$set()
  list(set=set, get=get,
       setInvMatrix=setInvMatrix,
       getInvMatrix=getInvMatrix)
}
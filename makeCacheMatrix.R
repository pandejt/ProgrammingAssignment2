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
    cacheSolve(x)
    }
  
  ## Retrieve inverse matrix
  getInvMatrix<-function() invM
  
  list(set=set, get=get,
       setInvMatrix=setInvMatrix,
       getInvMatrix=getInvMatrix)
}
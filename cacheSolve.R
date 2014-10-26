## cacheSolve is a separate funtion called to calculate the matrix inverse
## This function must be loaded in the environment ahead of the function
## using this one, i.e, makeCacheMatrix
cacheSolve <- function(x = matrix()) {
  
  if(!is.null(invM)) {
    message("getting cached data")
    return(invM)
  }
  ## Calculate  and set inverse
  ## Check determinant for invertable matrix
  ## Zero determinant doeos not have inverse
  if(abs(det(x)) < 0.0001) {
    message("DET 0, There is no inverse")  
    return()
  }
  ## R language function to compute inverse
  invM <<- solve(x)
  invM
}
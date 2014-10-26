## cacheSolve is a separate funtion called to calculate the matrix inverse
## This function must be loaded in the environment ahead of the function
## using this one, i.e, makeCacheMatrix
cacheSolve <- function(x = matrix()) {
  ## If the inverse is already filled use the existing matrix
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
  
  ## Consideration for inverse filled by a different
  ## can be checked by comparing the fileld inverse with the x matrix 
  ## passed to the cacheSolve function
  ## R language function to compute inverse
  invM <<- solve(x)
  invM
}
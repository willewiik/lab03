euclidean <-
function(a, b){
  if(!is.vector(a))  stop("first argument needs to be a number")
  if(length(a) != 1) stop("first argument needs to be a single number")
  if(!is.numeric(a)) stop("first argument is not a numerical value")
  if(!is.vector(b))  stop("second argument needs to be a number")
  if(length(b) != 1) stop("second argument needs to be a single number")
  if(!is.numeric(b)) stop("second argument is not a numerical value")
  
  greater_num <- max(a, b)
  lesser_num <- min(a, b)
  
  while(lesser_num != 0) {
    remainder <- greater_num %% lesser_num
    greater_num <- lesser_num
    lesser_num <- remainder
  }
  
  return(greater_num)
}

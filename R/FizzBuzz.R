#' A Fizz Buzz function which takes a vector as an argument.
#'
#' @param x A vector of integers
#' @param b A real number
#' @return return the number if it is not divisible by 3 and 5.Return 'Fizz' if the number is divisible by 3 or return 'Buzz' if the number is divisible by 5.Return 'Fizz Buzz' if it is divisible by both 3 and 5
#' @examples
#' fizzBuzz(1:20)
#' fizzBuzz(sample(14))
#' @export
#'
fizzBuzz <- function(x){
 if((sum(is.infinite(x))>=1)| 0 %in% x | sum(x<0)>=1){
   stop('Inputs cannot be negative, zero, or infinite value')
 }
  counter =c()
  for(i in 1:length(x)){
    if(x[i]%%3==0 & x[i]%%5==0){
      counter <- c(counter,'Fizz Buzz')
    }
    else if(x[i]%%3==0){
      counter <- c(counter,'Fizz')
    }
    else if(x[i]%%5==0) {
      counter <- c(counter,'Fizz')
    }else{
      counter <- c(counter,x[i])
    }
  }
  return(counter)
}


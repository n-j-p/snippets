f <- function(x) sqrt(x)

safef <- function(x) {
  tryCatch(
    expr = {
        ans = f(x)
    },
    error = function(e){ 
        # (Optional)
        # Do this if an error is caught...
    },
    warning = function(w){
      stop('square root of negative number')
    },
    finally = {
        # (Optional)
        # Do this at the end before quitting the tryCatch structure...
    }
  )
}

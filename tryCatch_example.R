f = function(x) sqrt(x)
f2 <- function(x) tryCatch(
    expr = {
        f(x)
    }, 
    warning = function(cond){
        print('negative x')
        print(conditionMessage(cond))
        NULL
    }
)

f2(2)
f2(-2)


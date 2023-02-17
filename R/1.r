# 1. R AS CALCULATOR APPLICATION
# a. Using with and without Python/R objects on console
# b. Using Python/R mathematical functions on console 

add <- function(x,y){
    return(x+y)
}

subtract <- function(x,y){
    return(x-y)
}

multiply <- function(x,y){
    return(x*y)
}

divide <- function(x,y){
    return(x/y)
}

# take input from the user
print("Select operation.")
print("1.Add")
print("2.Subtract")
print("3.Multiply")
print("4.Divide")
choice = as.integer(readline(prompt = "Enter Choice"))
num1 = as.integer(readline(prompt = "Enter 1st Number"))
num2 = as.integer(readline(prompt = "Enter 2nd Number"))

operator <- switch(choice,"+","-","*","/")

result <- switch(choice, add(num1, num2), subtract(num1, num2), multiply(num1, num2), divide(num1, num2))

print(paste(num1,operator,num2,"=",result))
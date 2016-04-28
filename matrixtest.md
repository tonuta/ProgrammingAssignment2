## My own tests for the makeCacheAMtrix and cacheSolve functions.


> rm(list = ls())

> getwd()
[1] "I:/Coursera/Data Science Certificate/CACHEMATRIX/ProgrammingAssignment2"

> source("cachematrix.R")

> avector<-c(1,1,1,3,4,3,3,3,4)

> test <- makeCacheMatrix(matrix(avector, nrow = 3))

> test$get()
     [,1] [,2] [,3]
[1,]    1    3    3
[2,]    1    4    3
[3,]    1    3    4

> cacheSolve(test)
     [,1] [,2] [,3]
[1,]    7   -3   -3
[2,]   -1    1    0
[3,]   -1    0    1

> bvector<-c(3,-2,2,-1)

> test1 <- makeCacheMatrix(matrix(bvector, nrow = 2))

> test1$get()
     [,1] [,2]
[1,]    3    2
[2,]   -2   -1

> cacheSolve(test1)
     [,1] [,2]
[1,]   -1   -2
[2,]    2    3
> 

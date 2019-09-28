\name{CGM}
\alias{CMG}
\title{Joint Estimation of Multiple Graphical Models}
\usage{
CGM_AHP_train <- function(trainX, trainY, lambda_value, adaptive_weight=array(1, c(length(unique(Y)), ncol(X), ncol(X))))
}
\description{
The method in paper Joint Estimation of Multiple Graphical Models. A method which jointly estimates several graphical models corresponding to the different categories present in the data. The method aims to preserve the common structure, while allowing for differences between the categories.
}

\examples{
print("this is a test for CGM_AHP_train")
X = matrix(rnorm(50*20),ncol=20)
Y <- NULL
ps <- cumsum(c(0.25,0.25,0.25,0.25))
r <- runif(50)
x <- c(1,2,3,4)
for (i in 1:50) Y <- c(Y, x[which(r[i] <= ps)[1]])
trainX = X
trainY = Y
lbd = 0.001
result = CGM_AHP_train(trainX, trainY, lbd)
}

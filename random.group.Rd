\name{random.group}
\title{Randomly Assign Elements into Groups}
\alias{random.group}
\usage{
random.group(data , size)
}

\description{
\code{random.group} randomly assign elements into groups without replacement.
}

\arguments{
  \item{data}{A vector of numerical values of the sampling pool.}
  
  \item{size}{Size of each group.}
}

\value{
  \code{random.group} returns either a matrix or a list with 2 sub-list. If there are not any leftover element, \code{random.group} returns a matrix with each row representing a group. If there are leftover elements, the first list shows group assignment with each row representing a group, and the second list shows leftover elements.
}

\examples{### Example 1 ###
data <- seq(from = 1 , to = 30)
size <- 7
groups <- random.group(data = data , size = size)
print(groups)

### Example 2 ###
data <- seq(from = 1 , to = 30)
size <- 6
groups <- random.group(data = data , size = size)
print(groups)

### Example 3 ###
n.objects <- 21
roster <- data.frame(cbind(paste0("FirstName", 1:n.objects),
                           paste0("LastName", 1:n.objects)))

data <- seq(from = 1 , to = dim(roster)[1] , by = 1)
size <- 6

groups <- random.group(data = data , size = size)

for (i in 1:dim(groups[[1]])[1]){
  print(roster[(groups[[1]][i,]),])
}

print(roster[(groups[[2]]),])
}
\keyword{file}
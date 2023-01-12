random.group <- function(data , size){
  ### If original data size is smaller than group size ###
  if (length(data) < size){
    list(data)
    message(paste("Data size is smaller than group size."))
  }
  ### If original data size is larger than group size ###
  else {
    new.data <- data
    sample.x <- c()
    while(length(new.data) >= size){
      sample.x <- rbind(sample.x ,
                        sample(x=new.data , size=size , replace = FALSE))
      new.data <- data[-sample.x]
    }
    ### If there are no leftover elements ###
    if (length(new.data) == 0){
      print(sample.x)
    } 
    ### If there are leftover elements ###
    else {
      message("Leftover elements are shown in list 2")
      list(sample.x , new.data)
    }
  }
}

##################################################
##################################################
### Example 1 ###
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

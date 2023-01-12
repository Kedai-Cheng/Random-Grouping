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

#vectors
fruit <- c("banana","apple","orange")
fruit

numbers <- c(1,2,3)
numbers

numbers <- 1:10
numbers <- 1.5:6.5

log_values <- c(TRUE,FALSE,TRUE,TRUE)

length(fruit)

sort(fruit)
numbers <- 1:10
sort(numbers, decreasing=TRUE)
fruits <- c("banana", "apple", "orange", "mango", "lemon")
fruits[1]
fruits[c(1, 3)]
# Access all items except for the first item
fruits[c(-1)]

fruits[1] <- "potato"

repeat_each <- rep(c(1,2,3), each=3)
rep(fruits, each=2)

repeat_times <- rep(c(1,2,3), times = 3)
rep(fruits, times=2)

repeat_indepent <- rep(c(1,2,3), times = c(5,2,1))
repeat_indepent

numbers <- seq(from = 0, to = 100, by = 20)

#list 
thislist <- list("apple", "banana", "cherry")
thislist[1]
thislist[1] <- "potato"
thislist
length(thislist)


"apple" %in% thislist
"banana" %in% thislist

thislist <- append(thislist,"orange")
thislist

thislist <- append(thislist,"strawberry", after=2)
thislist

thislist <- thislist[-3]
thislist[3:4]

for (x in thislist) {
  print(x)
}


list1 <- list("a", "b", "c")
list2 <- list(1,2,3)
list3 <- c(list1,list2)
list3[3:4]

#matrix
thismatrix <- matrix(c(1,2,3,4,5,6), nrow = 3, ncol = 2)
thismatrix
thismatrix <- matrix(c("apple", "banana", "cherry", "orange"), nrow = 2, ncol = 2)
thismatrix
thismatrix[1,2]
thismatrix[2,]

thismatrix <- matrix(c("apple", "banana", "cherry", "orange","grape", "pineapple", "pear", "melon", "fig"), nrow = 3, ncol = 3)
thismatrix[,c(1,2)]

newmatrix <- cbind(thismatrix, c("strawberry", "blueberry", "raspberry"))
newmatrix <- rbind(thismatrix, c("strawberry", "blueberry", "raspberry"))
#Remove the first row and the first column
thismatrix2 <- thismatrix[-c(1), -c(1)]
"apple" %in% thismatrix
dim(thismatrix)
length(thismatrix)

for (rows in 1:nrow(thismatrix)){
  for (columns in 1:ncol(thismatrix)){
    print(thismatrix[rows,columns])
  }
}

#array
thisarray <- c(1:24)
thisarray
multiarray <- array(thisarray, dim = c(4, 3, 2))
multiarray

#R Data Frames
data_frame <- data.frame (
  Training = c("Strength", "Stamina", "Other"),
  Pulse = c(100,150,120),
  Duration = c(60,30,45)
)
data_frame

summary(data_frame)
data_frame[1]

data_frame[["Training"]]

data_frame$Training

New_row_DF <- rbind(data_frame, c("Strength", 110, 110))

New_col_DF <- cbind(data_frame, Steps = c(1000, 6000, 2000))

Data_Frame_New <- data_frame[-c(1), -c(1)]

dim(data_frame)
ncol(data_frame)
nrow(data_frame)
length(data_frame)

Data_Frame1 <- data.frame (
  Training = c("Strength", "Stamina", "Other"),
  Pulse = c(100, 150, 120),
  Duration = c(60, 30, 45)
)

Data_Frame2 <- data.frame (
  Training = c("Stamina", "Stamina", "Strength"),
  Pulse = c(140, 150, 160),
  Duration = c(30, 30, 20)
)

New_Data_Frame <- rbind(Data_Frame1, Data_Frame2)
New_Data_Frame

Data_Frame3 <- data.frame (
  Training = c("Strength", "Stamina", "Other"),
  Pulse = c(100, 150, 120),
  Duration = c(60, 30, 45)
)

Data_Frame4 <- data.frame (
  Steps = c(3000, 6000, 2000),
  Calories = c(300, 400, 300)
)

New_Data_Frame1 <- cbind(Data_Frame3, Data_Frame4)
New_Data_Frame1

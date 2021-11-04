### Problem 1: Write R code that replicates the functionality of the head function in bash. Define a variable with the file to return lines from and a variable representing the number of lines to be returned from the top of the indicated file.

# I will be using the 'iris.csv' file to do this problem

iris<-read.table("iris.csv", header = TRUE, sep = ",")
head<-iris[1:10,]
head

### Problem 2: Load the data in the provided 'iris.csv' file and write R code to do the following things:

iris<-read.table("iris.csv", header = TRUE, sep = ",")
iris

# Print the last two rows in the last 2 columns to the R terminal

lasttwo<-print(iris[149:150,4:5])
lasttwo

# Get the number of observations for each species included in the data set

numberofsetosa<-iris[iris$Species=="setosa",]
dim(numberofsetosa)
numberofversicolor<-iris[iris$Species=="versicolor",]
dim(numberofversicolor)
numberofvirginica<-iris[iris$Species=="virginica",]
dim(numberofvirginica)

# Get rows with Sepal.Width > 3.5

largesepalwidth<-iris[iris$Sepal.Width>3.5,]
largesepalwidth

# Write the data for the species 'setosa' to a comma-delimited file named 'setosa.csv'

write.csv(numberofsetosa,"D:/Dropbox/Notre Dame/Junior Year/Intro to Biocomputing/Biocomp-Exercise07/setosa.csv", row.names = FALSE)

# calculate the mean, minumum, and maximum of Petal.Length for observations from 'virginica'

mean(numberofvirginica$Petal.Length)
max(numberofvirginica$Petal.Length)
min(numberofvirginica$Petal.Length)

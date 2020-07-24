#Box plot prroduces box-and-whisker plot(s) of the given (grouped) values.
#A boxplot gives a nice summary of one or more numeric variables. A boxplot is composed of several elements:
#The line that divides the box into 2 parts represents the median of the data.
#If the median is 10, it means that - there are the same number of data points below and above 10.
#The ends of the box shows the upper (Q3) and lower (Q1) quartiles.
#If the third quartile is 15, it means that 75% of the observation are lower than 15.
#The difference between Quartiles 1 and 3 is called the interquartile range (IQR)
#The extreme line shows Q3+1.5xIQR to Q1-1.5xIQR
#Dots are for other markers
#Working on iris dataset
str(iris)
#Simple boxplot
boxplot(iris$Sepal.Width)
#boxplot with labelling
boxplot(iris$Sepal.Width, main="Boxplot of Sepal Width for iris dataset",ylab="Sepal Width",col="pink")
#We can also plot a boxplot graph for relation between two variables.
#we can plot a box plot for Sepal.Width for each of the Species.
boxplot(iris$Sepal.Width~iris$Species, main="Boxplot of Sepal Width for iris dataset",ylab="Sepal Width", col="yellow")
#Giving Different Colors to Box Plots
boxplot(iris$Sepal.Width~iris$Species, main="Boxplot of Sepal Width for iris dataset",ylab="Sepal Width", col=c("yellow","red","blue"))

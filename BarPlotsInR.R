#Barplot function creates a bar plot with vertical or horizontal bars
#Its parameters are height which is used to specify the vector or matrix of values describing the bars
#width parameter is used to specify the width of bars
#Creating a barplot of Temparature of month=5 of Airquality Dataset
barplot(Temp[Month==5])
#Creating vertical bar plot
barplot(Temp[Month==5],main="Temparature Bar Plot corresponding to Month 5",xlab = "Temperature in Farenheit",col="red",axes = TRUE)
#Creating Horizontal Bar Plot
barplot(Temp[Month==5],main="Temparature Bar Plot corresponding to Month 5",col="red",horiz = TRUE)
#Changing the axis
axis(side=2,at=seq(from=0,to=80,by=5))
#Plotting mean temperature month wise as a Bar plot
x<-tapply(Temp,Month,mean)
barplot(x,col="pink")
#Plotting barplots for IRIS Dataset
#Plotting mean sepal length species wise as Bar PLot
attach(iris)
y<-tapply(Sepal.Length, Species, mean)
barplot(y,col="blu
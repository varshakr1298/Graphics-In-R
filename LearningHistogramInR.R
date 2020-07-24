#Learning Histograms
str(airquality)
head(airquality)
attach(airquality)
?hist
#first parameter x=vector of values jiske like histogram chaiye
#second parameter main= to give title to the histogram
#parameters to give title to x coordinates and y coordinates is 'xlab' and 'ylab'
#xlim and ylim are used to provide ranges to the x and y axis respectively
#col is used to define color
#freq by default is TRUE which means we get frequency distribution and if false we get probability distribution
hist(Temp)
hist(Temp,main = "Histogram of Temparature",col="yellow",xlab = "Temperature in Farenheit")
#Verifying the first block of histogram for temp>=55 and temp<60
sum(Temp>=55 & Temp<60)
#Verifying second block of Histogram
sum(Temp>=60 & Temp<=65)
#Storing a histogram in an object named h
h<-hist(Temp,main = "Histogram of Temparature",col="yellow",xlab = "Temperature in Farenheit")
#Now lets see what's in h
class(h)
str(h)
#Getting Break Points
h$breaks
#Getting Frequency Counts of each Block
h$counts
#Getting the probability values for each block
h$density
#Getting the name of the variable for which we are plotting the histogram
h$xname#To label the blocks or bars of a histogram
#Use the function axis() whose parameters are as follows
#side represents the axis which you want to refer to side=1 means x-axis and side=2 means y-axis
#at is the parameter that tells you where to label
#labels parameter shows those labels otherwise it does not
axis(side=1,at=h$breaks,labels = TRUE)
#Changing the number of blocks/bars/buckets of Histogram
hist(Temp,main = "Histogram of Temparature",col="yellow",xlab = "Temperature in Farenheit",breaks = 5)
hist(Temp,main = "Histogram of Temparature",col="yellow",xlab = "Temperature in Farenheit",breaks = 15)
#The exact number of bars is not 15 that is because 15 is just a suggestion and not a forced upon parameter
#Creating a plot of temprature variable of airquality dataset
lines(density(Temp))
#A logical attribute of histogram that tells whether the block or bar of histogram is equidistant or not
h$equidist

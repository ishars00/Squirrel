x<-c("tidyverse","insight")

invisible(lapply(x, library, character.only = TRUE))

options(defaultPackages=c(getOption("defaultPackages"),
                          "tidyverse","insight"))

require(tidyverse)
require(insight)

#Data
hair <- c("Blonde", "Brown", "Black", "Red", "Brown", "Brown", "Brown", "Black", "Blonde", "Brown")
sex <- c(rep("F", 5), rep("M", 5))
practice <- data.frame(hair,sex)

#Introduction Functions
squirrel = function(x){
  print_color(
    "Welcome to squirrel, a tutorial package that details the apply family of functions and a few ggplot2 figures.
    Install the 'insight' and 'tidyverse' packages before beginning the tutorials.

To start an apply tutorial, type squirrel_apply()

To start a ggplot2 tutorial, type squirrel_ggplot2()", "black")
}

squirrel_apply = function(x){
  print_color("

Welcome to the apply family tutorial menu! To learn about the functions individually, type the corresponding code below:

To learn apply(), type learn_apply(0)
To learn sapply(), type learn_sapply(0)
To learn lapply(), type learn_lapply(0)
To learn tapply(), type learn_tapply(0)", "green")
}

squirrel_ggplot2 = function(x){
  print_color("
Welcome to the ggplot2 tutorial menu! To learn about ggplot2 figures, type the corresponding code below:

To learn histograms, type learn_histogram(0)
To learn scatterplot, type learn_scatterplot(0)
To learn box plot, type learn_boxplot(0)
To learn pie charts, type learn_piechart(0)
To learn bar charts type learn_barchart(0)", "green")
}


#Apply Family
##lapply
learn_lapply = function(x){
  if(x==0){
    print_color("
- Introduction to lapply

The lapply function is a part of the apply function family.
This function is used to apply a variety of other function over
vectors, lists, and dataframes. As we continue, you will be shown
various examples of how lapply interacts with other functions
enter learn_lapply(1) to continue this tutorial", "green")
  }else if(x==1){
    print_color("
- Creating your list

q = list(X=c(2,6,7,6,7,8,9)) # Example List

Above is a common method for generating your own list in R,
try generating your own list defined as q. You should create a list
of numbers in the parenthese separeated by commas. This list can be as long
as you like! We will use your defined list q going forward forward.
enter learn_lapply(2) to continue this tutorial", "green")
  }else if(x==2){
    print_color("
- Printing your list

print(q) # The simple print function

This is a way of printing output for your defined list.
Try printing your q list and look at the output.
enter learn_lapply(3) to continue this tutorial","green")
  }else if(x==3){
    print_color("
- Base R lapply use

lapply(q, prod) # outputs the product of the list
lapply(q, sum) # ouput the sum of the list
lapply(q, sqrt) # ouputs the square roots of each number in the list

Above you can see three examples of how lapply is used.
It applies a set of three functions from base R across our list q.
In this case the three functions that are used are product, sum,
and square root. Try running these three functions with your list q.
enter learn_lapply(4) to continue this tutorial", "green")
  }else if(x==4){
    print_color("
- Data diagnostics lapply use

lapply(q, quantile, probs = c(0.25, 0.5, 0.75)) # ouputs the 25%, 50%, and 75% quantiles of your list q
lapply(q, mean) # outputs the mean(average) of your list q
lapply(q, min) # outputs the miniimum value of your list q
lapply(q, max) # outputs the maximum value of your lsit

The above code shows how lapply can be utilized in order to obtain
some basic statistical information above the numbers in your list.
Running this code will allow you to see the quantiles, mean value,
maximum value,and minimum value of your list q.
enter learn_lapply(5) to continue this tutorial", "green")
  }else if(x==5){
    print_color("
- Uniquely defined functions and lapply

Func <- function(x) {x^3} # defining an x cubed function
lapply(q, Func) # applying x cuved to the list q

Above you can see I have defined function of x^3, or x to the power of 3.
The lapply function works with almost all mathematically valid functions
that you might need to define. This function is then applied to your list q.
enter learn_lapply(6) to conclude this tutorial", "green")
  }else if(x==6){
    print_color("
- Final Notes

This tutorial has run through the basic uses of the lapply function in R.
Note that this function may also be used with data frames and vectors,
for this specific tutorial we have demonstrated using the list created by you.

Try to play around with other datasets to learn more about the lapply function.
Go back to the squirrel_apply() to learn more about the apply family functions or
go to squirrel_ggplot2() to learn about data visualization.
enter learn_lapply(0) to restart this tutorial", "green")
  }else if(x<0){
    print_color("Try again ;) - Type learn_lapply(0) to start the lapply lesson.", "red")
  } else if(x>6) {
    print_color("Try again ;) - Type learn_lapply(0) to start the lapply lesson.", "red")
  }
}

##sapply
learn_sapply = function(x) {
  if (x==0) { print_color("
  Let's look at the sapply function and its inputs.
  The sapply function inputs lists, vectors, and dataframes and outputs a vector or matrix. The sapply function arguments and format are as follows:
  sapply(X, FUN)
              Arguments:
              X: A vector or an object
              FUN: Function applied to each element of x
              Type learn_sapply(1) to learn more.", "green")
  }else if (x==1){
    print_color("
    Let's create an object with numbers 1-10 and find its square root.
    Type sapply(1:10,sqrt) and then learn_sapply(2).", "green")
  }else if(x==2){
    print_color("
    You can see that the sapply function has taken each number 1-10 and returned its square root.
    Let's try using the cars data to evaluate the mean value of the speed variable and distance variable.
    Type sapply(cars, mean) and then learn_sapply(3).","green")
  } else if(x==3){
    print_color("
    Now that we have tried using some basic R functions, let's create one of our own!
    In the function argument of sapply write your own function to find the difference between the square root and mean values of cars$speed.
    Type

    sapply(cars$speed,function(x) {
      sqrt(x)-mean(x)})

       Try to play around with the cars dataset and other datasets to try some of the basic R functions as well as creating some of your own in the sapply.
    Go back to the squirrel_apply() to learn more about the apply family functions or go to squirrel_ggplot2() to learn about data visualization.","green")
  } else if(x<0){
    print_color("Try again ;) - type learn_sapply(0-4) for lessons on the sapply function!", "red")
  } else if(x>3){
    print_color("Try again ;) - type learn_sapply(0-4) for lessons on the sapply function!", "red")
  }
}


##tapply
learn_tapply = function(x){
  if(x==0){
    print_color("
  Let's learn about the tapply function using the 'mtcars' dataset! In R, the tapply function is used to apply a function to subsets of a vector or data frame based on one or more grouping variables. It is a powerful tool for performing computations on data based on different categories or groups.
  Type 'learn_tapply(1)' to learn the genral syntax of the tapply command.", "green")
  } else if(x==1) {
    print_color("The general syntax for tapply is as follows: 'tapply(X, INDEX, FUNCTION, ...)',
  Type any of the following to continue:
  'learn_tapply(2)' to learn about 'X'
  'learn_tapply(3)' to learn about 'INDEX'
  'learn_tapply(4)' to learn about 'FUNCTION'
  'learn_tapply(5)' to learn about '...',
  'learn_tapply_(6)' for a worked tapply example.,
  'learn_tapply_(7)' for a practice tapply example.", "green")
  } else if(x==2){
    print_color("
    X: The vector or data frame on which the function FUNCTION will be applied.", "green")
  } else if(x==3){
    print_color("INDEX: A factor, list, or other object specifying how the data should be grouped.
  This can be a single factor, a list of factors, or a combination of factors.", "green")
  } else if(x==4){
    print_color("FUNCTION: The function to be applied to each group.
  This can be a built-in R function or a user-defined function.", "green")
  } else if(x==5){
    print_color("...: Additional arguments that can be passed to the function FUNCTION.", "green")
  } else if(x==6){
    print_color("Following the general syntax for tapply: 'tapply(X, INDEX, FUNCTION, ...)',
  Lets use tapply to calculate mean mpg by number of cylinders.
  'mpg' is the vector the function will be applied to,
  'cyl' is the factor dictating how the data should be grouped,
  'mean' is the function that is being applied to the data.
  So following the general syntax we have:
  mean_mpg_by_cyl <- tapply(mtcars$mpg, mtcars$cyl, mean)
  Type 'learn_tapply(0)' to start again or 'learn_tapply(7)' for a practice problem.", "green")
  } else if(x==7) {
    print_color("Following the general syntax for tapply: 'tapply(X, INDEX, FUNCTION, ...)',
  Lets use tapply to calculate median displacement by number of gears.
  Type 'learn_tapply(8)' for the solution.", "green")
  } else if(x==8) {
    print_color("Try 'median_disp_by_gear <- tapply(mtcars$disp, mtcars$gear, median)'

Additionally, Try to play around with other R datasets to try
some of the basic R functions as well as creating some of your own in the tapply.
Go back to the squirrel_apply() to learn more about the apply family functions or
go to squirrel_ggplot2() to learn about data visualization", "green")
  }else if(x<0){
    print_color("Try again ;) - Type learn_tapply(0) to start the tapply lesson.", "red")
  } else if(x>8) {
    print_color("Try again ;) - Type learn_tapply(0) to start the tapply lesson.", "red")
  }
}

##apply
learn_apply = function(x){
  if(x==0){
    print_color("
    Description:
    The apply() function is set up as apply(X, margin, function).
                X is your array/matrix/dataset.
                The margin is a vector giving the subscripts which the function will be applied over.
                Function is the function you want to apply across your dataset.
    Type learn_apply(1) to start an example.", "green")
  }else if(x==1){
    print_color(
      "For reference:
      X is your array/matrix/dataset.
      The margin is a vector giving the subscripts which the function will be applied over.
      Function is the function you want to apply across your dataset.
We will use the cars dataframe from R to assess the average speed and distance of 50 cars from the 1920s.

Type print(cars) to view the dataset. Type learn_apply(2) for the next step.", "green")
  } else if(x==2){
    print_color("
    For reference:
      X is your array/matrix/dataset.
      The margin is a vector giving the subscripts which the function will be applied over.
      Function is the function you want to apply across your dataset.
Type apply(cars, 1, mean). We are finding the average speed and average distance traveled to stop, so mean represents our function.

You should see 3 rows of a lot of different numbers! Using 1 in the margin will apply your function to rows. This is not really what we are looking for!

Type learn_apply(3) for the next step. ", "green")
  } else if(x==3){
    print_color("
    For reference:
      X is your array/matrix/dataset.
      The margin is a vector giving the subscripts which the function will be applied over.
      Function is the function you want to apply across your dataset.
Type apply(cars,2,mean). This time, you should only see two numbers: the average speed and average distance traveled. Using 2 in the margin will apply your function to the columns. The speed is pretty low, but remember this data is from the 1920s!

Type apply(4) for the next step.", "green")
  } else if(x==4){
    print_color("
Congratulations! You have learned how to use the apply() function.

For more practice, you can use other R datasets/frames such as mtcars, or by creating your own matrix (ex: matrix <- matrix(c(3, 9, -1, 4, 2, 6,8,9,14), nrow = 3).
Go back to the squirrel_apply() to learn more about the apply family functions or go to squirrel_ggplot2() to learn about data visualization.","green")
  } else if(x<0){
    print_color("Try again ;) - type learn_apply(0-5) for lessons on the apply function!", "red")
  } else if(x>4){
    print_color("Try again ;) - type learn_apply(0-5) for lessons on the apply function!", "red")
  }
}

#Data Visualization
##histograms
learn_histogram = function(x){
  if (x==0) { print_color("The histogram function of in ggplot is a great way to visualize the frequency of a numerical variable.
              Type learn_histogram(1) to learn more.", "blue")
  }else if (x==1){
    print_color("Let's use the iris dataset to create our histogram plots. You can type head(iris) to look at the dataset. You'll see a variable called 'Petal.Length' that tells us the miles per gallon for a car. Type

    ggplot(iris) +
    geom_histogram(aes(x=Petal.Length))

  to obtain a histogram of miles per gallon. Type learn_histogram(2) to learn more about plotting histograms using ggplot2", "blue")
  }else if(x==2){
    print_color("Notice that the previous graph recommends us to choose a better binwidth. The binwidth determines the range of data within each bar. You can choose your binwidth by adding an argument in geom_histogram. Type

    ggplot(iris) +
    geom_histogram(aes(x=Petal.Length), binwidth = 0.1)

  Type learn_histogram(3) to learn more about plotting histograms using ggplot2 ","blue")
  } else if(x==3){
    print_color("
    Play around with the binwidth and notice how the smaller values have more bars that are skinnier while bigger values have less bars and a wider range.
    What about different colors and linetypes? We can make our bars different colors and give the bar an outline by adding a color and fill argument. Type

    ggplot(iris) +
    geom_histogram(aes(x=Petal.Length), binwidth = 0.1, color='blue', fill = 'green', linetype='dashed')

  Type learn_histogram(4) to learn more about plotting histograms using ggplot2", "blue")
  } else if(x==4){
    print_color("Play around with the different linetypes, fills, and colors to see the difference in plots. Try creating a plot with a dotted line, a white fill, and a red outline.
    What if we wanted to compare petal lengths across species types. We can add the color argument in aesthetics. Type

   ggplot(iris) +
    geom_histogram(aes(x=Petal.Length, color=Species), binwidth = 0.1)

  Type learn_histogram(5) to learn more about plotting histograms using ggplot2","blue")
  } else if(x==5){
    print_color("Try to play around with the iris dataset and other datasets to create more histogram plots with ggplot2.
    Go back to the squirrel_apply() to learn more about the apply family functions or go to squirrel_ggplot2() to learn about data visualization.","blue")
  } else if(x<0){
    print_color("Try again ;) - type learn_histogram(0-5) for lessons on histograms!", "red")
  } else if(x>5){
    print_color("Try again ;) - type learn_histogram(0-5) for lessons on histograms!", "red")
  }
}

##piecharts
learn_piechart = function(x){
  if(x==0){
    print_color("
Let's learn about pie charts using the 'mtcars' dataset!. A pie chart is a type of chart used to display data in a circular shape, where the size of each slice (or segment) of the circle represents the proportion of a particular category in the data.
  Type 'learn_piechart(1)' to continue.","blue")
  } else if(x==1){
    print_color("
The general syntax to create a piechart using ggplot2 is as follows:

  pie_chart <- ggplot(DATA, aes(x = '', fill = X)) +
  geom_bar(width = 1, stat = 'count') +
  coord_polar(theta = 'y') +
  labs(title = 'A', fill = 'B')

  Type 'learn_piechart(2)' to continue.", "blue")
  } else if(x==2){
    print_color("
Let's define some of the variables used above!

  'DATA': is the dataset being used,
  'X': is the variable the pie chart will be based on,
  'A': is the title of the pie chart,
  'B': is the legend label.

  Type 'learn_piechart(3)' to continue.", "blue")
  } else if(x==3){
    print_color("
Let's explore some of the components!

  'ggplot()': this function is used to create the plot object,
  'geom_bar()': this function is used to create the pie chart segements by first creating a bar chart,
  'coord_polar(): this function converts the bar chart into a pie chart',
  'labs()': this function is used to add labels to the chart.

Type 'learn_piechart(4)' for a worked example or 'learn_piechart(5)' for a practice problem.", "blue")
  } else if(x==4){
    print_color("
Let's create a piechart using the 'gear' variable!

  'mtcars' is the data set we are using,
  'gear' is the variable the pie chart will be based on (we'll have to factor since it's numeric),
  'Pie Chart of the Number of Cars by Number of Gears' will be the title,
  'Number of Gears' will be the legend label,
  Following the general syntax to create a piechart we have:

 pie_chart <- ggplot(mtcars, aes(x=' ', fill=factor(gear))) +
 geom_bar(width = 1, stat = 'count') +
 coord_polar(theta = 'y') +
 labs(title ='Pie Chart of Number of Cars by Number of Gears', fill = 'Number of Gears')

  Type 'learn_piechart(0)' to start again or 'learn_piechart(5)' for a practice problem.", 'blue')
  } else if(x==5){
    print_color("
  Try creating a pie chart of the number of cars by number of cylinders.
  Type 'learn_piechart(6)' for the solution.", 'blue')
  } else if(x==6){
    print_color("
The solution is as follows:

  pie_chart <- ggplot(mtcars, aes(x = '', fill = factor(cyl))) +
  geom_bar(width = 1, stat = 'count') +
  coord_polar(theta = 'y') +
  labs(title = 'Pie Chart of Number of Cars by Number of Cylinders', fill = 'Number of Cylinders')
Type learn_piechart(7) next", 'blue')
  } else if (x==7) { print_color("
Try to play around with the mtcars dataset and other datasets to create more pie charts with ggplot2. Go back to the squirrel_apply() to learn more about the apply family functions or go to squirrel_ggplot2() to learn about data visualization.","blue")
  }else if(x<0){
    print_color("
    Try again ;) - Type learn_piechart(0) to start the pie chart lesson.", "red")
  } else if(x>7) {
    print_color("
    Try again ;) - Type learn_piechart(0) to start the pie chart lesson.", "red")
  }
}

##boxplots
learn_boxplot = function(x){
  if(x==0){
    print_color("
  Let's learn about boxplots using the 'cars' and 'mtcars' dataset! A box plot is a type of graphical representation that displays a summary of a continuous variable's distribution. It is particularly useful for visualizing the distribution of a single continuous variable and provides insights into the variability, skewness, and potential outliers in the data.
  Type 'learn_boxplot(1)' to continue.","blue")
  }
  if(x==1){
    print_color("
The general syntax to create a boxplot using ggplot2 is as follows:

 box_plot <- ggplot(DATA, aes(x = '', y = X)) +
  geom_boxplot(width = 0.5) +
  labs(title = 'A', x = 'B', y = 'C')

  Type 'learn_boxplot(2)' to continue.","blue")
  } else if(x==2){
    print_color("
    Let's define some of the variables used above!
  'DATA': is the dataset being used,
  'X': is the variable the boxplot will be based on,
  'A': is the title of the boxplot,
  'B': is the label for the x-axis,
  'C': is the label for the y-axis.
  Type 'learn_boxplot(3)' to continue.", "blue")
  } else if(x==3){
    print_color("
    Let's explore some of the components!
  'ggplot()': this function is used to create the plot object,
  'geom_boxplot()': this function adds the boxplot layer to the plot object,
  'labs()': this function is used to add labels to the chart.
  Type 'learn_boxplot(4)' for a worked example or 'learn_boxplot(5)' for a practice problem.", "blue")
  } else if(x==4){
    print_color("
    Let's create a boxplot using the 'mpg' variable using the 'mtcars' dataset!
  'mtcars' is the data set we are using,
  'mpg' is the variable the pie chart will be based on,
  'Box Plot of Miles per Gallon (MPG)' will be the title,
  'Miles per Gallon (MPG)' will be the y-axis label,
  Note the x-axis label will be left blank.
  Following the general syntax to create a boxplot we have:
  box_plot <- ggplot(mtcars, aes(x = '', y = mpg)) +
  geom_boxplot(width = 0.5) +
  labs(title = 'Box Plot of Miles per Gallon (MPG)', x = '', y = 'Miles per Gallon (MPG)')
  Type 'learn_boxplot(0)' to start again or 'learn_boxplot(5)' for a practice problem.", "blue")
  } else if(x==5){
    print_color("
    Try creating a boxplot of car stopping distance using the 'cars' dataset.
  Type 'learn_boxplot(6)' for the solution.", "blue")
  } else if(x==6){
    print_color("
    The solution is as follows:

  box_plot <- ggplot(cars, aes(x = '', y = dist)) +
  geom_boxplot(width = 0.5) +
  labs(title = 'Box Plot of Car Stopping Distances', x = '', y = 'Stopping Distance (ft)')
  Type learn_boxplot(7) next. ", "blue")
  } else if (x==7) { print_color("
Try to play around with the mtcars dataset and other datasets to create more boxplots with ggplot2. Go back to the squirrel_apply() to learn more about the apply family functions or go to squirrel_ggplot2() to learn about data visualization.","blue")
  }else if(x<0){
    print_color("
    Try again ;) - Type learn_boxplot(0) to start the boxplot lesson.", "red")
  } else if(x>6) {
    print_color("
    Try again ;) - Type learn_boxplot(0) to start the boxplot lesson.", "red")
  }
}


##scatterplots
learn_scatterplot = function(x){
  if(x==0){
    print_color("
- Introduction to Scatterplot creation in ggplot2

ggplot2 is the premier R tool for graphics creation. In this tutorial,
you will be given an example of how to construct a scatterplot using
the iris dataset, which is an example dataset built into RStudio.
Enter learn_scatterplot(1) to continue this tutorial", "blue")
  }else if(x==1){
    print_color("
- Data Loading and Information

library(ggplot2) #making sure ggplot2 is libraried
data(iris) # loading the iris data
summary(iris) # obtaining basic info about the iris data

This section is devoted to loading our data, and generating some basic
summary statistics. This data set deals with flower petals on iris flowers.
A scatterplot requires two continuous data sources, so we will choose petal
length (Petal.Length), and petal width (Petal.Width) to continue with
as our two continous data sources, which are necessary for a scatterplot.
enter learn_scatterplot(2) to continue this tutorial", "blue")
  }else if(x==2){
    print_color("
- Defining our variables with ggplot2

ggplot(data=iris, aes(x=Petal.Width, y=Petal.Length))

This function does three important things: defines our dataset, defines
our x value, and defines our y value. To define our x and y, those must be
within the aes() section of the ggplot function.
enter learn_scatterplot(3) to continue this tutorial", "blue")
  }else if(x==3){
    print_color("
- Adding the scatterplot geom

ggplot(data=iris, aes(x=Petal.Width, y=Petal.Length)) + geom_point()

This is a fairly simple step, it takes the data that is defined within the ggplot
function and implements it into a 'point' graph, otherwise known as a scatterplot
enter learn_scatterplot(4) to continue this tutorial", "blue")
  }else if(x==4){
    print_color("
- Changing the points in the plot

ggplot(data=iris, aes(x=Petal.Width, y=Petal.Length)) + geom_point(aes(shape=18, size=3, aes(color=Species))

This step is meant to deomstrate that each geom also has aes() optionss.
In this case I have changed the size and shape of each point, and have
colored in each point based on their species name as defined within the data.
Feel free to view different shapes and sizes by entering different numbers.
enter learn_scatterplot(5) to continue this tutorial", "blue")
  }else if(x==5){
    print_color("
- Labeling the scatterplot

ggplot(data=iris, aes(x=Petal.Width, y=Petal.Length)) +
geom_point(shape=18, size=3, aes(color=Species)) +
xlab('Petal Width') +
ylab('Petal Length') +
ggtitle('Petal Width vs. Petal Length by Species')

In this step, I have labeled the x axis, the y axis, and the overall
graph itself using the xlab, ylab, and ggtitle modifiers. This is a must
know step for any and all figure creation in ggplot.
enter learn_scatterplot(6) to continue this tutorial", "blue")
  }else if(x==6){
    print_color("
- Applying a theme to the scatterplot

ggplot(data=iris, aes(x=Petal.Width, y=Petal.Length)) + geom_point(shape=18, size=3, aes(color=Species)) +
xlab('Petal Width') +
ylab('Petal Length') +
ggtitle('Petal Width vs. Petal Length by Species') +
theme_bw()

This step may seem a bit superfluous, but a good theme can really elevate
a figure. I prefer theme_bw(), but there are many others to choose from.
Try typing 'theme_' in a chunk and see what other themes appear in the drop down menu.
enter learn_scatterplot(7) to conclude this tutorial", "blue")
  }else if(x==7){
    print_color("
- Final Notes

This tutorial has run you through the basics of creating a scatterplot
in R using ggplot2. This is simple yet effective way of comparing two
continuous variables in a graphical format, and ggplot2 is the premier
tool in R for creating this sort of customizable graphic.
enter learn_scatterplot(0) to restart this tutorial.

Try to play around with the iris dataset and other datasets to create more boxplots with ggplot2. Go back to the squirrel_apply() to learn more about the apply family functions or go to squirrel_ggplot2() to learn about data visualization.", "blue")
  } else if(x<0){
    print_color("Try again ;) - Type learn_scatterplot(0) to start the scatterplot lesson.", "red")
  } else if(x>7) {
    print_color("Try again ;) - Type learn_scatterplot(0) to start the scatterplot lesson.", "red")
  }
}


##barcharts
learn_barchart = function(x){
  if(x==0){
    print_color("
Bar charts are used to help visualize categorical variables. Bar charts are useful for comparing variables that have different levels, such as hair color.  We will use ggplot()+geom_bar() to create a bar chart. We will use the dataframe 'practice' to look at the distribution of hair color and sex of ten people.
Type 'practice' to view the data.
Type learn_bargraph(1) to start setting up the bar chart.", "blue")
  }else if(x==1){
    print_color("
The ggplot() function is set up like this: ggplot(your_dataset, aes(x=x axis variable, y=y axis variable)). aes() is used within the ggplot function to set your x and y variables. We add geom_bar() to tell ggplot we want to see this data in a bar chart! Type

ggplot(practice, aes())+geom_bar()

and we will look at variables in the next step learn_barchart(2)", "blue")
  } else if(x==2){
    print_color("
Make sure you have typed

ggplot(practice, aes())+geom_bar()

'practice' is the name of the dataframe we are assessing. Remember, inside of the aes() function is where we will place our variables.

In the dataframe named 'practice' there are two categorical variables: hair and sex. Let's use hair as our x axis variable. Our y variable will be '..count..', which will count the observations of each different hair color.Your code will look like this:

ggplot(practice, aes(x=hair, y=..count..)) + geom_bar()

Type learn_barchart(3) to make the graph look a little bit nicer!", "blue")
  }else if(x==3){
    print_color("
Let's say we want to see the distribution of sex in each of the hair colors. Inside of the aes() function, we can add fill=sex to segment the graph by male or female. Your code will look like this:

ggplot(practice, aes(x=hair, y=..count.., fill=sex))+ geom_bar()

Make sure you have a comma to seperate between the y variable and the fill=sex. Run your code and see a change in color!

Type learn_barchart(4) next.", "blue")
  }else if(x==4){
    print_color("
From your code 'ggplot(practice, aes(x=hair, y=..count.., fill=sex))+ geom_bar()', you should see a stacked bar chart, which is the default setting. We can change parts of the bar chart by entering commands in the geom_bar().

To change the bar chart from stacked to side by side hair color by sex, we add in position='dodge' in the geom_bar().

Your code will look like this:

ggplot(practice, aes(x=hair, y=..count.., fill=sex))+ geom_bar(position = 'dodge')

Make sure you write dodge inside of quotation marks.

Type learn_barchart(5) to finish the session on bar charts.", "blue")
  }else if(x==5){
    print_color("
Congratulations! You have learned the basic functions in creating a bar chart with ggplot.

For extra practice, try switching the x variable to sex, and fill=hair.

Type squirrel_ggplot2(0) to take a look at other ggplot graphs. Type squirrel_apply(0) to start learning about different apply functions.", "blue")
  }else if(x>5){
    print_color("Try again ;) - squirrel_ggplot2() for lessons on ggplot! or learn_barchart(0-5) for steps on how to create a bar chart.", "red")
  }else if(x<0){
    print_color("Try again ;) - squirrel_ggplot2() for lessons on ggplot! or learn_barchart(0-5) for steps on how to create a bar chart.", "red")
  }
}




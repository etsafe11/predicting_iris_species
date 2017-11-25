# predicting_iris_species
Coursera - Developing Data Products Final Project
- The iris dataset consists of 150 observations of three different
species of iris (virginica, setosa and versicolor).  Each observation 
includes data for Petal Length, Petal Width, Sepal Length and Sepal Width.
- We use a k-nearest neighbors algorithm (k=13) to classify an unknown
species type based upon the length and width measurements above.
- Finally, we build a Shiny app which allow users to interactively
predict the species based on these measurement variables.

- This example inspired by Jalayer Academy's tutorial video on Youtube:
[link] (https://www.youtube.com/watch?v=DkLNb0CXw84&t=126s)

In order to run the app:
1) Navigate to https://etsafe11.shinyapps.io/week4_project/
2) Move the slider bars left and right and watch as the
prediction of iris species changes. (You may need to move
the sliders all the way left and right repeatedly to see
the prediction change.)

- Our Shiny app consists of ui.R and server.R files also found in this repo.
    + ui.R creates the user interface including the four input 
      measurements for petal and sepal
    + server.R provides reactive functions which take the four
      input measurements as inputs and immediately provide a
      species prediction using a k-nearest neighbors classification
      algorithm

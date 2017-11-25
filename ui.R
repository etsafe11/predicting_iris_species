library(shiny)

# Define UI for application that draws a histogram
shinyUI(fluidPage(
  
  # Application title
  titlePanel("Predicting Iris Species Using K-Nearest Neighbors Algorithm"),
  
  # Sidebar with a slider input for number of bins 
  sidebarLayout(
    sidebarPanel(
       sliderInput("sliderSepalLength", "What's the Sepal Length?", min = 4, max = 8, value = 6),
       sliderInput("sliderSepalWidth", "What's the Sepal Width?", min = 2, max = 4.4, value = 3),
       sliderInput("sliderPetalLength", "What's the Petal Length?", min = 1, max = 6.9, value = 4.5),
       sliderInput("sliderPetalWidth", "What's the Petal Width?", min = .1, max = 2.5, value = 1.25)
    ),
    
    # Show a plot of the generated distribution
    mainPanel(
       h3("Predicted species based on 13-nearest neighbors:"),
       textOutput("m1pred")
    )
  )
))

library(shiny)

shinyServer(function(input, output) {
  
  iris <- iris[sample(1:nrow(iris)), ]

  normalize <- function(x) {
    return( (x - min(x)) / (max(x) - min(x)) ) 
  }
  
  iris_n <- as.data.frame(lapply(iris[,c(1,2,3,4)], normalize))
    
  iris_train <- iris_n[1:129, ]
  iris_test <- iris_n[130:150, ]
  iris_train_target <- iris[1:129, 5]
  iris_test_target <- iris[130:150, 5]
  
  require(class)
  
  m1pred <- reactive({
    Sepal.Length.Input <- input$sliderSepalLength
    Sepal.Width.Input <- input$sliderSepalWidth
    Petal.Length.Input <- input$sliderPetalLength
    Petal.Width.Input <- input$sliderPetalWidth
    knn(train = iris_train, test = data.frame(
      (Sepal.Length.Input - min(iris$Sepal.Length)) / (max(iris$Sepal.Length) - min(iris$Sepal.Length)),
      (Sepal.Width.Input - min(iris$Sepal.Width)) / (max(iris$Sepal.Width) - min(iris$Sepal.Width)),  
      (Petal.Length.Input - min(iris$Petal.Length)) / (max(iris$Petal.Length) - min(iris$Petal.Length)),
      (Petal.Width.Input - min(iris$Petal.Width)) / (max(iris$Petal.Width) - min(iris$Petal.Width))
      ), 
          cl = iris_train_target, k = 13
    )
  })
  
  output$m1pred <- renderPrint({
    m1pred()
  })
  
})

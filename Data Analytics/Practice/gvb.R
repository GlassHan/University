library(shiny)
ui <-fluidPagefluidPage fluidPage fluidPage(
  sliderInputsliderInput (inputId inputId = " numnum ",
                          label = "Choose a number", label = "Choose a number", label = "Choose a number",label = "Choose a number", label = "Choose a number", label = "Choose a number", label = "Choose a number", label = "Choose a number",
                          value = 25, min 1, max 100),value = 25, min 1, max 100), value = 25, min 1, max 100), value = 25, min 1, max 100), value = 25, min 1, max 100), value = 25, min 1, max 100),value = 25, min 1, max 100), value = 25, min 1, max 100),value = 25, min 1, max 100),value = 25, min 1, max 100), value = 25, min 1, max 100), value = 25, min 1, max 100), value = 25, min 1, max 100), value = 25, min 1, max 100),
textInput textInput textInput (inputId inputId inputId = "title", = "title", = "title",
                               label = "Write a title", label = "Write a title", label = "Write a title",label = "Write a title", label = "Write a title", label = "Write a title", label = "Write a title", label = "Write a title", label = "Write a title",
                               value = "Histogram of Random Normal Values"),value = "Histogram of Random Normal Values"), value = "Histogram of Random Normal Values"), value = "Histogram of Random Normal Values"), value = "Histogram of Random Normal Values"), value = "Histogram of Random Normal Values"), value = "Histogram of Random Normal Values"), value = "Histogram of Random Normal Values"), value = "Histogram of Random Normal Values"),value = "Histogram of Random Normal Values"),
plotOutput plotOutput (" hist hist ")
)
server < server <server < server <server <-function(input, output) { function(input, output) { function(input, output) { function(input, output) { function(input, output) {function(input, output) {function(input, output) { function(input, output) { function(input, output) {
  output$hist output$hist output$hist <-renderPlotrenderPlot renderPlot renderPlot renderPlot({
    hist (rnormrnorm rnorm (input$num input$num input$num ), ), ),
  main = main = isolate({ isolate({ input$title input$title input$title }))}))
  })
}
  shinyApp shinyApp (ui = ui , server = server), server = server), server = server) , server = server), server = server) , server = server), server = server) , server = server) , server = server), server = server) ,
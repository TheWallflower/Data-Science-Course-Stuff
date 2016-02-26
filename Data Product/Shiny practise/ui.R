library(shiny)

##Practice 1
# shinyUI(pageWithSidebar(
#   headerPanel("Illustrating inputs"),
#   sidebarPanel(
#     numericInput('id1','Numeric input, labeled id1',0,min=0,max=10,step = 1),
#     checkboxGroupInput("id2","Checkbox",
#                        c("Value 1"="1",
#                          "Value 2"="2",
#                          "Value 3"="3")),
#     dateInput("date","Date:")
#   ),
#   mainPanel(
#     h3('Illustrating Output'),
#     h4('You entered'),
#     verbatimTextOutput("oid1"),
#     h4('You entered'),
#     verbatimTextOutput("oid2"),
#     h4('You entered'),
#     verbatimTextOutput("odate")
#   )
# ))


#Practice 2
# shinyUI(
#   pageWithSidebar(
#     #Application title
#     headerPanel("Diabetes Prediction"),
#     sidebarPanel(
#       numericInput('glucose','Glucose mg/d1',90,min=50,max=200,step=5),
#       submitButton('Submit')
#     ),
#     mainPanel(
#       h3('Results of prediction'),
#       h4('You entered'),
#       verbatimTextOutput("inputValue"),
#       h4('Which resulted in a prediction of '),
#       verbatimTextOutput("prediction")
#     )
#   )
# )


#Practice 3 (Image)
shinyUI(pageWithSidebar(
  headerPanel("Example plot"),
  sidebarPanel(
    sliderInput('mu','Guess at the mean',value = 70,min=62,max=74,step = 0.05,)
  ),
  mainPanel(
    plotOutput('newHist')
  )
))
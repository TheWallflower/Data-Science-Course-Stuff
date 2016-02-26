#Practice 1
# library(shiny)
# shinyServer(
#   function(input,output){
#     output$oid1<-renderPrint({input$id1})
#     output$oid2<-renderPrint({input$id2})
#     output$odate<-renderPrint({input$date})
#   }
# )

#Practice 2
# diabetesRisk<-function(glucose)glucose/200
# shinyServer(
#   function(input,output){
#     output$inputValue<-renderPrint({input$glucose})
#     output$prediction<-renderPrint({diabetesRisk(input$glucose)})
#   }
# )

#Practice 3 (Images)
library(UsingR)
data(galton)
shinyServer(
  function(input,output){
    output$newHist<-renderPlot({
      hist(galton$child,xlab = 'child height',col = 'lightblue',main = 'Histogram')
      mu<-input$mu
      lines(c(mu,mu),c(0,200),col="red",lwd=5)
      mse<-mean((galton$child-mu)^2)
      text(63,150,paste("mu=",mu))
      text(63,140,paste("MSE=",round(mse,2)))
    })
  }
)
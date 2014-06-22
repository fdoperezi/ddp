library(shiny)
pvals <<- seq(0.01, 0.99, length = 1000)

shinyServer(
  function(input, output) {
    output$betaDensity <- renderPlot({
      alpha <- max(input$alpha,0.01)
      beta <- max(input$beta,0.01)
      plot(pvals, dbeta(pvals, alpha, beta), type = "l", lwd = 3, col=4, frame = FALSE)
      title(paste0("The Beta distribution with parameters alpha=",alpha," and beta=",beta," has density"))
    })
  }
)
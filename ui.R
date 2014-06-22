shinyUI(pageWithSidebar(
  headerPanel("Exploring The Beta Density"),
  sidebarPanel(
    sliderInput('alpha', 'Alpha',value = 1, min = 0.01, max = 10, step = 0.5,),
    sliderInput('beta', 'Beta',value = 1, min = 0.01, max = 10, step = 0.5,)
  ),
  mainPanel(
    plotOutput('betaDensity')
  )
))
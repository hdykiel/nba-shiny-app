library(shiny)
library(shinythemes)

# UI
choices <- c("Cost", "Relocation")

ui <- fluidPage(
  theme = shinytheme("superhero"),
  titlePanel("ACME Advisor", windowTitle = "Advsr"),
  column(width = 3, wellPanel(
    selectInput("input1", "Primary Concern", choices = choices)
  )),
  column(width = 9, wellPanel(h4("Policy # 8982829 - Adam Smith")))
)


# server

server <- function(input, output) {
  
}

# Run the application 
shinyApp(ui = ui, server = server)
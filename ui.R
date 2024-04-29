# Kinga Zajdel

library(shiny)

# Define UI for application that
#    plots the expression in TPMs of any gene selected by the user

fluidPage(
    # Application title
    titlePanel("Gene expression in TPMs"),

    # Sidebar with a slider input for number of bins
    sidebarLayout(
        sidebarPanel(
            sliderInput("bins",
                        "Number of bins:",
                        min = 1,
                        max = 50,
                        value = 30)
        ),

        # Show a plot of the generated distribution
        mainPanel(
            plotOutput("distPlot")
        )
    )
)

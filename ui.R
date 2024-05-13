# Kinga Zajdel
# Assignment_8

library(shiny)

# Define UI for application that
#    plots the expression in TPMs of any gene selected by the user

fluidPage(
    # Application title
    titlePanel("Gene expression in TPMs"),

    # Sidebar with an input list to select a gene
    sidebarLayout(
        sidebarPanel(
            selectInput(inputId = "select_gene", label = "choose gene to show", choices = TPMs_Genes)
        ),

        # Show a plot of the chosen gene's expression
        mainPanel(
            plotOutput("distPlot")
        )
    )
)

# No AI used.

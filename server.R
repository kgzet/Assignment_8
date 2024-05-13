# Kinga Zajdel
# Assignment_8


library(shiny)
library(dplyr)
library(ggplot2)
library(tidyr)

# loading data from a file
Table_TPMs<-readr::read_csv("data/TPMs_table_100genes.csv")
Table_TPMs
TPMs_Genes<-Table_TPMs %>% 
  dplyr::select("GeneID")
TPMs_Genes
c(TPMs_Genes)[1]

# Define server logic required to plot the expression in TPMs



function(input, output, session) {

    output$distPlot <- renderPlot({
      
      updateSelectInput(session, inputId = "select_gene", choices = )
      
      # generate bins based on input$bins from ui.R
      x    <- faithful[, 2]
      bins <- seq(min(x), max(x), length.out = input$bins + 1)
      
      # draw the histogram with the specified number of bins
      hist(x, breaks = bins, col = 'darkgray', border = 'white',
           xlab = 'Waiting time to next eruption (in mins)',
           main = 'Histogram of waiting times')

    })

}

# No AI used.

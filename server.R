# Kinga Zajdel
# Assignment_8


library(shiny)
library(dplyr)
library(ggplot2)
library(tidyr)

# loading data from a file
Table_TPMs<-readr::read_csv("data/TPMs_table_100genes.csv")
TPMs_Genes<-Table_TPMs %>% 
  dplyr::select("GeneID")  # labels for UI
#c(TPMs_Genes)[1]

# generating data frame with values moved to a specific column
Table_TPMs_long<-pivot_longer(data=Table_TPMs, 
                              cols=colnames(Table_TPMs)[-1],# Cols to pivot: all except 1st
                              values_to = "TPMs",# name of the col that contained the vals of pivoted cols
                              names_to = "Sample")# name of the col that contains the names of the pivoted cols

# Define server logic required to plot the expression in TPMs


function(input, output, session) {

    output$distPlot <- renderPlot({
      
     # updateSelectInput(session, inputId = "select_gene")
      
      # gene name selected by user in UI selectInput
      gene_name <- input$select_gene
      gene_selected <- Table_TPMs_long
      # selecting specific rows in dataframe, containing gene name chosen by user
      gene_to_plot <- gene_selected[gene_selected$GeneID == gene_name,]
      # plot data for one specific gene chosen by user
      # dataframe is rows containing keyword - gene name
      # geom_point() plots data as single points
      ggplot(data = gene_to_plot, aes(x=Sample, y=TPMs, col = 'lightpink')) + geom_point()

    })
}

# No AI used.

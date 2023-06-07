# #LEARNING SHINY
# Based on: https://laderast.github.io/gradual_shiny/
# Title: A gRadual intRoduction do Shiny
# 
# # Part 1: Basic architecture of a Shiny App
# 
# It is a web based framework for interactive visuals;
# It is server based: requires an installation of R to work;
# Interactive figures that help user to explore data;
# 
# # Basic shiny app architecture
# It has 3 parts:
# 
# # 1 - UI (usuary interface) -> Tells Shiny what to display on the webpage
# ex:
ui <- fluidPage()
# note that fluidPage is a function
# uses (), so arguments need to be comma separated
#
# # 2 - SERVER -> Runs R code - Create outputs to be used in the UI (based on parameters by user)
# ex:
server <- function(input, output) {}
# Note that server defines a new function
# Uses {} (curly brackets), so code is separated by line
# 
# # 3 - shinyApp -> Spins up Shiny App
# ex:
shinyApp(ui = ui, server = server)
# 
# # input and output are how ui and server communicate
# ui and server are continuously running and listening to each other
# ui: listens to output and puts info into input
# passes on information on state of controls into input (input$my_slider)
# listens to output for generated plots and tables and changes
# server: listens to input and puts info into output
# passes on plots and tables into output (output$my_plot)
# listens to input for changes in controls
# 
# ## I need understand better ggplot package!!
# 
# # Part 2 - Reactives
# 
# Making a dataset filterable
# 
#
# This is the user-interface definition of a Shiny web application. You can
# run the application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
# 
#    http://shiny.rstudio.com/
#

library(shiny)

# Define UI for application that draws a histogram
shinyUI(dashboardPage(
    dashboardHeader(),
    dashboardSidebar(
        # Custom CSS to hide the default logout panel
        tags$head(tags$style(HTML('.shiny-server-account { display: none; }'))),
        
        # The dynamically-generated user panel
        uiOutput("userpanel")
    ),
    dashboardBody()
))

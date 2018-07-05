#
# This is the user-interface definition of a Shiny web application. You can
# run the application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
# 
#    http://shiny.rstudio.com/
#

library(shiny)
library(shinydashboard)

os <- c("Windows 7", "Windows 8", "Windows 10", "Linux", "MacOS")
pctype <- list(`Portátiles` = c("Laptop", "Convertible"), 
               `Sobremsa` = c("Torre", "Todo en uno"))

# Define UI for application that draws a histogram
shinyUI(fluidPage(
    
    # App title ----
    titlePanel("Hello Shiny!"),
    
    fluidRow(
        
        column( 4,
            wellPanel(
                selectizeInput(
                    'pctype', '', choices = pctype,
                    options = list(
                        placeholder = 'El tipo de ordenador que buscas ...',
                        onInitialize = I('function() { this.setValue(""); }')
                    )
                )
            )
        ),

        column( 4,
                wellPanel(
                    selectizeInput(
                        'basics', '', choices = os,
                        options = list(
                            placeholder = 'Tu sistema operativo es ...',
                            onInitialize = I('function() { this.setValue(""); }')
                        )
                    )
                )
        ),
        
        column( 4,
                wellPanel(
                    selectizeInput(
                        'maxprice', '', choices = os,
                        options = list(
                            placeholder = 'El precio máximo que pagarías ...',
                            onInitialize = I('function() { this.setValue(""); }')
                        )
                    )
                )
        )
    ),
    
    mainPanel(
        textOutput("foundMachine")        
    )

    
    # Sidebar layout with input and output definitions ----
))

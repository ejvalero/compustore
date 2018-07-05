#
# This is the server logic of a Shiny web application. You can run the 
# application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
# 
#    http://shiny.rstudio.com/
#

library(shiny)

market <- "https://www.amazon.es/gp/search/ref=sr_pg_"

# Define server logic required to draw a histogram
shinyServer(function(input, output, session) {
    
    scraper <- reactive({
        spage <- "2"

        if(all(input$pctype != "" & input$basics != "")){
            pctype <- switch(input$pctype, 
                             "Laptop" = "portatil", "Convertible" = "convertible")
            keyspc <- paste("ordenador", pctype, input$basics, sep = "+")
            baseos <- tolower(gsub(" ", "+", input$basics))
            keywds <- paste("ordenador", pctype, baseos, sep = "+")
            
            url <- paste(market, spage, "?rh=i%3Aaps%2Ck%3A", keywds, "&page=", spage,
                         "&keywords=", keywds, "&ie=UTF8", sep = "")            
        }

        # products <- read_html(url[[2]][1]) %>%
        #     html_nodes(".s-result-item")
        # 
        # prod_asins <- products %>% html_attr("data-asin") 
        #  
        # compuTable <- data.frame(
        #     asin = prod_asins
        # )
        
    })
    
    output$foundMachine <- renderText({
        if(!is.null(scraper())) scraper()
    })
  
})

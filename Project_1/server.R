library(shiny)
library(shinyapps)
rolling <- function(dice_num,dice_type) sum(sample(1:dice_type, dice_num, replace=T))
shinyServer(
    function(input, output) {
        output$roll <- renderPrint({rolling(input$dice_num,input$dice_type)})
    }
    
)
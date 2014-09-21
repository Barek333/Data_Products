library(shiny)
library(shinyapps)
shinyUI(pageWithSidebar(
    headerPanel("D&D dice roller"),
    sidebarPanel(
        numericInput('dice_num', 'Choose up to 10 dices to roll', 0, min = 0, max = 10, step = 1),
        checkboxGroupInput("dice_type", "Select one dice type",
                           c("d4" = 4,
                             "d6" = 6,
                             "d8" = 8,
                             "d10" = 10,
                             "d12" = 12,
                             "d20" = 20,
                             "d100" = 100)),
        submitButton('Roll!')
    ),
    mainPanel(
        h3('Dice roll result'),
        h4('You rolled a'),
        verbatimTextOutput("roll")
    )
))
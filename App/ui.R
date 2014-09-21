library(shiny)
shinyUI(pageWithSidebar(
    headerPanel("Data science FTW!"),
    sidebarPanel(
        h3('Sidebar text')
    ),
    mainPanel(
        h3('Main Panel text')
    )
))

###1

shinyUI(pageWithSidebar(
    headerPanel("Illustrating markup"),
    sidebarPanel(
        h1('Sidebar panel'),
        h1('H1 text'),
        h2('H2 Text'),
        h3('H3 Text'),
        h4('H4 Text')
    ),
    mainPanel(
        h3('Main Panel text'),
        code('some code'),
        p('some ordinary text')
    )
))

###2

shinyUI(pageWithSidebar(
    headerPanel("Illustrating inputs"),
    sidebarPanel(
        numericInput('id1', 'Numeric input, labeled id1', 0, min = 0, max = 10, step = 1),
        checkboxGroupInput("id2", "Checkbox",
                           c("Value 1" = "1",
                             "Value 2" = "2",
                             "Value 3" = "3")),
        dateInput("date", "Date:")
    ),
    mainPanel(
        h3('Illustrating outputs'),
        h4('You entered'),
        verbatimTextOutput("oid1"),
        h4('You entered'),
        verbatimTextOutput("oid2"),
        h4('You entered'),
        verbatimTextOutput("odate")
    )
))

###3

# shinyUI(
#     pageWithSidebar(
#         # Application title
#         headerPanel("Diabetes prediction"),
#         sidebarPanel(
#             numericInput('glucose', 'Glucose mg/dl', 90, min = 50, max = 200, step = 5),
#             submitButton('Submit')
#         ),
#         mainPanel(
#             h3('Results of prediction'),
#             h4('You entered'),
#             verbatimTextOutput("inputValue"),
#             h4('Which resulted in a prediction of '),
#             verbatimTextOutput("prediction")
#         )
#     )
# )

###4

# shinyUI(pageWithSidebar(
#     headerPanel("Example plot"),
#     sidebarPanel(
#         sliderInput('mu', 'Guess at the mean',value = 70, min = 62, max = 74, step = 0.05,)
#     ),
#     mainPanel(
#         plotOutput('newHist')
#     )
# ))


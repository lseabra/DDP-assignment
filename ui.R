library(shiny)

shinyUI(navbarPage('Chick Diet Explorer',
                   tabPanel("Histograms",
                        sidebarPanel(
                                h3('Options and filters'),
                                sliderInput("bins",
                                            "Number of bins:",
                                            min = 1,
                                            max = 20,
                                            value = 10),
                        sliderInput("age",
                                    "Age (in days):",
                                    min = 0,
                                    max = 21,
                                    value = 21),
                        checkboxGroupInput("diet", 
                                           label = 'Diets:', 
                                           choices = list("Diet 1" = 1, 
                                                          "Diet 2" = 2,
                                                          "Diet 3" = 3,
                                                          "Diet 4" = 4),
                                           selected = c(1, 2, 3, 4)),
                        hr(),
                        h3('Current selection'),
                        p('Selected age in days is:'),
                        verbatimTextOutput('age'),
                        p('Selected diets are:'),
                        verbatimTextOutput('diet')
                        ),
                   mainPanel(
                                plotOutput('histPlot'),
                                plotOutput('histPlot2')
                   )
                   ),
                   tabPanel('Boxplot',
                            plotOutput('boxPlot')
                   ),
                   tabPanel('Data',
                            tabPanel(p(icon('table'), 'Data'),
                                     dataTableOutput(outputId='table')
                            )
                   ),
                   tabPanel('About',
                            mainPanel(
                                    includeMarkdown('about.md')
                            )
                   )
                )
        )

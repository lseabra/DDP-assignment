library(shiny)
library(lattice)
data("ChickWeight")

shinyServer(
        function(input, output) {

                ## Explorer tab
                output$histPlot <- renderPlot({
                        x <- ChickWeight[ChickWeight$Time == input$age & ChickWeight$Diet %in% input$diet, ]
                        #x <- ChickWeight
                        bins <- seq(min(x$weight), max(x$weight), length.out = input$bins + 1)
                        # draw the histogram with the specified options
                        #hist(x, breaks = bins, main = sprintf('Weight Histogram (at day %i)', input$age), col = 'darkgray', border = 'white')
                        histogram(~x$weight, x, main = sprintf('Weight Histogram (at day %i)', input$age), breaks = bins, xlab = 'Weight (gm)')
                })
                output$histPlot2 <- renderPlot({
                        x <- ChickWeight[ChickWeight$Time == input$age & ChickWeight$Diet %in% input$diet, ]
                        bins <- seq(min(x$weight), max(x$weight), length.out = input$bins + 1)
                        histogram(~x$weight | x$Diet, x, main = sprintf('Weight Histogram by Diet (at day %i)', input$age), breaks = bins, xlab = 'Weight (gm)')
                })
                output$age <- renderText({input$age})
                output$diet <- renderText({input$diet})
                #output$average <- renderText({mean(ChickWeight[ChickWeight$Time == input$age & ChickWeight$Diet %in% input$diet, 1])})

                ## Boxplot tab
                output$boxPlot <- renderPlot({
                        x <- ChickWeight[ChickWeight$Time == input$age & ChickWeight$Diet %in% input$diet, ]
                        bwplot(x$weight ~ x$Diet, main = sprintf('Boxplot by diet (at day %i)', input$age), xlab = 'Diet', ylab = 'Weight (gm)')
                })
                ## Data tab
                output$table <- renderDataTable(
                        {ChickWeight}, options = list(bFilter = TRUE, iDisplayLength = 10))
        }
)

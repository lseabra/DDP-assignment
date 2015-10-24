library(knitr)
library(shiny)
data("ChickWeight")

## Example
setwd("C:\\data\\synched\\local\\trabalho\\pessoais\\formação\\2015\\15.06 Data Science Specialization\\09 Developing Data Products\\assignment\\example")
knit("include.Rmd")
runApp()

## My Shiny App
setwd("C:\\data\\synched\\local\\trabalho\\pessoais\\formação\\2015\\15.06 Data Science Specialization\\09 Developing Data Products\\assignment")
runApp()

knit("about.Rmd")

x <- ChickWeight

bwplot(ChickWeight$weight ~ ChickWeight$Diet, main = sprintf('Boxplot by diet (at day %i)', input$age))

max(ChickWeight$Time)

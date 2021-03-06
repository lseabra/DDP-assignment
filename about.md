---
title: "About Chick Diet Explorer"
author: "Luis Seabra Coelho"
date: "October 19th, 2015"
output: html_document
---

# Chick Diet Explorer

## The data

This shiny application was built upon some data available from R default installation. In particular, this application uses the ChickWeight dataset included in the R Datasets Package.

The complete details about this dataset can be found online on the [R Manual](https://stat.ethz.ch/R-manual/R-devel/library/datasets/html/ChickWeight.html).

## Data columns

In short, the dataset consists of data related to 4 different diets that some chick were subjected to, and the evolution of their weight. This dataset has the following columns:

* weight: The chicks weight in gm
* Time: Chick age in days
* Chick: A unique identifier of the chick (1...50)
* Diet: A unique identifier of the chick's diet (1...4)

## The application

The Shinny application has 4 tabs.

The first tab is the "Histograms" and there you can set all the options and filters to explore the histograms of the chick's weight: the number of bins, the age in days and the diets to consider.

The second tab is "Boxplot" where you can explore a box plot of the chick's weight according to the diet.

The third tab is "Data" and there you can find a table weith the data available to be explored.

And the forth tab is this one, "About". And it is meant to help you navigate on this application.

library(shiny)
library(shinydashboard)
library(ggplot2)
library(leaflet)
library(dplyr)
library(shinythemes)


shinyUI(dashboardPage(
    dashboardHeader(title = "Micheal's Shiny App"),
    dashboardSidebar(
        sidebarMenu(
            menuItem("Varable study", tabName = "studyinfo"),
            menuItem("Data in Years", tabName = "time")
        )
    ),
    dashboardBody(
        tags$head(
            tags$link(rel = "stylesheet", type = "text/css", href = "custom.css")
        ),
        tabItems(
            
            tabItem(tabName = "studyinfo",
                    selectizeInput("chosen",
                                   "Select category",
                                   choice_study_info),
                    fluidRow(plotOutput("studyinfo"))
            ),
            
            tabItem(tabName = "time",
                    selectInput(inputId = "sel",
                                label = 'Select category',
                                choices = choice_time,
                                selected = choice_time),
                    
                    fluidRow(plotOutput("time")) 
                    
            )
            
            
        ) 
    ) 
)
)

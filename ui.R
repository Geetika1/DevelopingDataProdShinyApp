library(shiny)

shinyUI(fluidPage(
  titlePanel("Heart Risk Calculator"),
  
  fluidRow(
    
    #Slider input to accept the age
    column(3,
           sliderInput("age", label = h3("Age"),
                       min = 20, max = 120, value = 50)),
    
    #Button to accept the gender
    column(3,
           radioButtons("gender", label = h3("Gender"),
                        choices = list("Male" = "Male", "Female" = "Female"), selected = "Male")),
    
    #Text box to accept the cholestrol
    column(3,
           textInput("totalchol", label = h3("Total Cholestrol (mg/dL) (130-320)"),
                     value = ""))
    
  ),
    
  
  fluidRow(
    
    
    #Text box to accept the blood pressure
    column(3,
           textInput("bloodpress", label = h3("Blood Pressure (mmHg) (90-200)"),
                     value = "")),
    
    
    #Buttons to accept the diabetes input
    column(3,
           radioButtons("diab", label = h3("Diabetes"),
                        choices = list("No" = "No", "Yes" = "Yes"),
                        selected = "No")),
    
    
    #Buttons to accept the smoking condition
    column(3,
           radioButtons("smoker", label = h3("Smoker"),
                        choices = list("No" = "No", "Yes" = "Yes"),
                        selected = "No"))
    
  ),
  

  
  fluidRow(
    
    #Submit button to take the inputs and calculate if you're at risk
    column(1,
           h3("Risk?"),
           submitButton("Calculate"))
  ),
  
  


  

    mainPanel(
    textOutput("text1"),
    textOutput("text2"),
    textOutput("text3"),
    textOutput("text4"),
    textOutput("text5"),
    textOutput("text6"),
    textOutput("text7")
  )
  
))
  
  


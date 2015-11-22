shinyServer(
  function(input, output) {
    
    
    output$text1 <- renderText({
      paste("Age:", input$age)
    })
    
    output$text2 <- renderText({
      paste("Gender:", input$gender)
    })
    
    output$text3 <- renderText({
      paste("Total Cholestrol:", input$totalchol)
    })
    
    output$text4 <- renderText({
      paste("Blood Pressure:", input$bloodpress)
    })
    
    
    output$text5 <- renderText({
      paste("Diabetes:", input$diab)
    })
    
    output$text6 <- renderText({
      paste("Smoker:", input$smoker)
    })
    
    #Perform calculations to predict if you're at a risk or not
    output$text7 <- renderPrint({
      if(input$smoker == "Yes")  "You are at a risk" 
      else if ((input$age > 40) && (input$bloodpress > 150) && (input$diab == "Yes")) "You are at a risk"
      else if ((input$gender == "Male") & (input$totalchol > 190)) "You are at a risk"
      else if ((input$gender == "Female") & (input$totalchol > 200)) "You are at a risk"
      else "You are not at risk!!!"
    })
  }


  
  
)
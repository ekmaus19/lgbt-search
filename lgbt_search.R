# E. Kravchenko
# 5.16.2017
# Coding Assignment

#--------- Shiny App --------------------

load("for_app.Rda")

ui = basicPage(
  h2('Explore the Queer Characters Currently on Netflix'),
  dataTableOutput('mytable')
)
server = function(input, output) {
  output$mytable = renderDataTable({
    for_app
  })
}
shinyApp(ui, server)
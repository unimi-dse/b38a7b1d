server <- function(input, output) {


  # Regression output
  output$summary <- renderPrint({
    fit <- lm(Ecommerce_Customersxx$`Yearly Amount Spent` ~ Ecommerce_Customersxx$`Avg. Session Length`)

    summary(fit)
  })

  # Data output
  output$tbl = DT::renderDataTable({
    DT::datatable(Ecommerce_Customersxx, options = list(lengthChange = FALSE))
  })


  # Scatterplot output
  output$scatterplot <- renderPlot({
    ggplot(Ecommerce_Customersxx, aes(x=Ecommerce_Customersxx$`Avg. Session Length`, y=Ecommerce_Customersxx$`Yearly Amount Spent` )) +
      geom_point() +
      stat_smooth(method = "lm",
                  formula = y ~ x ) +
      labs(x = "Yearly Cost", y = "Session")

  })
  # Histogram output var 1
  output$distribution1 <- renderPlot({
    ggplot(data=Ecommerce_Customersxx, aes(Ecommerce_Customersxx$`Avg. Session Length`)) +
      geom_histogram(breaks=seq(30,40, by=1),
                     col="red",
                     fill="green",
                     alpha=.2)
  })
  # Histogram output var 2
  output$distribution2 <- renderPlot({
    ggplot(data=Ecommerce_Customersxx, aes(Ecommerce_Customersxx$`Yearly Amount Spent`)) +
      geom_histogram(breaks=seq(300,500, by=2),
                     col="red",
                     fill="green",
                     alpha=.2)

  })



}

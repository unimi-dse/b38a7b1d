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
    ggplot2::ggplot(Ecommerce_Customersxx, ggplot2::aes (x=Ecommerce_Customersxx$`Avg. Session Length`, y=Ecommerce_Customersxx$`Yearly Amount Spent` )) +
      ggplot2::geom_point() +
      ggplot2::stat_smooth(method = "lm",
                  formula = y ~ x ) +
      ggplot2::labs(x = "Yearly Cost", y = "Session")

  })
  # Histogram output var 1
  output$distribution1 <- renderPlot({
    ggplot2::ggplot(data=Ecommerce_Customersxx,  ggplot2::aes(Ecommerce_Customersxx$`Avg. Session Length`)) +
      ggplot2::geom_histogram(breaks=seq(30,40, by=1),
                     col="red",
                     fill="green",
                     alpha=.2)
  })
  # Histogram output var 2
  output$distribution2 <- renderPlot({
    ggplot2::ggplot(data=Ecommerce_Customersxx,  ggplot2::aes(Ecommerce_Customersxx$`Yearly Amount Spent`)) +
      ggplot2::geom_histogram(breaks=seq(300,500, by=2),
                     col="red",
                     fill="green",
                     alpha=.2)

  })



}

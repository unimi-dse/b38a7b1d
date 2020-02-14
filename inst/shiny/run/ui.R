ui <-

  shiny::fluidPage(
     titlePanel("Regression Model (Dataset: Ecommerce Customers)"),




  shiny::tabsetPanel(type = "tabs",

                      shiny:: tabPanel("Scatterplot", plotOutput("scatterplot")), # Plot
                      shiny::tabPanel("Distribution", # Plots of distributions
                       fluidRow(
                         shiny::plotOutput("distribution1"),
                         shiny::plotOutput("distribution2"))
              ),
              shiny::tabPanel("Model Summary", verbatimTextOutput("summary")), # Regression output
              shiny::tabPanel("Data", DT::dataTableOutput('tbl')) # Data as datatable

  )
)

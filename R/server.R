#' Define server logic required to draw a histogram
#'
#' @param input  Shiny input object
#' @param output  Shiny output object
#'
#' @return Server function for a Shiny app.
#' @export
server <- function(input, output) {

  output$distPlot <- renderPlot({
    # generate bins based on input$bins from ui.R
    x    <- faithful[, 2]
    bins <- seq(min(x), max(x), length.out = input$bins + 1)

    # draw the histogram with the specified number of bins
    hist(x, breaks = bins, col = 'darkgray', border = 'white')
  })
}

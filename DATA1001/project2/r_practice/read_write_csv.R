library(googlesheets4)
url <- "https://docs.google.com/spreadsheets/d/1JGMBBDOkDFzFrTvwRGJ43rXYGYUKbJXn6SZjeau4NRA/edit?resourcekey#gid=946826064"
survey_data <- read_sheet(url)
survey_data

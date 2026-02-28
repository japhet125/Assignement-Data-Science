library(dplyr)
library(tidyverse)
library(readr)


url_data <- "https://raw.githubusercontent.com/japhet125/Assignement-Data-Science/refs/heads/main/Assignment5A.csv"

get_data <- read.csv(url_data)

head(get_data)
colnames(get_data)

airlines <- get_data |>
  pivot_longer(
    cols = -c(Airline, Status),
    names_to = "Destination",
    values_to = "Count"
  )
airlines
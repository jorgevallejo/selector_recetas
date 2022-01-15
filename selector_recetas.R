# Load libraries
library(readxl)

# Read receipt names from excel file
recetas <- read_excel(path = "../ZZZ-lista comidas.xlsx",
                      sheet = "Platos",
                      col_names = FALSE,
                      col_types = "text")

# Change tibble into character vector
recetas <- recetas$...1

# Extract a sample of receipt names
(menu <- sample(recetas,
               size = 7)
)

# Load libraries
library(readxl)

# Read receipt names from excel file
recetas <- read_xlsx(path = "../ZZZ-lista comidas.xlsx",
                      sheet = "Platos",
                      col_names = FALSE,
                      col_types = "text")

# Change tibble into data frame
recetas <- as.data.frame(recetas,
                         stringsAsFactors=FALSE)
colnames(recetas) <- "Platos"

# Extract a sample of receipt names
## Create a vector of weights for probabilities
## All receipts get at first the same probability (1)
weights <- rep(1, # base probability 
               length(recetas[,1])) # repeated as many times as are receipts

# Crate an empty vector for menu
menu <- vector(mode = "character", length = 7)

## Calculate probability so that a new receipt is the result of
## sampling once every ten tries
if (sample(10,1) == 1) {
  menu[1] <- "Nueva receta"
}


# Generate menu of 7 receipts
(menu <- sample(recetas[,1],
               size = sum(menu == ""), # Empty positions in the vector
               prob = weights)
)

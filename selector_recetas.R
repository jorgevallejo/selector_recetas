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

# Add 'new receipt' to the "Platos" column
recetas <- rbind(recetas, "Nueva receta")

# Extract a sample of receipt names
## Create a vector of weights for probabilities
## All receipts get at first the same probability (1)
weights <- rep(1, # base probability 
               length(recetas[,1])) # repeated as many times as are receipts

## Calculate probability so that a new receipt is the result of
## sampling once every ten tries

### Every try is seven samples
### It means we want a new receipt to emerge once every 70 samples (1/70)

new_receipt <- 

(menu <- sample(recetas[,1],
               size = 7,
               prob = weights)
)

setwd("/Users/enrique/Downloads/")
install.packages("readr")   # If you don't have the 'readr' package installed
library(readr)
# Read the CSV file
data <- read_csv("data.csv")

# Write each row to a text file (one page per row)
for (i in seq_len(nrow(data))) {
  row_text <- paste(data[i,], collapse = "\t")
  write(row_text, file = paste0("page_", i, ".txt"))
}

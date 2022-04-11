library(wordcloud)
library(dplyr)
library(readr)
library(tm)

df <- iris
sp <- df$Species
corp <- VCorpus(VectorSource(sp))
corp <- tm_map(corp, removePunctuation)
corp <- tm_map(corp, removeNumbers)
corp <- tm_map(corp, stripWhitespace)
corp <- tm_map(corp, content_transformer(tolower))
set.seed(101)
wordcloud(corp,
          random.order = FALSE,
          min.freq = 1,
          max.words = 10,
          colors= brewer.pal(8, "Reds"))
corp[1]

dtm <- TermDocumentMatrix(corp)
matrix <- as.matrix(dtm)
wrds <- sort(rowSums(matrix), decreasing = TRUE)
clouddf <- data.frame(word = names(wrds), freq=wrds)
head(clouddf, 5)

# Run all .r scripts sequentially

library(here)

scripts <- list.files(here("scripts"), pattern = "*.r$", full.names = TRUE)

for (script in scripts) {
    print(paste("Sourcing", script, "..."), encoding = "UTF-8")
    source(script, echo = FALSE, local = TRUE)
    rm(list = ls())
}

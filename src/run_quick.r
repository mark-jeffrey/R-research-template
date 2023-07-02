# Run all .r scripts sequentially

library(here)

scripts <- list.files(here("scripts"), pattern = "*.r$", full.names = TRUE)

for (script in scripts) {
    print(paste("Sourcing", script, "..."))
    source(script, echo = FALSE, local = TRUE, encoding = "UTF-8"))
}

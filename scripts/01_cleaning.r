# Cleaning

# libs
library(here)
library(glue)
library(tidyverse)
library(DT)
library(assertthat)

source(here("src/functions", "project_function.r"))

# read
data <- read_csv(here("data", "example.csv"))

# clean
project_function()

#test
assert_that(noNA(data))

# write
write_rds(data, here("results/rdata/example.rds"))

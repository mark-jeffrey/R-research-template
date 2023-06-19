# Run script for example project

# PACKAGES ------------------------------------------------------------------
library(here)

# PRELIMINARIES -------------------------------------------------------------
# Control which scripts run
run_01_cleaning <- 1
run_02_analysis <- 1
run_03_reporting <- 1

# RUN SCRIPTS ---------------------------------------------------------------

# Read and clean example data
if (run_01_cleaning) source(here("scripts", "01_cleaning.R"), local = TRUE, encoding = "UTF-8")
# INPUTS
#  here("data", "example.csv") # raw data from XYZ source
# OUTPUTS
#  here("proc", "example.rds") # cleaned 

# Regress Y on X in example data
if (run_02_analysis) source(here("scripts", "02_analysis.R"), local = TRUE, encoding = "UTF-8")
# INPUTS
#  here("proc", "example.rds") # 01_cleaning.R
# OUTPUTS 
#  ...

# Create table of regression results
if (run_03_reporting) source(here("scripts", "03_reporting.R"), local = TRUE, encoding = "UTF-8")
# INPUTS 
#  here("proc", "ex_fixest.rds") # 02_ex_reg.R
# OUTPUTS
#  ... 

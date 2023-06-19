# Research project template

This is a template repository that aims to codify my workflow and incorporates best practices for research code. 

## Goals:

- clear documentation
- consistent structure
- version control
- explicit wrt inputs, outputs and methods
- reproducibility
- testing (liberal assertions at a minimum)

### Aspirational goals:

- continuous integration
- formal testing

## Useful resources:

- [SKHiggins R_guide](https://github.com/skhiggins/R_guide)
- [Good Research Code Handbook](https://goodresearch.dev/)
- [Science as Amateur Software Development *by R McElreath*](https://www.youtube.com/watch?v=zwRdO9_GGhY&t=1983s)

## Key components of R workflow

- Git and Github 
- Virtual environments {renv::init(), add renv/library to .gitignore}
- Folder and file structure as laid out below
- Number scripts to make sequence explicit
- Highlight and resolve any non linear sequences
- Liberal use of assertions for testing {assertthat}
- Data manipulation:
  - tidyverse for dataframes 
  - data.table for big data {DT}
  - If it's a matrix, use a matrix

## Files and folder structure

TEMPLATE
|-- data/ # gitignored
|  `-- example.csv
|-- docs/
|  |-- README.md
|  `--project.drawio
|-- renv/
|  |-- library/ # gitignored
|  |-- .gitignore
|  |-- activate.R
|  `-- settings.json
|-- renv.lock
|-- results/ # gitignored
|   |-- plots
|   |-- rdata
|   |   `-- example.rds
|   |-- reports
|   `-- tables
|-- scripts/
|   |-- 01_cleaning.r
|   |-- 02_analysis.r
|   `-- 03_reporting.r
|-- src/
|   |-- functions
|   |   `-- project_function.r
|   |-- run_better.r
|   `-- run_quick.r
|-- tests/
|-- .gitignore
|-- .Rprofile
`-- renv.lock

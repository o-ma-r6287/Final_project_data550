# Final Project 550 Report  — Maternal Health Risk Analysis

### Author
**Omar Abdul-Rahman**
**Fall Semester 2025**
https://hub.docker.com/r/0m412/omarimage

--
## Overview
This project centers maternal health risk data to see the relationships between my variables and health outcomes.

# Docker Reproducible Report

This project includes a Docker image that builds and renders the final report automatically.

## Build the Docker image

####```bash
docker build -t 0m412/omarimage:report

It demonstrates a reproducible data analysis pipeline built for my **Data 550 final project**.  
All analyses were conducted in **R (4.3.2)** using a **Docker** for consistency and transparency.  

The final report examines how **discrimination when seeking services** and **unmet basic needs** relate to mental health outcomes, measured as the number of “not good mental health days” in the past month.  
Analyses were conducted using descriptive statistics, t-tests, and simple linear regression in R.
>>>>>>> 8bdb050 (Final submission for Data 550)

## Repository Structure 

Folder: final_data550/
- code/          # R scr(s)pts for d g, analysis, and visualization
- data/          # The maternal health dataset
- output/        # Final report +  figures generated  Makefile
- report.Rmd     # R Markdown report
- Dockerfile     # Reproducible environment
- Makefile       # Report generation
- renv.lock      # snapshot 
- README.md      # Project documentation

---
## Reproducibility Setup Instructions

This project uses the "renv" package so that anyone can reproduce the outcome.

### Option 1:
To sync your package versions and restore R, run:
bash
make install

### Option 2:
Using Docker (recommended)
####```bash

# Build the Docker image
make build

# Render the R Markdown report inside Docker
make report

### Option 3: 
Manually 

docker run --rm -v "$(pwd):/project" 0m412/omarimage:report \
  Rscript -e "rmarkdown::render('/project/report.Rmd', output_file='/project/output/report.html')"

### Option 4:
Manually on local R (on device of use)

install.packages('renv')
renv::restore()
rmarkdown::render('report.Rmd', output_file='output/report.html')
---
---
## Packages Used
-  tidyverse — data wrangling & visualization
-  broom, janitor, kableExtra — model tidying and reporting
-  gtsummary, parameters, broom.helpers — regression tables and effect sizes
-  rmarkdown, here — reproducible document creation
-  brglm2 — robust logistic regression (custom installation)
---
---
## USES? 
Data cleaning and exploration (janitor, dplyr)
Descriptive summaries and visualization (ggplot2, kableExtra)
T-tests and regression modeling (broom, gtsummary)
Interpretation and reproducible reporting (rmarkdown)
---
---
## How to Rebuild the Report

Rebuilding the final report from data and code:
1. Open terminal in this folder.
2. Run: make 

The report will be saved in the `output/` directory as `report.html`.

---

## Components 

- **Table:** The main summary table is generated in `code/03_analysis.R`
- **Figure:** The primary figure is created in `code/04_make_figure.R`

---

## Notes
This project uses R and R Markdown.  
You can open the HTML report directly in your browser after running `make`.
Final report: output/report.html
Rendered automatically using:
Rscript -e "rmarkdown::render('report.Rmd', output_file='output/report.html')"

Omar Abdul-Rahman Final Data 550 Report Project
Emory University, Rollins School of Public Health.

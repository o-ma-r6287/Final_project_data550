# Final Project — Maternal Health Risk Analysis

This project centers maternal health risk data to see the relationships between my variables and health outcomes.

## Repository Structure 

Folder: final_data550/
- code/          # R scr(s)pts for d g, analysis, and visualization
- data/          # The maternal health dataset
- output/        # Final report +  figures generated  Makefile
- report.Rmd     # R Markdown report
- Makefile       # Report generation
- README.md      # Project documentation

---
## Reproducibility Setup
This project uses the "renv" package so that anyone can reproduce the outcome.
To sync your package versions and restore R, run:
```bash
make install
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

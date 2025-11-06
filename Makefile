# Makefile for Final Project

all: output/report.html

output/report.html: report.Rmd
	# Build the report
	Rscript -e "rmarkdown::render('report.Rmd', output_file='output/report.html')"

# Makefile for Maternal Health Risk Report
# By Omar Abdul-Rahman

IMAGE = 0m412/omarimage:report

# Default target: runs the Docker container to build the report
all: report

# Build the Docker image
build:
	docker build -t $(IMAGE) .

# Run the container to generate report.html
report:
	docker run --rm -v "$(PWD)/output:/project/output" $(IMAGE)

# Clean up output files
clean:
	rm -rf output/*

# Remove Docker image
clean-image:
	docker rmi $(IMAGE)
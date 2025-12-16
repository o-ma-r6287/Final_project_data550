FROM rocker/tidyverse:latest

WORKDIR /project

RUN apt-get update && apt-get install -y \
    cmake \
    libabsl-dev \
    libcurl4-openssl-dev \
    libssl-dev \
    pandoc \
    && rm -rf /var/lib/apt/lists/*

RUN R -e "install.packages(c('rmarkdown','gtsummary'), repos='https://cloud.r-project.org', dependencies=TRUE)"

CMD ["Rscript", "-e", "rmarkdown::render('report.Rmd', output_file='output/report.html')"]



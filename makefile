# MAke it all

all:
	Rscript -e 'rmarkdown::render("README.Rmd")'
	Rscript -e 'pkgdown::build_site()'

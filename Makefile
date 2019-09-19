TITLE = 2019_cdph_causal

.PHONY : all
all: deck web

deck:
	Rscript -e "rmarkdown::render('$(TITLE).Rmd')"

web:
	rsync --chmod=go+r $(TITLE).pdf \
	  nhejazi@arwen.berkeley.edu:/mirror/data/pub/users/nhejazi/present/$(TITLE).pdf

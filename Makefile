###############################################################################
#
# 	Makefile for jnuthesis
#
# 	Copyright (C) 2013-2015 Haixing Hu,
#   Department of Computer Science and Technology, Nanjing University.
#
#	Home Page of the Project: http://haixing-hu.github.io/nju-thesis/
#
###############################################################################

PACKAGE=jnuthesis
BST_FILE=gbt7714-2005.bst
BST_URL=https://raw.githubusercontent.com/Haixing-Hu/GBT7714-2005-BibTeX-Style/master/gbt7714-2005.bst
SOURCES=$(PACKAGE).dtx $(PACKAGE).ins
CLS=$(PACKAGE).cls $(PACKAGE).cfg dtx-style.sty dtklogos.sty
SAMPLE=master
SAMPLE_B=bachelor
SAMPLECONTENTS=$(SAMPLE).tex
SAMPLEBIB=$(SAMPLE).bib
INSTITUTE_NAME=jnuname.eps
TEXMFLOCAL=$(shell get_texmf_dir.sh)

.PHONY: all clean cls doc sample

all: bst cls doc sample

###### update bst file
bst:  $(BST_FILE)

$(BST_FILE):
	curl $(BST_URL) -o $(BST_FILE)

###### generate cls/cfg
cls:  $(CLS)

$(CLS): $(SOURCES)
	latex $(PACKAGE).ins

###### generate doc

doc: $(PACKAGE).pdf

$(PACKAGE).pdf: $(CLS)
	xelatex $(PACKAGE).dtx
	makeindex -s gind.ist -o $(PACKAGE).ind $(PACKAGE).idx
	xelatex $(PACKAGE).dtx
	xelatex $(PACKAGE).dtx

###### for sample

sample:	 $(SAMPLE).pdf

$(SAMPLE).pdf: $(CLS) $(INSTITUTE_NAME) $(BST_FILE) $(SAMPLE).tex $(SAMPLEBIB)
	xelatex $(SAMPLE).tex
	bibtex $(SAMPLE)
	xelatex $(SAMPLE).tex
	xelatex $(SAMPLE).tex


bachelor: $(SAMPLE_B).pdf

$(SAMPLE_B).pdf: $(CLS) $(INSTITUTE_NAME) $(BST_FILE) $(SAMPLE_B).tex $(SAMPLEBIB)
	xelatex $(SAMPLE_B).tex
	bibtex $(SAMPLE)
	xelatex $(SAMPLE_B).tex
	xelatex $(SAMPLE_B).tex


###### install

install: $(SOURCE) $(CLS) $(INSTITUTE_NAME) $(BST_FILE) $(PACKAGE).pdf $(SAMPLE).pdf
	mkdir -p $(TEXMFLOCAL)/tex/latex/jnuthesis
	cp -rvf $(SOURCES) $(CLS) $(INSTITUTE_NAME) $(TEXMFLOCAL)/tex/latex/jnuthesis/
	mkdir -p $(TEXMFLOCAL)/doc/latex/jnuthesis
	cp -rvf $(PACKAGE).pdf $(SAMPLE).pdf $(TEXMFLOCAL)/doc/latex/jnuthesis/
	mkdir -p $(TEXMFLOCAL)/bibtex/bst
	cp -rvf $(BST_FILE) $(TEXMFLOCAL)/bibtex/bst/
	texhash

###### clean

clean:
	-@rm -f \
		*.aux \
		*.bak \
		*.bbl \
		*.blg \
		*.dvi \
		*.glo \
		*.gls \
		*.idx \
		*.ilg \
		*.ind \
		*.ist \
		*.log \
		*.out \
		*.ps \
		*.thm \
		*.toc \
		*.lof \
		*.lot \
		*.loe \
		*.cfg \
		*.cls \
		dtx-style.sty

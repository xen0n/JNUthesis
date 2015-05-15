#!/bin/sh

#( cd .. && sh ./make.sh ) && pdflatex template.tex && bibtex template && pdflatex template.tex && python ./utf82uni.py template.out && pdflatex template.tex && evince template.pdf
( cd .. && sh ./make.sh ) && pdflatex template.tex && pdflatex template.tex && python ./utf82uni.py template.out && pdflatex template.tex && evince template.pdf

#!/bin/bash

PROJECT_NAME=JNUthesis

latex "${PROJECT_NAME}.ins"
latex "${PROJECT_NAME}.dtx"
latex "${PROJECT_NAME}.dtx"
dvipdfmx "${PROJECT_NAME}"

[ -d out ] || mkdir -p out > /dev/null 2>&1

mv "${PROJECT_NAME}.cfg" out/
mv "${PROJECT_NAME}.cls" out/
mv "${PROJECT_NAME}.pdf" out/
rm -f *.aux *.dvi *.glo *.idx *.log *.toc *.diff > /dev/null 2>&1

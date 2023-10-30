#!/bin/bash
cd src

# Conversion Word
pandoc -f markdown -t docx \
chapters/00-abstract.md \
chapters/01-introduction.md \
chapters/02-methods.md \
chapters/03-results.md \
chapters/04-discussion.md \
chapters/05-formal.md \
-o ../rendered/preprint.docx \
--verbose \
--metadata-file=../metadata.json \
--reference-doc=template/template.docx \
--filter pandoc-crossref \
--metadata crossrefYaml="template/pandoc_crossref_conf.yml" \
--metadata link-bibliography="true" \
--metadata link-citations="true" \
--citeproc --biblatex \
--bibliography=bibliography.bib \
--csl=template/ecology-letters.cls

# Conversion TeX

pandoc -f markdown -t latex chapters/00-abstract.md -o abstract.tex

## Convert the main text up to the table
pandoc -f markdown -t markdown \
chapters/01-introduction.md \
chapters/02-methods.md \
chapters/03-results.md \
chapters/04-discussion.md \
chapters/05-formal.md \
-o main_tex.md \
--verbose

## Create the pdf

cp template/template.tex .
cp template/lapreprint.cls .

latexmk -c
pandoc -f markdown -t latex main_tex.md -o preprint.tex \
--verbose \
--template=template.tex \
--metadata-file=../metadata.json \
--filter pandoc-crossref \
--metadata link-citations="true" \
--metadata crossrefYaml=pandoc_crossref_conf.yml \
--citeproc --biblatex --bibliography=bibliography.bib

latexmk preprint.tex  -f -lualatex --file-line-error --interaction=nonstopmode && latexmk -c

mv preprint.pdf ../rendered/
mv preprint.tex ../rendered/

## Cleaning -up
rm  main_tex.md template.tex lapreprint.cls \
 preprint.bbl preprint.suppinfo preprint.run.xml

rm abstract.tex main.md chapters/main_docx.md \
annexes.tex appendices.tex ressources.tex template.tex lapreprint.cls 

cd ..
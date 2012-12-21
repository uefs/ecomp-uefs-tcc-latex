#!/bin/bash
# Generates zip file for use with ShareLatex.com, SpanDex.io
# and probably any other cloud based TeX editor.

ZIPFILE="tcc-ecomp.zip"
TMP_FOLDER="tmp"

# removing all temporary files
if [ -d $TMP_FOLDER ]; then
  rm $TMP_FOLDER -rf
fi
mkdir $TMP_FOLDER

find ../ -name "*~" -type f -print | xargs rm -f

cd $TMP_FOLDER

# creating abntex subfolder
wget http://codigolivre.org.br/frs/download.php/5337/abntex-0.9-beta2.tar.gz
tar -zxvf abntex-0.9-beta2.tar.gz
mkdir abntex

mv abntex-0.9/texmf/bibtex/bst/abntex/* .
mv abntex-0.9/texmf/bibtex/bib/abntex/abnt-options.bib .
mv abntex-0.9/texmf/tex/latex/abntex/{abnt-alf.sty,abnt-num.sty} .

mv abntex-0.9/texmf/bibtex/bib/abntex/* abntex
mv abntex-0.9/texmf/makeindex/abntex/* abntex
mv abntex-0.9/texmf/tex/latex/abntex/* abntex

rm -rf abntex-0.9*

# copying and zipping

cp -R ../indexMonografia.tex ../abnt-uefs.bib ../abnt-uefs.cls \
../conteudo ../figuras ../postextuais ../pretextuais .

zip -9 -r ../$ZIPFILE * 

cd ..

rm $TMP_FOLDER -rf


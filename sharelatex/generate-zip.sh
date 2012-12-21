#!/bin/bash
# Generates zip file for use with ShareLatex.com
# Please, execute this inside 'sharelatex' folder.

ZIPFILE="tcc-ecomp-sharelatex.zip"
TMP_FOLDER="tmp"

# removing all temporary files
if [ -d $TMP_FOLDER ]; then
  rm $TMP_FOLDER -rf
fi
mkdir $TMP_FOLDER

find ../ -name "*~" -type f -print | xargs rm -f


# copying files

cp -R indexMonografia.tex ../abnt-uefs.bib abnt-uefs.cls \
abntex ../conteudo ../figuras ../postextuais ../pretextuais tmp

cd $TMP_FOLDER

zip -9 -r ../$ZIPFILE * 

cd ..

rm $TMP_FOLDER -rf





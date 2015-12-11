#!/bin/bash
echo "$# parameters"
echo "$@";

packageName=$1


rm $packageName/vignettes/$packageName.aux
rm $packageName/vignettes/$packageName-blx.bib
rm $packageName/vignettes/$packageName.log
rm $packageName/vignettes/$packageName.R
rm $packageName/vignettes/$packageName.run.xml
#rm $packageName/vignettes/figure
rm $packageName/vignettes/$packageName-concordance.tex
rm $packageName/vignettes/$packageName.out
#rm $packageName/vignettes/$packageName.Rnw
#rm $packageName/vignettes/$packageName.tex
rm $packageName/vignettes/*.pdf

#!/bin/bash
echo "$# parameters"
echo "$@";

packageName=$1
vignetteDirectory="./${packageName}/vignettes"
pathToVignetteFileWithoutExtension="${vignetteDirectory}"
inputVignetteFile="${pathToVignetteFileWithoutExtension}/${packageName}.Rnw"
texVignetteFile="${pathToVignetteFileWithoutExtension}/${packageName}.tex"
#outputPdfFile="${textVignetteFileWithoutExtension}.pdf"

Rscript -e "library(knitr); knit('${inputVignetteFile}', output = '${texVignetteFile}')"
pdflatex -output-directory=${vignetteDirectory} ${texVignetteFile}
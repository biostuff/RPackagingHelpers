#!/bin/bash
echo "$# parameters"
echo "$@";

# Extract the version number from the package DESCRIPTION file
packageName=$1
versionLine=`grep -E "Version" ${packageName}/DESCRIPTION`
arr=(${versionLine//;/ })
version="${arr[1]}"
echo "Extracted version number:${version}"

filename=${packageName}_${version}.tar.gz
echo "Installing ${filename}"
installCommand="R CMD INSTALL ${filename}" 
#install.packages(filename, repos = NULL, type="source")
eval ${installCommand}

echo "Finish"


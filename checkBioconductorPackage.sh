#!/bin/bash
echo "$# parameters"
echo "$@";

# Extract the version number from the package DESCRIPTION file
packageName=$1
versionLine=`grep -E "Version" ${packageName}/DESCRIPTION`
arr=(${versionLine//;/ })
version="${arr[1]}"
echo "Extracted version number:${version}"

# If file exists delete it
if [ -f ${packageName}_${version}.tar.gz ] ; then
	rm ${packageName}_${version}.tar.gz
fi

# Build and performs checks of the package
R CMD build ${packageName}
R CMD check ${packageName}_${version}.tar.gz
R CMD BiocCheck ${packageName}_${version}.tar.gz


#!/bin/bash
echo "$# parameters"
echo "$@";

packageName=$1

#for file in ./$packageName/* ./$packageName/**/*
for file in ./$packageName/DESCRIPTION ./$packageName/NAMESPACE ./$packageName/NEWS ./$packageName/man/** ./$packageName/tests/** ./$packageName/vignettes/**
do
  echo "__________________________________________________"
  echo $file	
  cat $file | awk 'length($0) > 80'
  echo "__________________________________________________"
#  cmd [option] $file >> results.out
done


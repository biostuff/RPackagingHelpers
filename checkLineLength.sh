for file in ./CNVPanelizer/* ./CNVPanelizer/**/*
do
  echo "__________________________________________________"
  echo $file	
  cat $file | awk 'length($0) > 80'
  echo "__________________________________________________"
#  cmd [option] $file >> results.out
done


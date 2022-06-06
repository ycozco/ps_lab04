#!/bin/bash
for keyword in $1
do
  printf "%s\n" $keyword
  for file in $2
  do
    RES=`grep -n $keyword $file|cut -d":" -f1|tr "\n" " "`
    printf "\t%s:\t%s\n" $file "$RES"
  done
done
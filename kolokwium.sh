#!/bin/bash

if [ $# -ne 1 ]
then 
  echo "Podana niewlasciwa ilosc argumentow"
  exit 1
else
  name_new_file=$1
fi

mkdir $name_new_file
cd $name_new_file
git init
git remote add origin git@github.com:Richardson228/kolokwium.git
cp ../kolokwium_config.sh ../kolokwium.sh .
touch ReadMe.MD
whoami > ReadMe.MD
git add .
git commit -m "First commit"
git checkout -b Test
touch Add.txt Skip.txt
head -n 10 kolokwium.sh > Add.txt 
tail -n 10 kolokwium.sh > Skip.txt
git add Add.txt Skip.txt
git commit -m "Test commit"
git push origin Test
git checkout master
git push origin master

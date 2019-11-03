#!/bin/sh

echo "Scaffolding for $1"

if [ -d "./$1" ]; then
  exit 0
fi

echo "Create folder ./$1"
mkdir $1

cd $1

for i in etc dist docs script src classes libs 
do
  echo "Create folder ./$1/$i"
  mkdir $i
done

cd src
for i in main test 
do
  echo "Create folder ./$1/src/$i"
  mkdir $i
done

cd ../..


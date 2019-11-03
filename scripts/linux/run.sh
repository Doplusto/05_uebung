#!/bin/sh

echo "Build JAR file"

cd $1

cd classes/main

echo " Erzeuge $1.jar"
jar -cvf ../../dist/$1.jar *

echo "Führe $1.jar aus!"
cd ../..
java -cp ./dist/chiemgau.jar Number 1 10

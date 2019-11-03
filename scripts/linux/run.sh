#!/bin/sh

echo "Build JAR file"

cd $1

cd classes/main

echo " Erzeuge $1.jar"
jar -cvf ../../dist/$1.jar *

echo "Fuehre $1 aus!"
cd ../..
java -cp ./dist/Number.jar Number 1 10

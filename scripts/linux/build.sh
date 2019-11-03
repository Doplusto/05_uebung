#!/bin/sh
echo "Bauen und testen von :$1"

cd $1

echo "Zunächst alles in classes löschen!"
cd classes 
rm -rf ./main
rm -rf ./test
cd ..

echo "Nun wird alles neu gebaut..."
# kompilieren des Src 
javac --release 8 -d ./classes/main ./src/main/*;

# classpath bauen
pwd=$(pwd)
cp=.:$pwd/classes/main/:$pwd/libs/junit-4.13-rc-1.jar

echo "Classpath:$cp"
# kompilierend des Tests
javac --release 8 -cp "$cp" -d ./classes/test ./src/test/*

echo "... und jetzt getestet!"
# ausführen des test

#extend classpth for execution
cp=$cp:$pwd/classes/test:$pwd/libs/hamcrest-core-1.3.jar
echo "Classpath:$cp"
java -cp "$cp" org.junit.runner.JUnitCore NumberTest

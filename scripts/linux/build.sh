#!/bin/sh
echo "Bauen und testen von :$1"

cd $1

echo "Zunaechst alles in classes loeschen!"
cd classes 
rm -rf ./main
rm -rf ./test
cd ..

echo "Nun wird alles neu gebaut..."
# kompilieren des Src 
javac -d ./classes/main ./src/main/*;

# kompilierend des Tests
javac -cp .:./classes/main/:./libs/junit-4.13-rc-1.jar:./libs/hamcrest-core-1.3.jar -d ./classes/test ./src/test/*

echo "... und jetzt getestet!"
# ausfuehren des test
java -cp .:./classes/main/:./classes/test/:./libs/junit-4.13-rc-1.jar:./libs/hamcrest-core-1.3.jar org.junit.runner.JUnitCore NumberTest

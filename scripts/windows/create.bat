echo "Java Projekt erstellen"

set /P projekt=Projektname: 
mkdir %projekt%
cd %projekt%
mkdir src
mkdir dist
mkdir classes
mkdir libs
mkdir docs
mkdir scripts
mkdir etc
mkdir main
cd main
mkdir java
cd ..
mkdir test
cd test
mkdir java
cd ..
cd ..
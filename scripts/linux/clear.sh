#!/bin/sh

echo "Deletion of project $1"

if [ -d "./$1" ]; then
  read -p "Soll das Projekt '$1' wirklich geloescht werden [Y/n]?" loesche
  
  if [ $loesche == 'Y' ] || [ $loesche == 'y' ];	then
	  rm -rf $1
	  echo "Projekt '$1' wurde geloescht!"
  fi	
fi

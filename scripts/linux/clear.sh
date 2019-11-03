#!/bin/sh

echo "Löschen des Projektes '$1'"

if [ -d "./$1" ]; then
  read -p "Soll das Projekt '$1' wirklich gelöscht werden [Y/n]?" loesche
  
  if [ $loesche == 'Y' ] || [ $loesche == 'y' ];	then
	  rm -rf $1
	  echo "Projekt '$1' wurde gelöscht!"
  fi	
fi

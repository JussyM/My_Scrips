#!/bin/bash
echo
echo -n "compilation avec ou sans package (y or n )"
read answer
if [ $answer== "y" ]
echo -n "Entrez le chemin pour le .class: "
read destination
echo -n "Source du ficher: "
read source
if javac -d $destination $source
then
echo "exécuter le fichier compiler?? (y or n): "
read answer2
if [ $answer2=="y" ]
then java -cp $destination 

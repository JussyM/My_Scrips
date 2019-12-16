#!/bin/bash
#dezipper un fichier dans un dossier et le supprimer après le fichier zip bien sur :)
echo -n "nom du dossier: "
read source
echo -n "nom du fichier à deziper: "
read zip
if mkdir $source
mv $zip $source
cd $source
then
unzip $zip
rm -rf *$zip
fi

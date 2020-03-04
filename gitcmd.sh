#!/bin/bash
if git add .
then 
git commit -a
fi
echo -n "Veuillez entrez le lien git vers votre dépôt distant:"
read path 
git push $path

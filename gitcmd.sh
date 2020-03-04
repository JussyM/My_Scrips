#!/bin/bash
echo -n "Nouveau dépôt Y/N: "
read ans
if [ $ans== "y" ]
git init
then git add .
echo -n "git init && git add réussi"
git commit -a 
echo "Commit successfull"
fi
if [ $ans== "n" ]
git add . && git commit -a
echo -n "git add et commit réussi"
fi
echo -n "Un pull est-il nécessaire Y/N: "
read ans2
if [ $ans2== "y" ]
echo -n "Lien de votre dépôt git:"
read path1
git pull $path1 
fi
echo -n "Veuillez entrez le lien git vers votre dépôt pour le push distant:"
read path 
git push $path

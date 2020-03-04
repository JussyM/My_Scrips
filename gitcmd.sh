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
then
echo -n "git add et commit réussi"
fi
echo -n "Un pull est-il nécessaire Y/N: "
read ans2
if [ $ans2== "y" ]
echo -n "Lien de votre dépôt git:"
then
read path1
git pull $path1 
fi
if [ $ans2=="n" ]
echo -n "Lien git vers votre dépôt pour le push:"
read path 
git push $path

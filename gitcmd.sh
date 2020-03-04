#!/bin/bash
echo -n "Nouveau dépôt Y/N: "
read ans
if [ $ans== "y" ]
then
git init
 git add .
echo -n "git init && git add réussi"
git commit -a 
echo -n "Commit successfull"
else [ $ans== "n" ]
git add . && git commit -a
echo -n "git add et commit réussi"
fi
echo -n "Un pull est-il nécessaire Y/N: "
read ans2
if [ $ans2== "y" ]
then
echo -n "Lien de votre dépôt git:"
read path1
git pull $path1 
else [ $ans2=="n" ]
echo -n "Lien git vers votre dépôt pour le push:"
read path 
git push $path
echo -n "Pull successfull"
fi

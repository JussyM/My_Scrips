#!/bin/bash
echo -n "Nouveau dépôt Y/N: "
read ans
if [ $ans -eq "y" ]
then
git init
 git add .
echo  "git init && git add réussi"
git commit -a 
echo "Commit successfull"
else [ $ans -eq "n" ]
git add . && git commit -a
echo  "git add et commit réussi"
fi
echo -n "Un pull est-il nécessaire Y/N: "
read ans2
if [ $ans2 -eq "y" ]
then
echo -n "Lien de votre dépôt git:"
read path1
git pull $path1 
else [ $ans2 -eq "n" ]
echo -n "Lien git vers votre dépôt pour le push:"
read path 
git push $path
echo  "Pull successfull"
fi

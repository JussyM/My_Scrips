#!/bin/bash
echo -e "\033[36mNouveau dépôt Y/N:\033[0m "
read ans
if [ $ans == "y" ]
then
git init
 git add .
echo -e "\033[32mgit init && git add réussi\033[0m "
git commit -a 
echo -e "\033[32mCommit successfull\033[0m "
else [ $ans == "n" ]
git add . && git commit -a
echo -e "\033[32mgit add et commit réussi\033[0m "
fi
echo -n "Un pull est-il nécessaire Y/N: "
read ans2
if [ $ans2 == "y" ]
then
echo -n "Lien de votre dépôt git:"
read path1
git pull $path1 
else [ $ans2 == "n" ]
echo -n "Lien git vers votre dépôt pour le push:"
read path 
git push $path
echo -e "\033[32mPull successfull\033[0m "
fi

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
echo -e "\033[36mUn pull est-il nécessaire Y/N: \033[0m "
read ans2
if [ $ans2 == "y" ]
then
echo -e "\033[36mLien de votre dépôt git:\033[0m "
read path1
git pull $path1 
else [ $ans2 == "n" ]
echo -e "\033[36mLien git vers votre dépôt pour le push:\033[0m "
read path 
git push $path
echo -e "\033[32mPull successfull\033[0m "
fi

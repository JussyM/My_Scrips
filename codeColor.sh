#!/bin/bash

# Texte de l'exemple ( >= 3 caractÃ¨res ) :
TEXT=" Bash " ;

# Couleur du texte :
declare -a FG=('' '1' '4' '5' '7' '30' '31' '32' \
'33' '34' '35' '36' '37') ;

echo 

# PremiÃ¨re ligne :
printf "FG \ BG\t%${#TEXT}s" ;
for bg in {40..47} ; do
	printf "%${#TEXT}s" "${bg}  " ;
done
echo ;

# CrÃ©ation du tableau de prÃ©sentation des combinaisons :
for fg in ${!FG[*]} ; do
	echo -ne "${FG[fg]}\t\033[${FG[fg]}m$TEXT" ;
	for bg in {40..47} ; do
		echo -ne "\033[${FG[fg]};${bg}m$TEXT\033[0m" ;
	done
	echo ;
done

# Comment dÃ©clarer une couleur :
cat <<_eof_

 Format de dÃ©claration : \\033[XXm oÃ¹ XX prend les valeurs 
       de FG ou BG" ;
 Retour aux paramÃ¨tres par dÃ©faut : \033[0m" ;
 Pour plus de dÃ©tails : http://www.admin-linux.fr/?p=9011

_eof_

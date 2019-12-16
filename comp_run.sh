#!/bin/bash
echo
echo -n "quelle classe compiler? "
read source
javac $source && java $source
echo
echo -n "enter pour quitter"
read

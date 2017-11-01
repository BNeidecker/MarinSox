#!/bin/bash

############################################################
#	author: brettn1@umbc.edu							   	
#	description: a program that makes noises to sleep to   
#	ver: 1.1
############################################################

command -v sox > /dev/null 2>&1 || { echo >&2 "I require SoX but it's not installed.  Aborting."; exit 1; }

simple_prefrences(){
	OPTIONS="Brown Pink White Back Quit"
	select opt in $OPTIONS; do
	    if [ "$opt" = "Brown" ]; then
 			echo [Press Ctrl-C to stop noise]
 			command play -n synth brownnoise #> /dev/null 2>&1
	     elif [ "$opt" = "Pink" ]; then
	     	echo [Press Ctrl-C to stop noise]
			command play -n synth pinknoise #> /dev/null 2>&1
	     elif [ "$opt" = "White" ]; then
	     	echo [Press Ctrl-C to stop noise]
	  		play -n synth whitenoise #> /dev/null 2>&1
	  	 elif [ "$opt" = "Back" ]; then
	  	 	main
	  	 elif [ "$opt" = "Quit" ]; then
	  		echo Hate to see you go but love to watch ya leave \;\)
	  		exit	     
	     else
	       #clear
	       echo bad option
	     fi
	done
}

main(){
echo MARINS NOISEE SCRIPT
OPTIONS="MakeSimpleNoise MakeComplecksNoise Quit"
	select opt in $OPTIONS; do
	    if [ "$opt" = "Quit" ]; then
	      echo Hate to see you go but love to watch ya leave \;\)
	      exit
	     elif [ "$opt" = "MakeSimpleNoise" ]; then
	      simple_prefrences
	     elif [ "$opt" = "MakeComplecksNoise" ]; then
	      echo UNDER CONSTRUCTION
	      #complecks_prefrences
	     else
	       #clear
	       echo bad option
	     fi
	done
}

main
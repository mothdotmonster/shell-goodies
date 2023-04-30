#!/bin/sh

# barge v0.1.1 - simple and fast progress bar generator
# made with <3 from moth.monster

# SPDX-License-Identifier: WTFPL

barge(){
	pchr="#" # positive character
	nchr="." # negative character

	tlen="$1" # total length
	perc="$2" # percentage
	unset pbar nbar # prevent problems if script is ran repeatedly

	plen=$(( $(( perc * tlen )) / 100)) # get positive length
	nlen=$(( tlen - plen )) # get negative length 

	while [ "$plen" -ne 0 ]; do # add pchr to pbar plen times
		pbar="$pbar""$pchr"	
		plen=$(( "$plen" - 1 )) 
	done

	while [ "$nlen" -ne 0 ]; do # add nchr to nbar nlen times
		nbar="$nbar""$nchr"
		nlen=$(( "$nlen" - 1 ))
	done

	printf "%s" "$pbar" # print pbar
	printf "%s" "$nbar" # print nbar
}

trap "tput cnorm; exit" INT TERM # show cursor when script is killed because you got bored
tput civis # hide cursor during script execution

printf "%s\n" "Doing nothing..."

i=1 # initialize stuff
printf "[" 
while [ $i -lt 101 ]; do # while we are less than 100% complete...
	barge 20 "$i" # ...display a progress bar with the percentage...
	printf "] %s%%\r[" "$i" # and the bar ends, and the percentage number itself
	sleep 0.1 
	i=$(( i + 1 ))
done

printf "\n%s\n" "Nothing complete!"
tput cnorm # show cursor again
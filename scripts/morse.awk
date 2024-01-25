#!/bin/awk -f 

# this isn't actually needed by anything like this, 
#	but i thought i might as well include it on it's own
# made with <3 from moth.monster

# SPDX-License-Identifier: MIT-0

BEGIN {
	FS="" # empty field separator so we process one character at a time
	# define encoding as an array
	morse["A"] = ".-X"
	morse["B"] = "-...X"
	morse["C"] = "-.-.X"
	morse["D"] = "-..X"
	morse["E"] = ".X"
	morse["F"] = "..-.X"
	morse["G"] = "--.X"
	morse["H"] = "....X"
	morse["I"] = "..X"
	morse["J"] = ".---X"
	morse["K"] = "-.-X"
	morse["L"] = ".-..X"
	morse["M"] = "--X"
	morse["N"] = "-.X"
	morse["O"] = "---X"
	morse["P"] = ".--.X"
	morse["Q"] = "--.-X"
	morse["R"] = ".-.X"
	morse["S"] = "...X"
	morse["T"] = "-X"
	morse["U"] = "..-X"
	morse["V"] = "...-X"
	morse["W"] = ".--X"
	morse["X"] = "-..-X"
	morse["Y"] = "-.--X"
	morse["Z"] = "--..X"
	morse["0"] = "-----X"
	morse["1"] = ".----X"
	morse["2"] = "..---X"
	morse["3"] = "...--X"
	morse["4"] = "....-X"
	morse["5"] = ".....X"
	morse["6"] = "-....X"
	morse["7"] = "--...X"
	morse["8"] = "---..X"
	morse["9"] = "----.X"
	morse["."] = ".-.-.-X"
	morse[","] = "--..--X"
	morse["?"] = "..--..X"
	morse["-"] = "-....-X"
	morse["/"] = "-..-.X"
	morse[":"] = "---...X"
	morse["'"] = ".----.X"
	morse["-"] = "-....-X"
	morse[")"] = "-.--.-X"
	morse[";"] = "-.-.-X"
	morse["("] = "-.--.X"
	morse["="] = "-...-X"
	morse["@"] = ".--.-.X"
	morse[" "] = "?"
}{
	for (i=1;i<=NF;i++) 
		printf "%s", morse[toupper($i)] # index into the array with the character we need
}
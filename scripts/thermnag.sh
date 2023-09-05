#!/bin/sh

# ThunderHTMLedit nag-remover v0.0.1
# made with <3 from moth.monster

# SPDX-License-Identifier: WTFPL

#"Add-ons are just Zip files with JavaScript code and HTML/CSS inside. They are by definition open source. Use any Zip/7Zip program of your choice to inspect the code of the add-on."
# - Jörg of betterbird.eu, creators of ThunderHTMLedit

if [ ! "$1" ]; then # check for clueless users and print usage info
	printf %s'\n' 'ThunderHTMLedit nag-remover v0.0.1'
	printf %s'\n' 'USAGE: thermnag.sh (ThunderHTMLEdit.xpi)'
	exit
fi

tmpdir=$(mktemp -d) # get a temporary directory
unzip "$1" -d "$tmpdir" # unzip everything
sed -i 's/CheckLicense();//g' "$tmpdir/content/thunderHTMLedit-composer.js" # remove license check nag
(cd "$tmpdir" && zip -1 -r 'patched.xpi' .) # subshell so we don't get junk paths, -1 because https://stackoverflow.com/questions/30865644/
cp "$tmpdir/patched.xpi" patched.xpi # return final file
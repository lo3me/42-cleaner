#!/bin/bash
cd ~/Library/Caches
dir="com.google.SoftwareUpdate"

if du -sh * | sort -rh | head -7 | grep $dir -q
then
	echo "Deleting Chrome previous update caches"
	rm -rf $dir
	echo "$dir successfully deleted"
else
	echo "$dir not found in your caches"
	echo "---"
	du -sh * | sort -rh | head -7
fi

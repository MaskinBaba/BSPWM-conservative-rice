# bin/bash

csource="$(pactl get-source-mute @DEFAULT_SOURCE@)"

if [[ $csource == *"yes"* ]]; then
	echo "  | "
else
	echo " "
fi

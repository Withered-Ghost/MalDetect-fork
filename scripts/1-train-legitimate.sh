#!/usr/bin/env bash

# tcpreplay legitimate traffic to LO

printf '%s' "Starting replay at $MBPS Mbps..."
printf '%(%a %d %b  - %l:%M %p)T\n' "-1"

for file in ../data/labelled/legitimate/*; do
	if command -v tcpreplay &>/dev/null; then
		tcpreplay -i lo --mbps="$MBPS" -l 1 -W "$file" &> /dev/null
	else
		echo "tcpreplay not found in PATH"
	fi
done

printf '%s' "Finished..."
printf '%(%a %d %b  - %l:%M %p)T\n' "-1"


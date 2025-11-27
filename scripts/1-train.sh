#!/usr/bin/env bash

# tcpreplay labelled traffic to LO

printf '%(%a %d %b  - %l:%M %p)T %s\n' "Training OnlineRF..."
printf '%(%a %d %b  - %l:%M %p)T %s\n' "Starting replay at $MBPS Mbps..."

for file in ../data/labelled/legitimate/*; do
	if command -v tcpreplay &>/dev/null; then
		tcpreplay -i lo --mbps="$MBPS" -l 1 -W "$file" &> /dev/null
	else
		echo "tcpreplay not found in PATH"
	fi
done

for file in ../data/labelled/malicious/*; do
	if command -v tcpreplay &>/dev/null; then
		tcpreplay -i lo --mbps="$MBPS" -l 1 -W "$file" &> /dev/null
	else
		echo "tcpreplay not found in PATH"
	fi
done

printf '%(%a %d %b  - %l:%M %p)T %s\n' "Training finished..."


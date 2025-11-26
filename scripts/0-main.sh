#!/usr/bin/env bash

# master file to play all traffic

MBPS=1000

. ./1-train-legitimate.sh
echo "Done replaying legitimate training traffic"

. ./2-train-botnet.sh
echo "Done replaying malicious training traffic"


#!/bin/bash
SN=$(ps aux | rg "\./bot.py" | wc -l)
if [[ "$SN" -lt "2" ]]; then
	cd /xf/Bot-Bounty
	[[ -f ./nohup.out ]] && rm ./nohup.out
	nohup python3 ./bot.py 2>&1 >nohup.out & disown
	exit 0
else
	echo "Already running"
	exit 0
fi

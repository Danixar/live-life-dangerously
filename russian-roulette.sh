#!/bin/zsh

echo "MEET YOUR DOOM! ${CHANCE}"
		echo $HOME

russianRoulette(){
	NUM=$(echo $((1 + $RANDOM % 1000)))
	if [[ "$NUM" -le "${CHANCE}" ]]; then 
		echo "what a thought!"
	fi
}

russianRoulette $1
#!/bin/bash

PART1="/tmp/chat_pipe"

[ -p $PART1 ] || mkfifo $PART1

while true
do
    read -p "Participante 1: " mensaje
    echo "$mensaje" > $PART1
done

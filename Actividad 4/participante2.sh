#!/bin/bash

PART2="/tmp/chat_pipe"

[ -p $PART2 ] || mkfifo $PART2

while true
do
    read -p "Participante 2: " mensaje
    echo "$mensaje" > $PART2
done
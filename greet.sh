#!/bin/bash
echo "Как тебя зовут?"
read name

echo "Привет, $name! Сегодня $(date)"

LOG_FILE="$HOME/log/greet.log"
mkdir -p "$(dirname "$LOG_FILE")"
echo "$(date) - поздоровался с $name" >> "$LOG_FILE"

#!/bin/bash
LOGFILE="/var/log/myapp/test.log"
mkdir -p "$(dirname "$LOGFILE")"
echo "$(date) - Скрипт отработал" >> "$LOGFILE"

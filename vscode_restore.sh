#!/bin/bash

echo "VSCode Restorerer"

COMMAND[0]=$( which code )
COMMAND[1]=--install-extension

cat VSfile | tr -d '\r' | while read -r id; do
  COMMAND[2]=$id
  "${COMMAND[@]}"
done

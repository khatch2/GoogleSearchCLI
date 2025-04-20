#!/bin/bash

echo "Enter your search query: "
read query

url="https://www.google.com/search?q=${query// /+}"

command="start \"$url\""

eval $command
echo "Searching for: $query"

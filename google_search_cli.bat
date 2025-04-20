@echo off
setlocal enabledelayedexpansion

set /p query="Enter your search query: "
set "url=https://www.google.com/search?q=%query: =+%"

start "" "%url%"
echo Searching for: %query%

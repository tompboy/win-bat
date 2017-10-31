@echo off
rem Get IP's pre 3 numbers in file ip.txt.
for /f "delims=. tokens=1-3" %i in (ip.txt) do echo %i.%j.%k>>ip3.txt
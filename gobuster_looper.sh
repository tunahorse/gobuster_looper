#!/bin/bash
echo Feed me a textfile
read file
echo "Your file is $file"
echo point me to a wordlist
read wordlist
while read -r line; do echo "Busting $line"; done < $file
while read -r line; do gobuster dir --wildcard -u $line -w $wordlist -e -k; done < $file > gobuster_results.txt
echo "Done, results saved to gobuster_results.txt"

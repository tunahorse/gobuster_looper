#!/bin/bash
echo Feed me a textfile
read file
echo "Your file is $file"

while read -r line; do echo "Busting $line"; done < $file
while read -r line; do gobuster dir --wildcard -u $line -w /root/wfuzz/wordlist/general/common.txt -e -k -s 200; done < $file > gobuster_results.txt
echo "Done, results saved to gobuster_results.txt "
~


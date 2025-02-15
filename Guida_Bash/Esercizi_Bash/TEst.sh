#!/bin/bash

for file in /home /etc/passwd /root/fic.txt
do
    file $file
done
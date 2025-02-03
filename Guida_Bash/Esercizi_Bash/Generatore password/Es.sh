#!/bin/bash

Password1=${RANDOM}
echo "Password_1: $Password1"

Password2=$(date +%s)
echo "Password_2: $Password2"

Password3=$( (date +%s+%N) | sha256sum | head -c10)
echo "Password_3: ${Password3}"
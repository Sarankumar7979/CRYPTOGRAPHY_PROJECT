#!/bin/bash

gcc main.c SHA_256.c -o crypto #or use clang

if [ $? -ne 0 ]; then
    echo "Compilation failed"
    exit 1
fi

echo "Compilation successful."
echo "Running tests..."

# proper mapping (index must match C switch cases)
algos=("SHA256" "AES" "DES" "RSA")

echo " "
for algo in "${algos[@]}"
do
    echo "Running $algo algorithm ..."
    ./crypto "$algo" test.txt
    echo " "
done

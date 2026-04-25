#!/bin/bash

gcc main.c SHA_256.c AES.c DES.c RSA.c -o crypto #or use clang

if [ $? -ne 0 ]; then
    echo "Compilation failed"
    exit 1
fi

echo "Compilation successful. Running tests..."

# proper mapping (index must match C switch cases)
algos=("SHA-256" "AES" "DES" "RSA")

for i in "${!algos[@]}"
do
    echo "Running ${algos[$i]}..."
    ./crypto "$i" test.txt
done

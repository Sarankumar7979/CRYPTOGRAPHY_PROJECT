#!/bash/bin

gcc main.c SHA_256 AES DES RSA -o crypto  #or use clang

for ((i=0;i<5;i++))
do
./crypto i test.txt 
done

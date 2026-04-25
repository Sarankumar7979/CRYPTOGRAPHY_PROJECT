#!/bash/bin

gcc main.c SHA_256 AES DES RSA -o crypto

./crypto (selector_algo) test.txt 

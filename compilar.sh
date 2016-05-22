#!/bin/bash

banh=0
banm=0
mod=60
while [ $banh = 0 ];do
echo "Introduzca el nombre del archivo .asm(sin el .asm):"
read archivo
if [ $archivo != " " ];then
banh=1
fi
done
lst=$archivo".lst"
asm=$archivo".asm"
nasm -f elf64 -l $lst $asm 
gcc -m64 -o $archivo $archivo".o"
./$archivo > $archivo".out"
cat $archivo".out"

#!/bin/bash

# Usage: ./resize_many.sh <filename> <sizes...>
# e.g. ./resize_many.sh myasset.png 10x10 20x20 30x30
#      produces 3 files, myasset10x10.png myasset20x20.png myasset30x30.png

sizes=("1920x1080" "1999x1125" "991x557" "230x129" "767x431" "535x301" "1070x602" "575x323")
names_sizes=("" "_lg" "_md" "_placehold" "_sm" "_thumb" "_thumb@2x" "_xs")

fullname=$1

#shift;
#sizes=$*
extension="${fullname##*.}"
filename="${fullname%.*}"


for ((i=0;i<${#sizes[@]};++i)) do
    convert $fullname -resize ${sizes[i]} $filename${names_sizes[i]}.$extension
    echo "${sizes[i]} ${name_sizes[i]}.$extension"
done

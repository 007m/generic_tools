#!/bin/bash


file_loc="/home/computeruse/downloaded_file.com"

part1="https://secure.eicar.org/"
part2="eicar"
part3=".com"


url="${part1}${part2}${part3}"


curl -o "$file_loc" "$url"


cat "$file_loc"


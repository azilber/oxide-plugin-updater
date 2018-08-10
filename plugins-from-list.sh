#!/bin/bash

LIST='/tmp/plugins.txt'


while read item; do
echo "Downloading  ${item}...."
wget https://umod.org/plugins/${item} -O ~/serverfiles/oxide/plugins/${item}
done < ${LIST}

echo "Finished"

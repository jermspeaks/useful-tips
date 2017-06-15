#!/bin/bash

for file in *.mkv; do 
	dir="${file%%.*}"
	echo "Processing $dir file.."
	sudo mkdir -p $dir
	sudo mv "$file" "$dir"
done

#!/bin/sh

for filename in /home/yogita/files/*; do
	gzip -c "$filename" > "$filename".gz
done

for filename in /home/yogita/files/*.gz; do
	gunzip -c "$filename" > "$filename".txt
done

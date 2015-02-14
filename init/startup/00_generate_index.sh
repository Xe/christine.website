#!/bin/bash

set -e

cd /tmp
wget http://www.frykholm.se/files/markdown.lua

cd /app/src/blog

IFS='
'

for file in $(ls -t)
do
	title=$(head -n1 $file)
	line=$(head -n4 $file | tail -n1 | lua /tmp/markdown.lua -n)
	linkname=$(echo $file | awk -F "." '{print $1}')

	echo '<div class="post"><h2>'"$title"'</h2>'"$line"'<a href="/blog/'"$linkname"'">Read More</a></div>' >> /app/src/static/markdown/blog.html
	echo "generated info for $file"
done

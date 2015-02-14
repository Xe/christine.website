#!/bin/bash

set -e

cd /app/src/blog

IFS='
'

for file in $(ls -t)
do
	title=$(head -n1 $file)
	line=$(head -n4 $file | tail -n1)
	linkname=$(echo $file | awk -F "." '{print $1}')

	echo '<div class="post"><h2>'"$title"'</h2><p>'"$line"'...</p><a href="/blog/'"$linkname"'">Read More</a></div>' >> /app/src/static/markdown/blog.html
	echo "generated info for $file"
done

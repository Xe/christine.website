#!/bin/bash

set -e

cd /app/src/blog

export LOCATION=/app/src/static/markdown/blog.html

echo '<div class="row">' >> $LOCATION

for file in $(ls -t)
do
	title=$(head -n1 $file)
	line=$(moon /app/src/init/summary.moon $file)
	linkname=$(echo $file | awk -F "." '{print $1}')

	[[ -z "$line" ]] && false

	echo '<div class="col-md-12 post"><h2>'"$title"'</h2>'"$line"'<a href="/blog/'"$linkname"'">Read More</a></div>' >> $LOCATION
done
echo '</div>' >> $LOCATION

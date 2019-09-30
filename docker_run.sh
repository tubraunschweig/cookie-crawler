#!/bin/bash

url_hash=$(echo "$URL" | sha512sum | sed 's/  -//')
echo "url_hash: $url_hash"
unique_filename="$url_hash-$RANDOM.csv"
echo "unique_filename: $unique_filename"

echo "$URL" > sites.txt

npm start

cp cookies.csv "/cookie-crawler/results/$unique_filename"

mkdir -p parallel-output
cat all_sites.txt | xargs  -n 1 -P 2 -I{} sudo docker run -i -e URL={} -v $(realpath parallel-output):/cookie-crawler/results cookie-crawler

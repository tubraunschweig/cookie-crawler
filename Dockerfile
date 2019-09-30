FROM node:12

RUN mkdir /cookie-crawler && mkdir /cookie-crawler/cache && mkdir /cookie-crawler/results
WORKDIR /cookie-crawler
COPY . /cookie-crawler
RUN npm i
ENV PATH="${PATH}:/cookie-crawler/node_modules/.bin"
ENTRYPOINT "/cookie-crawler/docker_run.sh"

#sudo docker build -t cookie-crawler .
#sudo docker run -it -e URL=http://apollo.pfi.ing.tu-bs.de/index.php/forschung-2 -v $(realpath .):/cookie-crawler/results cookie-crawler

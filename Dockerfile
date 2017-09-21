FROM node:alpine

RUN mkdir -p /app
WORKDIR /app
COPY . /app

RUN ls
RUN sh build.sh

EXPOSE 4000
CMD ["node", "--experimental-modules", "/app/bin/www.mjs"]

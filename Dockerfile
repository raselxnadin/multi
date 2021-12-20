FROM node:lts-buster

RUN apt-get update && \
  apt-get install -y \
  ffmpeg \
  imagemagick \
  webp && \
  apt-get upgrade -y && \
  rm -rf /var/src/apt/lists/*

COPY package.json .

RUN npm i

COPY . .

EXPOSE 5000

CMD ["npm", "start"]

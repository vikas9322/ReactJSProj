FROM node:alpine

WORKDIR /var/app

COPY ./package.json ./
RUN npm install
COPY ./ ./
RUN npm run build

FROM nginx
EXPOSE 80
COPY /var/app /usr/share/nginx/html



#CMD [ "npm","run","start" ]
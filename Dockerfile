FROM node:alpine
WORKDIR '/app'
<<<<<<< HEAD
COPY package*.json ./
=======
COPY package.json ./
>>>>>>> 312124eb22b952308cfb321e7382a5f069e3b8c2
RUN npm install
COPY ./ ./
RUN npm run build


FROM nginx
<<<<<<< HEAD
EXPOSE 80
=======
>>>>>>> 312124eb22b952308cfb321e7382a5f069e3b8c2
COPY --from=0 /app/build /usr/share/nginx/html

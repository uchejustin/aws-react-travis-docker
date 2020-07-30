FROM node:alpine as buildphase
WORKDIR '/app'
COPY package*.json ./
RUN npm install
COPY . .
RUN npm run build


FROM nginx
EXPOSE 80
COPY --from=buildphase /app/build /usr/share/nginx/html

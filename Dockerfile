FROM node:22 as build

ARG NODE_ENV
ENV NODE_ENV=${NODE_ENV}

ARG mode
ENV VITE_MODE=${mode}


WORKDIR /app

COPY package*.json .

RUN npm install --prefer-offline --no-audit --progress=false

COPY . .

RUN npm run build

FROM nginx:alpine

COPY --from=build /app/dist /usr/share/nginx/html

EXPOSE 80

CMD [ "nginx", "-g", "daemon off;" ]
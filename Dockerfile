# FROM node:16

# ENV NODE_ENV development

# WORKDIR /index

# COPY . . 

# EXPOSE 3000

# RUN npm install -g serve

# CMD ["serve", "-s", "build"]

FROM amd64/node

RUN npm install -g serve --force

WORKDIR /app

COPY ./build/ .

CMD ["serve", "-p", "9000", "-s", "."]

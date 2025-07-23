FROM node:18-alpine

WORKDIR .

COPY app/package*.json ./
COPY app/. ./
RUN npm install

COPY . .

EXPOSE 3000
CMD ["npm", "start"]

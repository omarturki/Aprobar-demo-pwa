FROM node:18-alpine

WORKDIR /app
COPY . .

WORKDIR /app/backend
RUN npm install express

EXPOSE 8080
CMD ["node", "server.js"]

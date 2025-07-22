FROM node:18-alpine

WORKDIR /app
COPY . .

WORKDIR /app/backend
COPY backend/package*.json ./
RUN npm install

EXPOSE 8080
CMD ["node", "server.js"]

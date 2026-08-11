# Lightweight Node.js image ka use kar rahe hain
FROM node:18-alpine

# Container ke andar working directory set kar rahe hain
WORKDIR /app

# Pehle package.json copy karo taaki dependencies install ho sakein
COPY package.json ./

# Dependencies (express) install karo
RUN npm install

# Ab baaki saari files (server.js, index.html) container mein copy karo
COPY . .

# Render ke liye port 3000 expose karo
EXPOSE 3000

# App ko start karne ka command
CMD ["node", "server.js"]
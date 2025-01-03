# 1. Use Node.js image
FROM node:18

# 2. Set working directory
WORKDIR /app

# 3. Install dependencies
COPY package.json package-lock.json ./
RUN npm install

# 4. Copy source code
COPY . .

# 5. Build Next.js app
RUN npm run build

# 6. Start the app
CMD ["npm", "start"]

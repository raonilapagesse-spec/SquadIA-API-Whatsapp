FROM node:20-alpine
WORKDIR /app
ENV NODE_ENV=production
ENV BRIDGE_DATA_DIR=/data/sessions
COPY package.json ./
RUN npm install --omit=dev
COPY server.js ./
EXPOSE 8080
CMD ["node", "server.js"]
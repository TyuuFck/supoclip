FROM node:18-alpine AS base
WORKDIR /app
COPY frontend/package*.json ./frontend/
RUN cd frontend && npm install
COPY frontend/ ./frontend/
RUN cd frontend && npm run build
EXPOSE 3000
CMD ["npm", "--prefix", "frontend", "run", "start"]

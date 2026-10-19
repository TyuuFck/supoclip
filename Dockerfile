FROM node:22-alpine
WORKDIR /app
COPY frontend/package*.json ./frontend/
COPY frontend/prisma/ ./frontend/prisma/
RUN cd frontend && npm install --ignore-scripts
COPY frontend/ ./frontend/
RUN cd frontend && npm run build

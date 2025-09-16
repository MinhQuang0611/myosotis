# Dockerfile for Frontend Service
FROM node:22

# Thiết lập thư mục làm việc
WORKDIR /app

# Copy package.json và package-lock.json
COPY package*.json ./

# Cài dependencies
RUN npm install --force

# Copy toàn bộ source code vào container
COPY . .

# Expose port ứng dụng chạy
EXPOSE 5173

# Chạy ứng dụng ở chế độ phát triển
CMD ["npm", "run", "dev", "--", "--host", "0.0.0.0"]
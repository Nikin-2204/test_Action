# Sử dụng image chính của Node.js từ Docker Hub
FROM node:14

# Thiết lập thư mục làm việc trong container
WORKDIR /app

# Sao chép file package.json và package-lock.json (nếu có)
COPY package*.json ./

# Cài đặt các package yêu cầu
RUN npm install

# Sao chép toàn bộ mã nguồn vào container
COPY . .

# Lắng nghe trên cổng 3000
EXPOSE 443

# Khởi động ứng dụng
CMD ["npm", "start"]

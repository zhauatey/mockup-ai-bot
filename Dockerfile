# Используем официальный образ Node.js
FROM node:16

# Устанавливаем рабочую директорию
WORKDIR /app

# Копируем package.json и устанавливаем зависимости
COPY package*.json ./
RUN npm install

# Копируем все файлы проекта
COPY . .

# Открываем порт для приложения
EXPOSE 3000

# Запуск приложения
CMD ["npm", "start"]

# Указываем базовый образ
FROM node:16

# Устанавливаем рабочую директорию
WORKDIR /usr/src/app

# Копируем package.json и package-lock.json
COPY package*.json ./

# Устанавливаем зависимости
RUN npm install

# Копируем остальной код
COPY . .

# Указываем порт
EXPOSE 3000

# Запускаем приложение
CMD ["node", "index.js"]

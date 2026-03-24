FROM nginx:alpine

# Копируем конфиг nginx
COPY nginx/nginx.conf /etc/nginx/conf.d/default.conf

# Копируем фронтенд-файлы в папку nginx
COPY src/ /usr/share/nginx/html/

# Открываем порт
EXPOSE 80

# nginx запускается автоматически
CMD ["nginx", "-g", "daemon off;"]

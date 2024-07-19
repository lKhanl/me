# Nginx için alpine tabanlı bir imaj kullanın
FROM nginx:alpine

# Nginx yapılandırma dosyasını kopyalayın
COPY default.conf /etc/nginx/conf.d/default.conf

# HTML dosyalarını Nginx'in varsayılan klasörüne kopyalayın
COPY index.html /usr/share/nginx/html/index.html

# assets klasörünü Nginx'in varsayılan klasörüne kopyalayın
COPY assets /usr/share/nginx/html/assets

# 3500 portunda Nginx'in dinlemesini sağlayın
EXPOSE 3500

# Nginx'i çalıştırın
CMD ["nginx", "-g", "daemon off;"]

FROM nginx:alpine
COPY index.html /usr/share/nginx/html/index.html
COPY public/steamlink-android.apk /usr/share/nginx/html/steamlink-android.apk
COPY nginx.conf /etc/nginx/conf.d/default.conf

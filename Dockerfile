FROM nginx:alpine

COPY tetris.html /www/tetris.html
COPY tetris.js /www/tetris.js
COPY tetris.css /www/tetris.css

COPY nginx.conf /etc/nginx/conf.d/default.conf

EXPOSE 80

CMD (tail -F /var/log/nginx/access.log &) && exec nginx -g "daemon off;"

echo $CONFIG > data.json
mustache data.json add-user.sh.mustache > add-user.sh
mustache data.json nginx.conf.mustache > /etc/nginx/nginx.conf
chmod +x add-user.sh
./add-user.sh
nginx -g 'daemon off;'

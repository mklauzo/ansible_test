docker container run -p 90:80 -d --name Mac-nginx nginx
docker container run -p 9090:80 -d --name Mac-http httpd
docker container run -p 3306:3306 --env MYSQL_RANDOM_ROOT_PASSWORD=yes -d --name Mac-sql mysql

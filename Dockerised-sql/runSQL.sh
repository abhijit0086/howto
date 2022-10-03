# docker run --name db-mysql \
# -v /home/wnsuser/sql-data:/var/lib/mysql  \
# -p 3306:3306 \
# -e MYSQL_ROOT_PASSWORD=my-secret-pw \
# -dit mysql


## with envfile pls check if other container is using the file location, this will be easy to maintian the password.
## and the run the command.
docker run --name some-mysql \
-v /home/wnsuser/sql-data:/var/lib/mysql  \
-p 3306:3306 \
--envfile .envfile-SQL \
-dit mysql
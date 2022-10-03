## To run the mysql container
## Prequisites
* Install Docker 
* Docker image "mysql:latest" or any specific image required from docker hub.
* Any Folder on host to persist data of container_mysql.
  
## Steps
### Step 1. Pulling image from docker hub
$ docker pull mysql:latest

### Step 2. Run the image into a container
* Docker command to run container in file "cat runSQL.sh"
```
docker run --name some-mysql \
-v /home/wnsuser/sql-data:/var/lib/mysql  \
-p 3306:3306 \
--envfile .envfile-SQL \
-dit mysql
```
* You can edit the runSQL.sh as per the requirement
  * Add the file path where container data needs to be stored.
    * eg: -v hostpath:containerpath
      * -v /home/wnsuser/sql-data:/var/lib/mysql
  * Change the port no of your host as required
    * For current use we are using same port for host.
    * syntax: `-p hostport:containerport`
      * `-p 3306:3306`
  * edit the environment file as per your requirement, we have set only password for root.
    * add argument  `--envfile filelocation` to use environment variables from file.
    * `--envfile .envfile-SQL` here filelocation is same where docker command is run.
  * You can select the image version as required.

## Accessing container
### Step 1. Get inside docker
docker exec -it some-mysql bash

### Step 2. Login to mysql
># mysql -u root -p
># my-secret-pw

### Step 3. Create user for remote access
CREATE USER 'wnsuser1'@'%' IDENTIFIED BY 'wnspassword1';
GRANT ALL PRIVILEGES ON *.* TO 'wnsuser1'@'%';
flush privileges;


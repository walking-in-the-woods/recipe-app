# create a container with a volume in WSL2
# sudo docker run --name mysqldb -p 3306:3306 -v /var/lib/as/:/var/lib/mysql -e MYSQL_ALLOW_EMPTY_PASSWORD=yes -d mysql

# connect to mysql and run as root user
# create databases
CREATE DATABASE as_dev;
CREATE DATABASE as_prod;

# create database service accounts
CREATE USER 'as_dev_user'@'localhost' IDENTIFIED BY 'as';
CREATE USER 'as_prod_user'@'localhost' IDENTIFIED BY 'as';
CREATE USER 'as_dev_user'@'%' IDENTIFIED BY 'as';
CREATE USER 'as_prod_user'@'%' IDENTIFIED BY 'as';

# database grants
GRANT SELECT ON as_dev.* to 'as_dev_user'@'localhost';
GRANT INSERT ON as_dev.* to 'as_dev_user'@'localhost';
GRANT DELETE ON as_dev.* to 'as_dev_user'@'localhost';
GRANT UPDATE ON as_dev.* to 'as_dev_user'@'localhost';
GRANT SELECT ON as_prod.* to 'as_prod_user'@'localhost';
GRANT INSERT ON as_prod.* to 'as_prod_user'@'localhost';
GRANT DELETE ON as_prod.* to 'as_prod_user'@'localhost';
GRANT UPDATE ON as_prod.* to 'as_prod_user'@'localhost';
GRANT SELECT ON as_dev.* to 'as_dev_user'@'%';
GRANT INSERT ON as_dev.* to 'as_dev_user'@'%';
GRANT DELETE ON as_dev.* to 'as_dev_user'@'%';
GRANT UPDATE ON as_dev.* to 'as_dev_user'@'%';
GRANT SELECT ON as_prod.* to 'as_prod_user'@'%';
GRANT INSERT ON as_prod.* to 'as_prod_user'@'%';
GRANT DELETE ON as_prod.* to 'as_prod_user'@'%';
GRANT UPDATE ON as_prod.* to 'as_prod_user'@'%';
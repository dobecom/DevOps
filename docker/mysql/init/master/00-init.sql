CREATE USER 'slave_access'@'%' identified BY 'custompassword';
GRANT replication slave ON *.* TO 'slave_access'@'%' WITH GRANT OPTION;

CREATE USER 'dobecom'@'172.%' identified BY 'custompassword';
CREATE USER 'dobecom'@'192.%' identified BY 'custompassword';
GRANT ALL PRIVILEGES ON *.* TO 'dobecom'@'172.%';
GRANT ALL PRIVILEGES ON *.* TO 'dobecom'@'192.%';

flush PRIVILEGES;

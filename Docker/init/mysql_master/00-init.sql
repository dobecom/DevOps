CREATE USER 'slave_access'@'%' identified BY '1234qwer!';
GRANT replication slave ON *.* TO 'slave_access'@'%' WITH GRANT OPTION;

CREATE USER 'dobecom'@'172.%' identified BY '1234qwer!';
CREATE USER 'dobecom'@'192.%' identified BY '1234qwer!';
GRANT ALL PRIVILEGES ON dobecom.* TO 'dobecom'@'172.%';
GRANT ALL PRIVILEGES ON dobecom.* TO 'dobecom'@'192.%';

flush PRIVILEGES;

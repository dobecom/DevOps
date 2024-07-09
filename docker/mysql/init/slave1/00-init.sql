CHANGE MASTER TO
    MASTER_HOST = '172.20.0.151'
    , MASTER_USER = 'slave_access'
    , MASTER_PASSWORD = 'custompassword'
    , MASTER_AUTO_POSITION = 1;

START SLAVE;

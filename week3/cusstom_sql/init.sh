# #!/bin/bash

export MYSQL_ROOT_PASSWORD=mysecretpassword

set -e

echo "Creating database"
mysql -u root -p"${MYSQL_ROOT_PASSWORD}" -e "CREATE DATABASE IF NOT EXISTS MyWordPressTest;"

echo "Creating table"
mysql -u root -p"${MYSQL_ROOT_PASSWORD}" MyWordPressTest <<EOF
CREATE TABLE IF NOT EXISTS test (
    id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    myval VARCHAR(255) NOT NULL
);
EOF

echo "Inserting data"
mysql -u root -p"${MYSQL_ROOT_PASSWORD}" MyWordPressTest <<EOF
INSERT INTO test (myval) VALUES ('toto'), ('pipo'), ('bingo');
EOF

echo "Initialization completed"



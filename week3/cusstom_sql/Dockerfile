FROM mysql

ENV MYSQL_ROOT_PASSWORD=wordsec
ENV MYSQL_DATABASE=MyWordPressTest
ENV MYSQL_USER=MyWordPressTest
ENV MYSQL_PASSWORD=wordsec

COPY init.sh /docker-entrypoint-initdb.d/
RUN chmod +x /docker-entrypoint-initdb.d/init.sh

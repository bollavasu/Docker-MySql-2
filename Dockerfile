FROM mysql

ENV MYSQL_ROOT_PASSWORD root
ENV MYSQL_DATABASE vasu
ENV MYSQL_USER mysql
ENV MYSQL_PASSWORD mysql

# All scripts in docker-entrypoint-initdb.d/ are automatically executed during container startup
COPY sql-scripts.sql /docker-entrypoint-initdb.d/

EXPOSE 3306
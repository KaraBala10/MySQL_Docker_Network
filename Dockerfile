# Use the official MySQL image from the Docker Hub
FROM mysql:8.0

# Copy a custom SQL script to initialize the database with specific credentials
COPY ./init.sql /docker-entrypoint-initdb.d/

# Expose MySQL port
EXPOSE 3306

# Run the MySQL server
CMD ["mysqld"]

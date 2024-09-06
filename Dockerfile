# Use the MySQL base image
FROM mysql:8.0.33

# Set environment variables
ENV MYSQL_ROOT_PASSWORD=password

# Add the command to set the SQL mode
CMD ["--sql_mode=STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION"]

# Expose the port
EXPOSE 3306

FROM openjdk:8u151-jdk-alpine3.7

# Create non-root user
RUN adduser -D imagebuilder

# Switch to non-root user
USER imagebuilder

# Expose application port
EXPOSE 8070

# Set working directory
WORKDIR /usr/app

# Copy JAR file
COPY target/shopping-cart*.jar app.jar

# Run application
CMD ["java", "-jar", "app.jar"]

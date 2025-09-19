FROM alpine:latest

ENTRYPOINT ["java", "-jar", "/app.jar"]
ADD . /app
WORKDIR /app
EXPOSE 8081
VOLUME /app/logs
# Install OpenJDK 17
RUN apk add --no-cache openjdk17

# Set working directory
WORKDIR /app

# Copy your JAR file
COPY target/medilabo-demographics-0.0.1-SNAPSHOT.jar app.jar

# Run the application
ENTRYPOINT ["java", "-jar", "app.jar"]

CMD npm run start

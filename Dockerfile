FROM alpine:latest

ENTRYPOINT ["java", "-jar", "/app.jar"]
ADD . /app
WORKDIR /app
RUN npm install
EXPOSE 8081
VOLUME /app/logs

CMD npm run start

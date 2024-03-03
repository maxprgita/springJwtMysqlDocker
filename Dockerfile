
FROM openjdk:17-jdk-slim

RUN mkdir /app

COPY securityJWT-0.0.1-SNAPSHOT.jar /app/securityJWT-0.0.1-SNAPSHOT.jar
COPY user.sql /app/user.sql

WORKDIR /app

EXPOSE 8080

CMD ["java", "-jar", "securityJWT-0.0.1-SNAPSHOT.jar"]

FROM java:8-jre-alpine
MAINTAINER Alexander Lukyanchikov <sqshq@sqshq.com>

ADD ./target/notification-service.jar /app/

RUN apk add --no-cache curl

CMD ["java", "-Xmx200m", "-jar", "/app/notification-service.jar"]

EXPOSE 8000
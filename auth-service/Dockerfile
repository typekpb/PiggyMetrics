FROM java:8-jre-alpine
MAINTAINER Alexander Lukyanchikov <sqshq@sqshq.com>

ADD ./target/auth-service.jar /app/

RUN apk add --no-cache curl

CMD ["java", "-Xmx200m", "-jar", "/app/auth-service.jar"]

EXPOSE 5000
FROM java:8-jre-alpine
MAINTAINER Alexander Lukyanchikov <sqshq@sqshq.com>

ADD ./target/monitoring.jar /app/

RUN apk add --no-cache curl

CMD ["java", "-Xmx200m", "-jar", "/app/monitoring.jar"]

EXPOSE 8080
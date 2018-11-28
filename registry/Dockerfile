FROM java:8-jre-alpine
MAINTAINER Alexander Lukyanchikov <sqshq@sqshq.com>

ADD ./target/registry.jar /app/

RUN apk add --no-cache curl

CMD ["java", "-Xmx200m", "-jar", "/app/registry.jar"]

EXPOSE 8761
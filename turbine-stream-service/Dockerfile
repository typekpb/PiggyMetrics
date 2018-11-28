FROM java:8-jre-alpine
MAINTAINER Chi Dov <d.chiproeng@gmail.com>

ADD ./target/turbine-stream-service.jar /app/

RUN apk add --no-cache curl

CMD ["java", "-Xmx200m", "-jar", "/app/turbine-stream-service.jar"]

EXPOSE 8989
FROM openjdk:14.0.2-jdk

VOLUME /tmp

EXPOSE 8080

COPY /target/carShop.jar carShop.jar

COPY wait-for-it.sh /wait-for-it.sh

RUN chmod +x /wait-for-it.sh

HEALTHCHECK CMD curl --fail http://localhost:8080/health || exit 1

CMD  ["java","-jar","-Dspring.profiles.active=prod","carShop.jar"]

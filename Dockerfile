# This is first test on docker
FROM    maven:3.3.1-jdk-17

RUN     mkdir /docker

WORKDIR /docker

COPY    pom.xml .
RUN     mvn dependency:resolve

COPY    src .

RUN     mvn clean verify

EXPOSE 8080
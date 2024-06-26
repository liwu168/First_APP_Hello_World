# This is first test on docker
FROM    maven:3.6.0-jdk-8

RUN     mkdir /docker

WORKDIR /docker

COPY    pom.xml .
RUN     mvn dependency:resolve

COPY    src .

RUN     mvn clean verify

EXPOSE 3000
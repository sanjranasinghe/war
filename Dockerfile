FROM openjdk:8u222-jre-slim
RUN mkdir /opt/micro/
WORKDIR /opt/micro/
COPY ./sanjaya-0.0.1-SNAPSHOT.war  /opt/micro/lib/
EXPOSE 8080
ENTRYPOINT ["/usr/local/openjdk-8/bin/java"]
CMD ["-jar", "-Xmx100m", "-Xss512k", "sanjaya-0.0.1-SNAPSHOT.war"]

# This is your Editor pane. Write the Dockerfile here and 
# use the command line to execute commands
FROM maven:3.6.2-jdk-11 as maven

COPY ./pom.xml ./pom.xml

RUN mvn dependency:go-offline -B

COPY ./src ./src

RUN mvn package

FROM openjdk

WORKDIR ./

COPY --from=maven target/coaf-*.jar ./

EXPOSE 8080
CMD ["java", "-jar", "coaf-0.0.1-SNAPSHOT.jar"]
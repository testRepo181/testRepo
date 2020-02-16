# Start with 
FROM openjdk:8u212-jdk-slim
#Add a volume
VOLUME /tmp
#Make port
EXPOSE 8083
#Application's jar file when packaged
ARG JAR_FILE=target/user-service-0.0.1-SNAPSHOT.jar

#Add the application's jar to container
ADD ${JAR_FILE} test.jar 
#RUN the jar file
ENTRYPOINT ["java","-jar","/test.jar"]
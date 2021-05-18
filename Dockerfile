#
# Build stage
#
FROM maven:3.6.3-jdk-8
COPY . .
RUN mvn -f pom.xml clean install
RUN mvn -X exec:java -Dexec.mainClass=HelloWorldBot

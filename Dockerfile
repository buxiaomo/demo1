FROM openjdk:21-jdk-slim
ARG JAR_PATH=""
WORKDIR /app
COPY ${JAR_PATH} ./main.jar
ENV JAVA_OPTS="-Xms1024m -Xmx1024m"
CMD [ "sh", "-c", "java ${JAVA_OPTS} -jar /app/main.jar" ]

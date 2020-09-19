FROM openjdk:8-alpine

COPY src/ /usr/docker_test/src

WORKDIR /usr/docker_test/src

RUN javac JavaTest.java

CMD ["java", "JavaTest"]

#To create the image:
# docker build -t dockertestimage .

#To run the a container to show the java version executed
#docker run -it --rm --name dockertest1 dockertestimage
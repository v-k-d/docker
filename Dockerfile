#docker build -t=dockervitao/datefinder .
#FROM alpine
#ENTRYPOINT date

FROM alpine
RUN apk add openjdk8
ENV PATH $PATH:/usr/lib/jvm/java-1.8-openjdk/bin
WORKDIR /usr/share/udemy
ADD Test.java Test.java
ENTRYPOINT javac Test.java && java Test $NUMBER
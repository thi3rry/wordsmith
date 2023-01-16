#	docker build -t wordsmith-words ./
# 	docker run -p 8080:8080 -it wordsmith-words

FROM ubuntu

RUN apt-get -qq update
RUN apt-get -qq install maven openjdk-8-jdk

WORKDIR /home

ADD ./ ./
RUN mvn verify

RUN apt-get -qq remove maven


EXPOSE 8080
WORKDIR /home/target
CMD java -Xmx8m -Xms8m -jar words.jar
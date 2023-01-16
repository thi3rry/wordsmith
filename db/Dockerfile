#	docker build -t wordsmith-db ./
#	docker run -p 5432:5432 -dt wordsmith-db 
FROM postgres

#RUN mkdir /docker-entrypoint-initdb.d

ENV POSTGRES_HOST_AUTH_METHOD=trust

ADD words.sql /docker-entrypoint-initdb.d/words.sql
EXPOSE 5432
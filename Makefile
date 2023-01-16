build-db:
	docker build -t wordsmith-db ./db
build-words:
	docker build -t wordsmith-words ./words
build-web:
	docker build -t wordsmith-web ./web

run-words:
	docker run -p 8080:8080 -dt wordsmith-words 
run-db:
	docker run -p 5432:5432 -dt wordsmith-db 
run-web:
	docker run -p 8081:80 -v `pwd`/web:/app -dt wordsmith-web 

build: build-db build-words build-web 
run: run-db run-words run-web
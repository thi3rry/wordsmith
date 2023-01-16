# docker build -it wordsmith-web .
# docker run -p 8081:80 -v $(pwd):/app -it wordsmith-web
# Then visit https://localhost:8081

FROM golang

# Build the go binary and make sure it is executable
ADD ./dispatcher.go ./dispatcher.go
RUN ["go", "build", "dispatcher.go"]
RUN ["cp", "./dispatcher", "/usr/bin/dispatcher"]
RUN ["chmod", "a+x", "/usr/bin/dispatcher"]

# Prepare environment for running the binary

RUN mkdir /app
VOLUME ["/app"]
WORKDIR "/app"
EXPOSE 80
CMD dispatcher

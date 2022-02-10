FROM golang:buster

WORKDIR /app
ADD . .
RUN apt update && apt install bash
RUN go build -o app

EXPOSE 8080
CMD ["./app"]
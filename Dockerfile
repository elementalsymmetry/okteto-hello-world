FROM golang:buster

WORKDIR /app
ADD . .
RUN apk update && apk add bash
RUN go build -o app

EXPOSE 8080
CMD ["./app"]
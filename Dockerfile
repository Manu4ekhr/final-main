FROM golang:1.23

WORKDIR /app

COPY . .

RUN go mod tidy

RUN CGO_ENABLED=1 GOOS=linux GOARCH=amd64 go build

CMD ["/final-main"]


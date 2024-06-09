FROM golang:alpine AS builder

WORKDIR /app

COPY hello.go .
COPY go.mod .

RUN go build -o hello

FROM alpine

COPY --from=builder /app/hello .

CMD ["./hello"]

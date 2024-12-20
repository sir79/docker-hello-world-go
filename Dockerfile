# Build stage
FROM golang:latest AS builder

WORKDIR /app
COPY . .

RUN go build -o main main.go

# Final stage
FROM alpine:3.21.0

WORKDIR /app
COPY --from=builder /app/main .

EXPOSE 8080
CMD ["./main"]

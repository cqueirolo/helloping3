FROM golang:latest
WORKDIR /app
COPY go.mod go.sum ./
RUN go mod download
COPY main.go ./
RUN CGO_ENABLED=0 GOOS=linux go build -o /helloping3
EXPOSE 8080/tcp
CMD ["/helloping3"]

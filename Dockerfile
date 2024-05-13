FROM golang:1.20-alpine
LABEL maintainer=s2310455004@students.fh-hagenberg.at
WORKDIR /src
COPY main.go .
RUN ls
COPY go.mod ./
RUN go mod download
RUN CGO_ENABLED=0 GOOS=linux go build -o /usr/myapp
EXPOSE 8888
ENTRYPOINT ["/usr/myapp"]
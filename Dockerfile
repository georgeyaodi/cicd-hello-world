FROM  golang:1.14

ADD . /go/src/hello-app

WORKDIR /go/src/hello-app

RUN go build -o /go/src/hello-app .


CMD ["./hello-app"]

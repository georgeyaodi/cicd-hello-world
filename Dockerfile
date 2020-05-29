FROM  golang:1.14

ADD . /root/hello-app

WORKDIR /root/hello-app

RUN go build -o /root/hello-app .


CMD ["./hello-app"]

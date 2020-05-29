FROM  golang:1.14

RUN adduser -u yaodi -G root

USER yaodi
ADD . /go/src/hello-app

WORKDIR /go/src/hello-app

RUN  chown yaodi:root /go/src/hello-app
RUN go build -o /go/src/hello-app .


CMD ["./hello-app"]

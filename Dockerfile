FROM golang:alpine
WORKDIR /root/hello-app
COPY . .
RUN CGO_ENABLED=0 go build -v -o hello-app

FROM scratch
COPY --from=0 /root/hello-app/hello-app .
EXPOSE 8080
ENTRYPOINT ["/hello-app"]

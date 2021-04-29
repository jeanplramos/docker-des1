FROM scratch

WORKDIR /go/src/app
COPY ./docker-des1 .

CMD ["./docker-des1"]
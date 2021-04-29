FROM golang:1.16.3 AS builder

WORKDIR /go/src/app
COPY . .

RUN go build docker-des1.go


FROM scratch

WORKDIR /go/src/app
COPY --from=builder /go/src/app/docker-des1 .

CMD ["./docker-des1"]
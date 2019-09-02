FROM golang:1.12.5-alpine

WORKDIR /go/src/nats-stream-cqrs-sales
COPY . .

RUN go install


CMD [ "nats-stream-cqrs-sales" ]


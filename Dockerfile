FROM golang:1.19.3-alpine3.16 as builder





RUN apk --update add ca-certificates \
    && apk --update add --virtual build-deps git


WORKDIR /app


COPY ./src/ ./.
RUN go mod download


RUN go build -v -o exporter .



FROM alpine
LABEL maintainer badsmoke "dockerhub@badcloud.eu"


EXPOSE 9170

RUN addgroup exporter \
     && adduser -S -G exporter exporter \
     && apk --update --no-cache add ca-certificates

COPY --from=builder /app/exporter .

RUN chmod +x exporter



USER exporter

ENTRYPOINT ["/exporter"]
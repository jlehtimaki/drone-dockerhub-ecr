FROM golang:1.13 AS builder

RUN mkdir /build
ADD . /build/
WORKDIR /build
RUN go build

FROM docker:18.09.0-dind

COPY --from=builder /build/drone-dockerhub-ecr /bin/
ENTRYPOINT ["bin/drone-dockerhub-ecr"]
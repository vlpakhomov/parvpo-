FROM alpine:latest

COPY . .

RUN apk update && \
    apk add --no-cache git g++ libgomp

RUN  g++ -fopenmp main.cpp -o main

CMD ["./main"]

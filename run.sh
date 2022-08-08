#!/bin/bash

echo "Generating Go source code for order.proto"
#mkdir -p golang
#protoc -I ./proto \
protoc -I ./order \
    --go_out=./golang/order \
    --go_opt=paths=source_relative \
    --go-grpc_out=./golang/order \
    --go-grpc_opt=paths=source_relative \
    ./order/order.proto
#    ./proto/order.proto

echo "Generated files"
ls -al golang


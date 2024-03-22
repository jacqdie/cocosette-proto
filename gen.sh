#!/bin/bash

echo "Generating Go source code for user.proto"

protoc -I ./user \
    --go_out ./golang \
    --go_opt paths=source_relative \
    --go-grpc_out ./golang \
    --go-grpc_opt paths=source_relative \
    ./user/user.proto

echo "Generated files"
ls -al golang

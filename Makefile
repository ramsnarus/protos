# Go parameters
GOCMD=go
GOTEST=$(GOCMD) test
GOBUILD=$(GOCMD) build
GOCLEAN=$(GOCMD) clean
GOINSTALL=$(GOCMD) install
GOGENERATE=$(GOCMD) generate


proto:
	protoc -I proto proto/lc_kasse_auth/auth.proto  --go_out=./gen/go --go_opt=paths=source_relative --go-grpc_out=./gen/go --go-grpc_opt=paths=source_relative
	protoc -I proto proto/lc_kasse_auth/auth.proto  --cpp_out=./gen/cpp
	protoc -I proto   --grpc_out=./gen/cpp --plugin=protoc-gen-grpc=E://vcpkg//vcpkg//packages//grpc_x64-windows//tools//grpc//grpc_cpp_plugin.exe proto/lc_kasse_auth/auth.proto
    
PROJ_NAME := "projgoaaa"
VERSION := 0.1.0
SRCS := $(shell find . -type f -name '*.go')
LDFLAGS := -ldflags="-s -w -X \"main.Version=$(VERSION)\" -extldflags \"-static\""

default: $(SRCS)
  go fmt 
  go build $(LDFLAGS) 

initmod: 
  go mod init $(PROJ_NAME)

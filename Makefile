tag ?= latest

build:
	docker build -t davidlemaitre/frontend:$(tag) .

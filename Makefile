.PHONY: build
build:
	go build .

.PHONY: docker
docker:
	docker build -t ecommerce-sales .

.PHONY: run
run:
	docker run --name ecommerce-sales -d ecommerce-sales

.PHONY: tag
tag:
	docker tag ecommerce-sales:latest renegmedal/ecommerce-sales:1.0.1

.PHONY: push
push:
	docker push renegmedal/ecommerce-sales:1.0.1

.PHONY: up
up:
	docker-compose up --build -d

TAG ?= latest
IMAGE = davidlemaitre/frontend

build:
	docker build -t $(IMAGE):$(TAG) .

shell:
	docker run --rm -it $(IMAGE):$(TAG) bash

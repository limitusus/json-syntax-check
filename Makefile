container_name := json-syntax-check

.PHONY: build clean
ALL: build

build:
	docker build -t $(container_name):latest .

clean:
	docker rmi $(container_name):latest

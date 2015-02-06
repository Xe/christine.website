.PHONY: build test

build:
	docker build -t xena/site .

test: build
	@echo "http://127.0.0.1:5000"
	@echo "press ^D to kill the test server"
	docker run -p 5000:5000 --rm -it xena/site /sbin/my_init /bin/bash

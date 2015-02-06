.PHONY: build test

build:
	docker build -t xena/site .

test: build
	@echo "http://127.0.0.1:5000"
	@echo "press ^C to kill the test server"
	docker run -p 5000:5000 --rm -it -e GIT_REV=devel xena/site /bin/bash

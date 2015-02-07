GIT_REV=`git rev-parse HEAD`
GITHUB_TOKEN=`cat ~/.token`

.PHONY: build test oleg

build:
	docker build -t xena/site .

oleg:
	docker run -ditv /home/xena/tmp/oleg/site:/oleg/data --name site-olegdb xena/olegdb

test: build
	@echo "http://127.0.0.1:5000"
	@echo "press ^C to kill the test server"
	docker run -p 5000:5000 --name site-$(GIT_REV) --link site-olegdb:oleg --rm -it -e GIT_REV=$(GIT_REV) -e GITHUB_TOKEN=$(GITHUB_TOKEN) xena/site /bin/bash

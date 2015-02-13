GIT_REV=`git rev-parse HEAD`
GITHUB_TOKEN=`cat ~/.token`

.PHONY: build test deploy

build:
	docker build -t xena/site .

test: build
	@echo "http://127.0.0.1:5000"
	@echo "press ^C to kill the test server"
	docker run -p 5001:38080 -p 5000:5000 --name site-$(GIT_REV) --rm -it -e GIT_REV=$(GIT_REV) -e GITHUB_TOKEN=$(GITHUB_TOKEN) xena/site /bin/bash

deploy:
	git push
	git push git@github.com:Xe/christine.website master
	git push dokku master

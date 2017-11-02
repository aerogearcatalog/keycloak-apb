DOCKERHOST = docker.io
DOCKERORG = feedhenry
TAG = latest
USER=$(shell id -u)
PWS=$(shell pwd)
LAST_COMMIT=$(shell git rev-parse HEAD)
ORIGIN = origin

build_and_push: apb_build docker_push apb_push

.PHONY: apb_build
apb_build:
	docker run --rm -u $(USER) -v $(PWD):/mnt:z feedhenry/apb prepare
	docker build -t $(DOCKERHOST)/$(DOCKERORG)/keycloak-apb:$(TAG) .

.PHONY: docker_push
docker_push:
	docker push $(DOCKERHOST)/$(DOCKERORG)/keycloak-apb:$(TAG)

.PHONY: apb_push
apb_push:
	 docker run --rm -u $(USER) -v $(PWD):/mnt:z feedhenry/apb push

.PHONY: apb_release
apb_release:
    ifdef VERSION
				@echo "Preparing $(VERSION)"
    else
				$(error No VERSION defined!)
    endif
    ifeq ($(shell git ls-files -m | wc -l),0)
				@echo 'tagging for $(LAST_COMMIT)'
				git tag -a $(VERSION) $(LAST_COMMIT) -m "signing tag" && git push $(ORIGIN) $(VERSION)
    else
				$(error Aborting release process, since local files are modified)
    endif

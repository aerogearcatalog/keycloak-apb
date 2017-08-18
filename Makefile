DOCKERORG = pbrookes

build_and_push: apb_build docker_push

.PHONY: apb_build
apb_build:
	apb build --tag $(DOCKERORG)/keycloak-apb

.PHONY: docker_push
docker_push:
	docker push $(DOCKERORG)/keycloak-apb
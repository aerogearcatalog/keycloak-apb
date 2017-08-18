build_and_push: apb_build docker_push

.PHONY: apb_build
apb_build:
	apb build

.PHONY: docker_push
docker_push:
	docker push pbrookes/keycloak-apb
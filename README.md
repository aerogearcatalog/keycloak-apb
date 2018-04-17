# Keycloak APB

[![](https://img.shields.io/docker/automated/jrottenberg/ffmpeg.svg)](https://hub.docker.com/r/aerogearcatalog/keycloak-apb/)
[![Docker Stars](https://img.shields.io/docker/stars/aerogearcatalog/keycloak-apb.svg?style=plastic)](https://registry.hub.docker.com/v2/repositories/aerogearcatalog/keycloak-apb/stars/count/)
[![Docker pulls](https://img.shields.io/docker/pulls/aerogearcatalog/keycloak-apb.svg?style=plastic)](https://registry.hub.docker.com/v2/repositories/aerogearcatalog/keycloak-apb/)
[![License](https://img.shields.io/:license-Apache2-blue.svg)](http://www.apache.org/licenses/LICENSE-2.0)

## Overview

For an overview of what each task does, please check the [APB overview file](./apb_overview.md).

## Local Development

### Requirements

- OpenShift Origin [development environment](https://github.com/ansibleplaybookbundle/ansible-playbook-bundle/blob/master/docs/getting_started.md#development-environment) for APB development.
- Install [apb tool](https://github.com/ansibleplaybookbundle/ansible-playbook-bundle/blob/master/docs/apb_cli.md)

### Process

Upload the APB to the local openshift registry (Runs prepare,build,push and relist) [more info](https://github.com/ansibleplaybookbundle/ansible-playbook-bundle/blob/master/docs/apb_cli.md#push)
```bash
apb push
```

For more information on APB development and apb command line options, check [ansible-playbook-bundle documentation](https://github.com/ansibleplaybookbundle/ansible-playbook-bundle/blob/master/docs).

## Publish

To publish the changes, you can run:

```bash
make DOCKERORG="<defaulting to aerogearcatalog>" DOCKERHOST="<defaulting to docker.io>"
```

Make sure you have the permission to push images to the docker org.

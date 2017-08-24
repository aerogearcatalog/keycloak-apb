## Requirements
- [apb](https://github.com/fusor/ansible-playbook-bundle/blob/master/README.md#installing-the-apb-tool)
- Running [catasb](https://github.com/fusor/catasb)

## Usage
make changes to apb files in this repo and run: `make DOCKERORG="<dockerhub_org_name>"` where dockerhub_org_name is the org referenced by your catasb (you will need to change the image name in the `apb.yml` file to match this, also).

If changes were made to the `apb.yml` file, then you will need to execute `apb bootstrap` (if this fails, then you can also run the `~/repos/catasb/local/<os>/reset_environment.sh`), though this takes a little while. Changes to the APB ansible files do not require the above step.

In the Openshift control panel, find and select the `Keycloak (APB)` and fill in the required fields. 
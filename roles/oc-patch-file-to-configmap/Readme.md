# oc-patch-file-to-configmap-role

The contents of this dir are a copy of the repo at
https://github.com/aerogear/oc-patch-file-to-configmap-role at commit
25d961b37d9c3ddc3fadc9544af785bd781c5bbd

This is a basic Ansible role that can be used to add a JSON file to an existing Openshift Config Map. (using the `oc` CLI tool under the hood).

### Motivation

This role was created for use in the [AeroGear Catalog](https://github.com/organizations/aerogear) Ansible Playbook bundles, specifically to add Grafana Dashboard JSON files as part of a service provision.

### Usage

Inside your APB's `playbooks/provision.yml`:

```yaml
roles:
  - role: oc-patch-file-to-configmap
  file: "{{ lookup('file','/path/to/file.json') }}" # contents of the file
  filename: "myfile.json" # name the filename will have inside the Config Map
  configmap: "my-configmap"
  namespace: "my-project"
```

You can also take a look at some of the APBs in the [AeroGear Catalog](https://github.com/organizations/aerogear) to see it in action.

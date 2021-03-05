# Configuration tools for Ansible Playground in LXD

### Usage
These scripts assume you have Ansible and LXD already installed.

The scripts will setup piece by piece the environment with some customization settings.
It will create its own network `ans0` and profile `ansible-profile`.

You should run the scripts in numbers ascending.


### Default values
All containers use `ubuntu:20.04` with the special user `ansibleuser` and password `supersecretpassword`.

By default no password is required for sudo.

The SSH public key provided in the `ansible.profile` file will be associated with that user.


### Customization
Some customization to file paths and alike can be done in the `variables.env` file.

Other than that, you can change some stuff in the `ansible.profile` file.

#### Configure SSH keys
You should provide your own SSH keys and accordingly replace `###SSH_PUBLIC_KEY###` in `ansible.profile` with your public SSH key.

If you don't want to use SSH keys remove the lines.

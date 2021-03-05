description: Default Profile for playing with Ansible
devices:
  eth0:
    name: eth0
    network: ans0
    type: nic
  root:
    path: /
    pool: default
    type: disk
name: default
used_by: []
config:
  user.user-data: |
    #cloud-config
    package_upgrade: true
    users:
    - name: ansibleuser
      gecos: Ansible User
      ssh_authorized_keys:
      - ###SSH_PUBLIC_KEY###
      sudo: ALL=(ALL) NOPASSWD:ALL
      shell: /bin/bash
      plain_text_passwd: 'supersecretpassword'

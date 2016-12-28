---
description: Host für VMs
responsible: emanuel, guac, peanut, zoepfe
ssh_allow_users: emanuel zoepfe guac peanut
users:
  - { name: "emanuel", groups: "sudo,libvirt", ssh_key: "emanuel.pub" }
  - { name: "zoepfe", groups: "sudo,libvirt", ssh_key: "zoepfe.pub" }
  - { name: "guac", groups: "sudo,libvirt", ssh_key: "guac.pub" }
  - { name: "peanut", groups: "sudo,libvirt", ssh_key: "peanut.pub" }
ufw_allow_in:
  - { port: 22, proto: "tcp" }

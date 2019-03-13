---
description: Template für weitere VMS
responsible: hops, gandro, emanuel
ssh_allow_users: hops gandro emanuel
users:
  - { name: "hops", groups: "sudo", ssh_key: "hops.pub" }
  - { name: "gandro", groups: "sudo", ssh_key: "gandro.pub" }
  - { name: "emanuel", groups: "sudo", ssh_key: "emanuel.pub" }
ufw_allow_in:
  - { port: 22, proto: "tcp" }
  - { port: 51820, proto: "udp" }

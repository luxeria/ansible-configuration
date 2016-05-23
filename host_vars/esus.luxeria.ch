---
description: Reverse Proxy
responsible: gandro
ssh_allow_users: emanuel guac peanut gandro nick
users:
  - { name: "gandro", groups: "sudo", ssh_key: "gandro.pub" }
  - { name: "emanuel", groups: "sudo", ssh_key: "guac.pub" }
  - { name: "guac", groups: "sudo", ssh_key: "guac.pub" }
  - { name: "peanut", groups: "sudo", ssh_key: "peanut.pub" }
  - { name: "nick", groups: "sudo", ssh_key: "nick.pub" }
ufw_allow_in:
  - { port: 80, proto: "tcp" }
  - { port: 443, proto: "tcp" }

---
description: Access-Server (Jumphost, VPN, ...)
responsible: emanuel
ssh_allow_users: emanuel gandro guac nick peanut
users:
  - { name: "emanuel", groups: "sudo", ssh_key: "guac.pub" }
  - { name: "gandro", groups: "sudo", ssh_key: "gandro.pub" }
  - { name: "guac", groups: "sudo", ssh_key: "guac.pub" }
  - { name: "nick", groups: "sudo", ssh_key: "nick.pub" }
  - { name: "peanut", groups: "sudo", ssh_key: "peanut.pub" }

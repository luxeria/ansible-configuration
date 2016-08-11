---
description: Access-Server (Jumphost, VPN, ...)
responsible: emanuel
ssh_allow_users: emanuel gandro guac nick peanut
users:
  - { name: "emanuel", groups: "sudo", ssh_key: "guac.pub" }
  - { name: "guac", groups: "sudo", ssh_key: "guac.pub" }
  - { name: "peanut", groups: "sudo", ssh_key: "peanut.pub" }
  - { name: "gandro", groups: "", ssh_key: "gandro.pub" }
  - { name: "nick", groups: "", ssh_key: "nick.pub" }
  - { name: "cyrill", groups: "", ssh_key: "cyrill.pub" }
ufw_allow_in:
  - { port: 22, proto: "tcp" }

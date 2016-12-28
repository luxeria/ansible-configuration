---
description: Mailserver
responsible: nick
ssh_allow_users: emanuel zoepfe guac peanut nick
users:
  - { name: "emanuel", groups: "sudo", ssh_key: "emanuel.pub" }
  - { name: "zoepfe", groups: "sudo", ssh_key: "zoepfe.pub" }
  - { name: "guac", groups: "sudo", ssh_key: "guac.pub" }
  - { name: "peanut", groups: "sudo", ssh_key: "peanut.pub" }
  - { name: "nick", groups: "sudo", ssh_key: "nick.pub" }
ufw_allow_in:
  - { port: 22, proto: "tcp" }

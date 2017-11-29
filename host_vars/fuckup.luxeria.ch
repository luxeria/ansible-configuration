---
description: Mänus private Büchse
responsible: emanuel
ssh_allow_users: rsnapshot zoepfe emanuel nick guac
ufw_allow_in:
  - { port: 1194, proto: "udp" }
users:
  - { name: "emanuel", groups: "sudo", ssh_key: "emanuel.pub" }
  - { name: "nick", groups: "" , ssh_key: "nick.pub" }
  - { name: "guac", groups: "sudo" , ssh_key: "guac.pub" }

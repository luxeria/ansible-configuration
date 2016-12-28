---
description: Template für weitere VMS
responsible: emanuel, guac, peanut
ssh_allow_users: emanuel zoepfe guac peanut
users:
  - { name: "emanuel", groups: "sudo", ssh_key: "emanuel.pub" }
  - { name: "zoepfe", groups: "sudo", ssh_key: "zoepfe.pub" }
  - { name: "guac", groups: "sudo", ssh_key: "guac.pub" }
  - { name: "peanut", groups: "sudo", ssh_key: "peanut.pub" }
ufw_allow_in:
  - { port: 22, proto: "tcp" }

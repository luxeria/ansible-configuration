---
description: Template für weitere VMS
responsible: emanuel, guac, peanut, hops
ssh_allow_users: emanuel zoepfe guac peanut hops
users:
  - { name: "emanuel", groups: "sudo", ssh_key: "emanuel.pub" }
  - { name: "zoepfe", groups: "sudo", ssh_key: "zoepfe.pub" }
  - { name: "guac", groups: "sudo", ssh_key: "guac.pub" }
  - { name: "peanut", groups: "sudo", ssh_key: "peanut.pub" }
  - { name: "hops", groups: "sudo", ssh_key: "hops.pub" }
ufw_allow_in:
  - { port: 22, proto: "tcp" }

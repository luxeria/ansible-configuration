---
responsible: emanuel, guac, peanut
ssh_allow_users: emanuel guac peanut
users:
  - { name: "emanuel", groups: "sudo", ssh_key: "guac.pub" }
  - { name: "guac", groups: "sudo", ssh_key: "guac.pub" }
  - { name: "peanut", groups: "sudo", ssh_key: "peanut.pub" }

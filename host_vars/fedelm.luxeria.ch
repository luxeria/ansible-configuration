---
description: LuXeria Webseite
responsible: gandro
ssh_allow_users: emanuel zoepfe guac peanut gandro nick
users:
  - { name: "gandro", groups: "sudo", ssh_key: "gandro.pub" }
  - { name: "zoepfe", groups: "sudo", ssh_key: "zoepfe.pub" }
  - { name: "emanuel", groups: "sudo", ssh_key: "zoepfe.pub" }
  - { name: "guac", groups: "sudo", ssh_key: "guac.pub" }
  - { name: "peanut", groups: "sudo", ssh_key: "peanut.pub" }
  - { name: "nick", groups: "sudo", ssh_key: "nick.pub" }
ufw_allow_in:
  - { port: 80, proto: "tcp" }
nginx_default_conf: "fedelm.conf"

---
ssh_allow_users: emanuel nick
ufw_allow_in:
  - { port: 1194, proto: "udp" }
users:
  - { name: "emanuel" }
  - { name: "nick" }

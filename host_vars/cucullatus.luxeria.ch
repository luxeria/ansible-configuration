---
description: Wireguard VPN Gateway
responsible: hops, gandro, emanuel
ssh_allow_users: hops gandro emanuel
users:
  - { name: "hops", groups: "sudo", ssh_key: "hops.pub" }
  - { name: "gandro", groups: "sudo", ssh_key: "gandro.pub" }
  - { name: "emanuel", groups: "sudo", ssh_key: "emanuel.pub" }
ufw_allow_in:
  - { port: 22, proto: "tcp" }
  - { port: 51820, proto: "udp" }
wireguard_server_address: 172.23.0.1/24
wireguard_server_port: 51820
wireguard_peers:
  - name: gandro
    public_key: "ZAVdTiIsjpP/kD4k4SYyvhlz45d/ItKLqJhtpEmuuyA="
    allowed_ips: "172.23.0.10"
  - name: hops
    public_key: "IfmHPk6Ed/C4cPEeZLSHQfUbE0aUjXbTcbJx9NhFHXs="
    allowed_ips: "172.23.0.11"

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
wireguard_server_port: 51820
wireguard_peers:
  - name: doorbell
    public_key: "pGeQ56OwLN2CAxBqRbIHqQsraF/l9KKsfHE/pAtxAT8="
    allowed_ips: "10.10.0.200"
  - name: gandro
    public_key: "/2WNhRNI2sN9BxGRwIkF/h2FMHWxhgHBeCYzjrr0lAU="
    allowed_ips: "10.10.0.201"
  - name: hops
    public_key: "IfmHPk6Ed/C4cPEeZLSHQfUbE0aUjXbTcbJx9NhFHXs="
    allowed_ips: "10.10.0.202"
  - name: daniw_elitebook
    public_key: "AcB+v/9njn/XZ+ULyP/z8uxKEevkVPGoyyA2Atahczo="
    allowed_ips: "10.10.0.203"
  - name: daniw_raspi_weewx
    public_key: "VsnPqz28aCRtsiF1lPvGXHz5R3RXAWRK5H1rSh9Nngo="
    allowed_ips: "10.10.0.204"
  - name: stefan_dell
    public_key: "yB0IzExQF9u/QsqtmO7Z0rBls3shbtYw43uv38FuBQo="
    allowed_ips: "10.10.0.205"
  - name: daniw_desktop
    public_key: "BKsME22t4e940Vs7JNnn/GjqCRb5Hatw8vrRiaZSwhQ="
    allowed_ips: "10.10.0.206"
    

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
    public_key: "ZAVdTiIsjpP/kD4k4SYyvhlz45d/ItKLqJhtpEmuuyA="
    allowed_ips: "10.10.0.201"
  - name: hops
    public_key: "IfmHPk6Ed/C4cPEeZLSHQfUbE0aUjXbTcbJx9NhFHXs="
    allowed_ips: "10.10.0.202"
  - name: daniw_elitebook
    public_key: "AcB+v/9njn/XZ+ULyP/z8uxKEevkVPGoyyA2Atahczo="
    allowed_ips: "10.10.0.203"
  - name: daniw_raspi_weewx
    public_key: "dOdIRAtcl9xq95C9jY0qs+REtebRfmE2z7y18EOa1mA="
    allowed_ips: "10.10.0.204"

---
description: Reverse Proxy
responsible: gandro
ssh_allow_users: emanuel zoepfe guac peanut gandro nick hops
users:
  - { name: "gandro", groups: "sudo", ssh_key: "gandro.pub" }
  - { name: "zoepfe", groups: "sudo", ssh_key: "zoepfe.pub" }
  - { name: "emanuel", groups: "sudo", ssh_key: "zoepfe.pub" }
  - { name: "guac", groups: "sudo", ssh_key: "guac.pub" }
  - { name: "peanut", groups: "sudo", ssh_key: "peanut.pub" }
  - { name: "nick", groups: "sudo", ssh_key: "nick.pub" }
  - { name: "hops", groups: "sudo", ssh_key: "hops.pub" }
ufw_allow_in:
  - { port: 80, proto: "tcp" }
  - { port: 443, proto: "tcp" }
nginx_https_cert:
  country: "CH"
  state: "Luzern"
  location: "Adligenswil"
  organization: "Luxeria"
  common_name: "public.luxeria.ch"
  alt_names: ["gitlab.luxeria.ch", "door.luxeria.ch"]
nginx_proxy:
  - { vhost: "public.luxeria.ch", dest: "http://www.luxeria.ch/", forward_host: false }
  - { vhost: "gitlab.luxeria.ch", dest: "http://pontifex/" }
  - { vhost: "door.luxeria.ch", dest: "http://10.10.0.200:8080/" }
  - { vhost: "meet.luxeria.ch", dest: "http://10.10.0.125:80/" }

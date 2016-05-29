#!/usr/bin/env bash
set -eu

# we run this part as 'acmetiny' user
sudo -u acmetiny /etc/acmetiny/acme_tiny.py \
    --account-key //etc/acmetiny/account.key \
    --csr /etc/acmetiny/letsencrypt.csr \
    --acme-dir /etc/acmetiny/challenges/ > /etc/ssl/letsencrypt.pem

cat /etc/ssl/letsencrypt.pem /etc/ssl/letsencrypt-x3.pem > /etc/ssl/nginx.pem
systemctl reload nginx

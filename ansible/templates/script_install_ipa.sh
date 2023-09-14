#!/bin/bash

cd /tmp

curl -O http://192.168.50.224:8282/cifra

sudo echo -e "yes\n" | sudo ipa-client-install --no-ntp --no-dns-sshfp --mkhomedir --enable-dns-updates --ssh-trust-dns -w `base64 -d /tmp/cifra` -p admin

sudo rm -f /tmp/cifra
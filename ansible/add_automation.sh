#!/bin/bash
# Script para adicionar usuario automation + chave ssh + /etc/sudoers.d/automation 
# 01/09/2023
#
# Executar o script passando o parametro IP de destino
# exemplo: ./add_automation.sh < ip > 


if [ "$1" == "" ]

then
    echo ""
    echo "Modo de usar o programa"
    echo ""
    echo "$0 < ip destino >"
    echo ""

else

	ssh -o 'StrictHostKeyChecking no' root@$1 "hostname; useradd automation; mkdir -p /home/automation/.ssh; \
    echo "%grp_adm_sonepar ALL= NOPASSWD:ALL" > /etc/sudoers.d/grp_adm_sonepar; echo "automation ALL= NOPASSWD:ALL" > /etc/sudoers.d/automation; \
    echo "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQCfWSv1fmAgarSuqFxNmnwOhr5ZTj62AUB7cl709guCekxMiy6cZ3dRzn74FJE6JKlxZ7Zqqhc6rnuTStGqEGbnlL6OVjmVTAfbo5I2xZnrClB0SnBJNHiU58jwgEQEZl48RI2W32mJCKZk9YeXOz8BeVu9PiguZwCR5N3lrf9yzY9PIwvM+6Ekh+b6eaNr+46IMZoy5L1uVou1zbmuKoBQ/ZWDMg36AaVWcs8rKCcVbbliAQqEgasRLwovzaQKpZuRcVR2G7d6deoiZw6ik8mG9qvUe0rr3oq3kVOUqDHqpm5k9cxK2hgOZwaNn4sbiZGysv6sysDZPlV1aRSzlxegTWy4ntE5R0gtod2dy4vkhIr9iy+10Mjfb2nnD3C7c88nvc8S0rpIVdi03aADXlERJjv38uG6wNFw1Bba+69tqoZQKYDiFMEW6NIeVsEje5JkMSXbtZ/uurwa5icSEfJEeUKCpfV6q02LshI/Pg329mv/FZ46yDqO2GGzKPCOtg0= automation@snpbrl-log-rocky.linux.ssa.corp" > /home/automation/.ssh/authorized_keys"

fi


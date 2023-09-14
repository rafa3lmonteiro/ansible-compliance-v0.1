#! /bin/bash
#
# Altera as permissoes dos diretorios de logs para o zabbix
#

#Alterando as permissões do secure
chmod 775 /var/log/secure

#Alterando as permissões do audit se houver
chmod -R 775 /var/log/audit/
#!/bin/bash
 #for account in $(cat /etc/shadow | grep -i "devops" | cut -d ":" -f 1)
 #       do
                config=$(chage -l $1 | grep "Maximum" |cut -d : -f 2)
                echo $1 - $config
		if [ $config -le 90 ];
		then echo "$account is compliant"
		else chage -M 90 $account
                fi
#done

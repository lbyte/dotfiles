Vim�UnDo� �۴��G�^jx������hj�����L��uX      �TOKEN=`curl -b cookie --data "username=admin&password=admin" localhost:3000/auth/local | cut -d ":" -f2 |cut -d "," -f1|cut -d "\"" -f2`                             Wfe�    _�                            ����                                                                                                                                                                                                                                                                                                                                                             Wb��    �               for i in `seq 1 1000`;5�_�                            ����                                                                                                                                                                                                                                                                                                                                                             Wfc�     �                  #!/bin/bash   ~TOKEN=`curl --data "username=admin&password=admin" localhost:3000/auth/local | cut -d ":" -f2 |cut -d "," -f1|cut -d "\"" -f2`   echo "token is $TOKEN"       declare -a TIMES       for i in `seq 1 500`;   do   �	TIME=`curl -s -X GET --header "Authorization:$TOKEN" --header "tenant_Id:ev" --header "Accept: application/json" "http://localhost:3000/api/Tenants?filter=%7B%22tenantId%22%3A%22ev%22%7D" -w "%{time_total}" -o /dev/null`   	TIMES=(${TIMES[@]} $TIME)   done       ./calc.py ${TIMES[@]}        5�_�                           ����                                                                                                                                                                                                                                                                                                                                                             Wfe     �               ~TOKEN=`curl --data "username=admin&password=admin" localhost:3000/auth/local | cut -d ":" -f2 |cut -d "," -f1|cut -d "\"" -f2`5�_�                    	       ����                                                                                                                                                                                                                                                                                                                                                             Wfe     �      
         �	TIME=`curl -s -X GET --header "Authorization:$TOKEN" --header "tenant_Id:ev" --header "Accept: application/json" "http://localhost:3000/api/Tenants?filter=%7B%22tenantId%22%3A%22ev%22%7D" -w "%{time_total}" -o /dev/null`5�_�                    	       ����                                                                                                                                                                                                                                                                                                                                                             Wfe�     �      
         �	TIME=`curl -c cookie -s -X GET --header "Authorization:$TOKEN" --header "tenant_Id:ev" --header "Accept: application/json" "http://localhost:3000/api/Tenants?filter=%7B%22tenantId%22%3A%22ev%22%7D" -w "%{time_total}" -o /dev/null`5�_�                            ����                                                                                                                                                                                                                                                                                                                                                             Wfe�    �               �TOKEN=`curl -b cookie --data "username=admin&password=admin" localhost:3000/auth/local | cut -d ":" -f2 |cut -d "," -f1|cut -d "\"" -f2`5��
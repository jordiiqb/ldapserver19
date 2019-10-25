#! /bin/bash
# Script que canvia el dn de tots els usuaris de la base de dades edt.org.
# Pasen de ser de la forma "cn=user09,ou=usuaris,dc=edt,dc=org" a "uid=user09,ou=usuaris,dc=edt,dc=org"

bbdd_file=./edt.org.ldif

grep "^dn:*" $bbdd_file > /tmp/.tmp_users.txt

for line in /tmp/.tmp_users.txt;
do
  echo $line  
done




#rm /tmp/.tmp_users.txt


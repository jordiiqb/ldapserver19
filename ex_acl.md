## Implementar a la base de dades edt.org les següents ACLS:
#### 1. L’usuari “Anna Pou” és ajudant de l’administrador i té permisos per modificar-ho tot. Tothom pot veure totes les dades de tothom.

```bash
dn: olcDatabase={1}mdb,cn=config
changetype: modify
replace: olcAccess
olcAccess: to * by dn.exact="cn=Anna Pou,ou=usuaris,dc=edt,dc=org" write
olcAccess: to * by * read
```

#### 2. L’usuari “Anna Pou” és ajudant d’administració. Tothom es pot modificar el seu propi email i homePhone. Tothom pot veure totes les dades de tothom.


```bash
dn: olcDatabase={1}mdb,cn=config
changetype: modify
replace: olcAccess
olcAccess: to * by dn.exact="cn=Anna Pou,ou=usuaris,dc=edt,dc=org" write
olcAccess: to attrs="homePhone,mail" by self write
olcAccess: to * by * read
```
#### 3. Tot usuari es pot modificar el seu mail. Tothom pot veure totes les dades de tothom.
#### 4. Tothom pot veure totes les dades de tothom, excepte els mail dels altres.
#### 5. Tot usuari es pot modificar el seu propi password i tothom pot veure totes les dades de tothom.
#### 6. Tot usuari es pot modificar el seu propi password i tothom pot veure totes les dades de tothom, excepte els altres passwords.
#### 7. Tot usuari es pot modificar el seu propi password i tot usuari només pot veure les seves pròpies dades.
#### 8. Tot usuari pot observar les seves pròpies dades i modificar el seu propi password, email i homephone. L’usuari “Anna Pou” pot modificar tots els atributs de tots excepte els passwords, que tampoc pot veure. L’usuari “Pere Pou” pot modificar els passwords de tothom.

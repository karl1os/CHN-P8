# =====================================
# title             : ej15.sh
# description       : Escriviu un shellscript que rebi com a paràmetre el nom d'un directori i obtingui com a resultat un únic fitxer, 
#a partir de la compressió i empaquetament del directori i tots els seus subdirectoris. 
#Feu les comprovacions necessàries per tal que el shellscript comprovi si el directori acomprimir existeix. 
#Feu també les comprovacions necessàries per tal que només admeti directoris (no fitxers, per tant). 
#Feu que el nom del fitxer acabi amb la data actual, en el format AAAA_MM_DD. 
#Caldrà que s'emmagatzemi en la ruta que crida el shellscript. Si a l'hora de comprimir se us mostren missatges d'error (típicament referents a la falta depermisos), 
#caldrà que silencieu la sortida.
# author            : Carlos Hernandez Navarro
# date              : 02/03/2021
# =====================================
#!/bin/bash
if [ -d $1 ]
        then
        $(tar -czf $1/$1-$(date +"%Y_%m_%d").tar.gz $1) > /dev/null 2>&1
else
        echo "El directorio no existe, la ruta es invalida o no es un directori>
fi
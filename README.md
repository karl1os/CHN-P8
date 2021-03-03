# CHN-P8
Pràctica 8 - Scripting (II)
Dels exercicis proposats en el material feu els exercicis: 12, 15 i 17.
Creeu un script per cada exercici.

Exercici 12
Escriviu un shellscript que, a partir de la ruta d'un directori determinat:
Si existeix, accedeixi a aquest directori.
Si no existeix, haurà de crear aquest directri i accedir-hi.
En cas de no poder crear el directori, mostrarà per pantalla el missatge “No s'ha pogut crearel directori” i quedar-se a la ruta original.
Per a comprovar que el vostre shellscript es comporta de la forma esperada, mostreu per pantalla el directori de treball actual. On queda la vostra terminal? Per què?

Exercici 15
Escriviu un shellscript que rebi com a paràmetre el nom d'un directori i obtingui com a resultat un únic fitxer, a partir de la compressió i empaquetament del directori i tots els seus subdirectoris.
Feu les comprovacions necessàries per tal que el shellscript comprovi si el directori acomprimir existeix. Feu també les comprovacions necessàries per tal que només admeti directoris (no fitxers, per tant).
Feu que el nom del fitxer acabi amb la data actual, en el format AAAA_MM_DD. Perexemple, el backup del 9 de març de 2011, seria backup_2011_03_09.tar.gz. Caldrà que s'emmagatzemi en la ruta que crida el shellscript.
Si a l'hora de comprimir se us mostren missatges d'error (típicament referents a la falta depermisos), caldrà que silencieu la sortida.

Exercici 17
Escriviu un shellscript que farà de frontend dels compressors/descompressors típics de Linux (gzip i bzip2). El shellscript rebrà un únic paràmetre i es comportarà de la següent manera:
Si el paràmetre passat és un fitxer de tipus gz o bz2, el descomprimirà utilitzant el descompressor adequat.
Si el paràmetre passat és un fitxer de tipus tar.gz o tar.bz2, farà la descompressió i descompactació pertinents (en un únic pas).
Si el paràmetre passat és un fitxer de qualsevol altre tipus o un directori, el sistema mostrarà per pantalla el següent menú:
Gzip2.
Bzip2
De manera que es comprimirà en format .gz o .bz2 en el cas d'un fitxer; o en format tar.gz otar.bz2 en el cas d'un directori.
El fitxer generat haurà de tenir el mateix nom que l'original. Totes les comprovacions anteriors es poden fer en funció de l'extensió del fitxer. Suposarem que si els fitxers tenen la extensió correcta, són del format que indica la seva extensió.

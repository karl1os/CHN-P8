# =====================================
# title             : ej17.sh
# description       : Escriviu un shellscript que farà de frontend dels compressors/descompressors típics de Linux (gzip i bzip2). 
#El shellscript rebrà un únic paràmetre i es comportarà de la següent manera: Si el paràmetre passat és un fitxer de tipus gz o bz2, el descomprimirà utilitzant el descompressor adequat. Si el paràmetre passat és un fitxer de tipus tar.gz o tar.bz2, farà la descompressió i descompactació pertinents (en un únic pas). Si el paràmetre passat és un fitxer de qualsevol altre tipus o un directori, el sistema mostrarà per pantalla el següent menú: Gzip2. Bzip2 De manera que es comprimirà en format .gz o .bz2 en el cas d'un fitxer; o en format tar.gz otar.bz2 en el cas d'un directori. El fitxer generat haurà de tenir el mateix nom que l'original. Totes les comprovacions anteriors es poden fer en funció de l'extensió del fitxer. Suposarem que si els fitxers tenen la extensió correcta, són del format que indica la seva extensió.
# author            : Carlos Hernandez Navarro
# date              : 01/03/2021
# =====================================
# =====================================
# title             : ej17.sh
# description       : Escriviu un shellscript que farà de frontend dels compressors/descompressors típics de Linux (gzip i bzip2). 
#El shellscript rebrà un únic paràmetre i es comportarà de la següent manera: Si el paràmetre passat és un fitxer de tipus gz o bz2,
#el descomprimirà utilitzant el descompressor adequat. Si el paràmetre passat és un fitxer de tipus tar.gz o tar.bz2, 
#farà la descompressió i descompactació pertinents (en un únic pas). Si el paràmetre passat és un fitxer de qualsevol altre tipus o un directori, 
#el sistema mostrarà per pantalla el següent menú: Gzip2. Bzip2 De manera que es comprimirà en format .gz o .bz2 en el cas d'un fitxer; 
#o en format tar.gz otar.bz2 en el cas d'un directori. El fitxer generat haurà de tenir el mateix nom que l'original. 
#Totes les comprovacions anteriors es poden fer en funció de l'extensió del fitxer. Suposarem que si els fitxers tenen la extensió correcta, 
#són del format que indica la seva extensió.
# author            : Carlos Hernandez Navarro
# date              : 0X/03/2021
# =====================================
#!/bin/bash
if [ $1 == *".tar.gz" ]
        then
			tar -xzf $1
else
	if [ $1 == *".tar.bz2" ]
	        then
				tar -xjf $1
	else
		if [ $1 == *".gz" ]
			then
				gunzip -k $1
		else
			if [ $1 == *".bz2" ]
				then
					bunzip2 -k $1
			else
				if [ -f $1 ]
					then
						echo "¿Que formato desea?"
						echo ""
						echo "1. Gzip2 (.gz)"
						echo "2. Bzip2 (.bz2)"
						echo "3. Salir"
						read OPC
							case $OPC in
								1)
									gzip -k $1
									;;
								2)
									bzip2 -k $1
									;;
								3)
									exit
									;;
								*)
									echo "No has seleccionado una opcion valida"
									;;
							esac
				else
					if [ -d $1 ]
						then
							echo "¿Que formato desea?"
							echo ""
							echo "1. Gzip2 (.tar.gz)"
							echo "2. Bzip2 (.tar.bz2)"
							echo "3. Salir"
							read OPC
								case $OPC in
									1)
										tar -czf $1.tar.gz $1
										;;
									2)
										tar -cjf $1.tar.bz2 $1
										;;
									3)
										exit
										;;
									*)
										echo "No has seleccionado una opcion valida"
										;;
								esac
					else
						echo "La ruta selecionada no es un archivo, tampoco un directorio, ni tampoco es un archivo comprimido"
					fi
				fi
			fi
		fi
	fi
fi

#He detectado un problema, y esque a la hora de comparar si es un archivo comprimido o empaquetado, no puede existir ninguno con el mismo formato en el directorio de trabajo
#ya que compara el argumento con cualquier archivo acabado en el formato indicado, por ejemplo:
#tenemos el archivo1.tar.bz2 (entrada de argumento del script) y el archivo.tar.bz2, al llegar al if compara los dos y detecta que no son iguales y salta al siguietne if 
#hasta que detecta que es un fichero, en ese momento inicia el menu del if [ -f $1 ]. Debe de haber alguna forma mas optima de hacer esta comaparacion.
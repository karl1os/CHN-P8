# =====================================
# title             : ej12.sh
# description       : Escriviu un shellscript que, a partir de la ruta d'un directori determinat: Si existeix, 
#accedeixi a aquest directori. Si no existeix, haurà de crear aquest directri i accedir-hi. 
#En cas de no poder crear el directori, mostrarà per pantalla el missatge “No s'ha pogut crearel directori” i quedar-se a la ruta original. 
#Per a comprovar que el vostre shellscript es comporta de la forma esperada, mostreu per pantalla el directori de treball actual.
# author            : Carlos Hernandez Navarro
# date              : 01/03/2021
# =====================================
echo "introducce la ruta de un directorio: "
read RUTA
if [ -d $RUTA ]
    then
        echo "La ruta "$RUTA" existe, es un directorio"
        cd $RUTA
else
    mkdir $RUTA > /dev/null 2>&1
    if [ -d $RUTA ]
        then
            cd $RUTA
    else
        echo "No s'ha pogut crear el directori"
        echo "el directorio actual es: "$(pwd)
    fi
fi
#El terminal se queda en el directorio de trabajo original, debido a que el script se ejecuta en un terminal distinto al actual, 
#por tanto al finalizar el script se cierra dicha terminal y regresamos a la terminal "padre", 
#para solucionar esto podemos ejecutar nuestro script agregando el comando "source" previo al llamamiento del scrip o usando "." por ejemplo:
# "source ./script.sh" o ". ./script.sh" 
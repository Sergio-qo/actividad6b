direc=$1
if [ `ls -l | grep -w $direc | wc -l` -gt 0 ]; then
	numfich=`ls -l $direc/*.txt | wc -l`	
	rm $direc/*.txt
	echo "Se han borrado $numfich ficheros"
else
	echo "El directorio no existe"
fi

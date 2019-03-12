direc=$1
numfich=`ls -l $direc/*.txt | wc -l`
rm $direc/*.txt
echo "Se han borrado $numfich ficheros"

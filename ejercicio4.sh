lineas=`cat numeros.txt | wc -l`
contador=0

for i in `seq 1 $lineas`; do
	if [ $((`cat numeros.txt | head -$i | tail -1` % 2)) -eq 0 ]; then
		echo `cat numeros.txt | head -$i | tail -1`
		contador=$(( contador + 1))
	fi
done

echo "Total pares: $contador"

contador=0

for i in `seq 1 $lineas`; do
	if [ $((`cat numeros.txt | head -$i | tail -1` % 2)) -ne 0 ]; then
		echo `cat numeros.txt | head -$i | tail -1`
		contador=$(( contador + 1))
	fi
done

echo "Total impares: $contador"

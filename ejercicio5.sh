lineas=`cat listado.txt | wc -l`
windowsu=0
windowsp=0
linuxu=0
linuxp=0

for i in `seq 1 $lineas`; do
	if [ `cat listado.txt | head -$i | tail -1 | awk '{print $2}'` = "Windows" ]; then
		windowsu=$((windowsu + 1))
		windowsp=$((windowsp + `cat listado.txt | head -$i | tail -1 | awk '{print 			$3}'`))
	fi

	if [ `cat listado.txt | head -$i | tail -1 | awk '{print $2}'` = "Linux" ]; then
		linuxu=$((windowsu + 1))
		linuxp=$((windowsp + `cat listado.txt | head -$i | tail -1 | awk '{print 			$3}'`))
	fi
done

echo "Linux-> $linuxu $linuxp"
echo "Windows-> $windowsu $windowsp"

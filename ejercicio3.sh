lineas=`cat precipitaciones.txt | wc -l`

for i in `seq 1 $lineas`;do
	if [ `cat precipitaciones.txt | head -$i | tail -1 | awk '{print $2}'` -eq 0 ]; then
		echo `cat precipitaciones.txt | head -$i | tail -1 | awk '{print $1}'`
	fi
done

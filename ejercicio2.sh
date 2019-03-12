lineas=`cat precipitaciones.txt | wc -l`
contador=0
suma=0

for i in `seq 1 $lineas`;do
suma=$((suma + `cat precipitaciones.txt | head -$i | tail -1 | awk '{print $2}'`))
contador=$((contador + 1))
done

echo "La media de precipitaciones es $((suma / contador))"

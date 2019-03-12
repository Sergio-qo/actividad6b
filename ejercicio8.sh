conectados=0

for i in `seq 2 254`; do
	if [ `ping -c 1 10.2.6.$i | grep transmitted | wc -l` -ge 1 ]; then
		echo "Entro en el if para i = $i"
		conectados=$((conectados + 1))
	else
		echo "Entro en el else para i = $i"	
	fi
done
echo $conectados

contador=`cat nombres.txt | wc -l`
x=$1

for i in `seq 1 $contador`;do
	nom=`cat nombres.txt | head -$i | tail -1`	
	mkdir $nom
	for i in `seq 1 $x`;do
		mkdir $nom/personal$i
	done

done

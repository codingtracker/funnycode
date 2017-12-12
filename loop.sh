sig=0
i=2

while [ $sig -ne 1 ]
do 
	if [ $i -le $((`tput lines`-2)) ]; then 
		while [ $i -le $((`tput lines`-2)) ] ; do /bin/bash ./dogrun.sh $i; let i++; done
	else
		while [ $i -gt 3 ] ; do /bin/bash ./dogrun.sh $i; let i--;  done
	fi
done	


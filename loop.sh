sig=0
i=63

while [ $sig -ne 1 ]
do 
	if [ $i -le $((`tput lines`-2)) ]; then 
		while [ $i -le $((`tput lines`-2)) ] ; do /bin/bash ./echo3.sh $i; let i++; done
	else
		while [ $i -gt 3 ] ; do /bin/bash ./echo3.sh $i; let i--; echo $i; done
	fi
done	


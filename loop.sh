##
## Author: Chen Ye
## Email: chen.winfield.ye@gmail.com
## Purpose: As a screen saver or make it run when you running the job at background, 
## 	    it needs to work with another scripts dogrun.sh under the same path
##

sig=0
i=2

while [ $sig -ne 1 ]
do 
	if [ $i -le $((`tput lines`-2)) ]; then 
		while [ $i -le $((`tput lines`-2)) ] ; do screen -m /bin/bash ./dogrun.sh $i; let i++; done
	else
		while [ $i -gt 3 ] ; do screen -m /bin/bash ./dogrun.sh $i; let i--;  done
	fi
done	


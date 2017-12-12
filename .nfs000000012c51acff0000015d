LCyan='\033[1;36m'
Yellow='\033[1;33m'
NC='\033[0m'

if [ $1 -eq 2 ]; then
	clear
	tput cup 1 2; printf " ${LCyan}Now fetch...${NC}"
	sleep 5
fi

caption () {
        echo ""
        tput cup 1 2; printf " ${LCyan} Feeeetching...${NC}"
        echo ""
}

        for((pst=0;pst<$((`tput cols`-7));pst=pst+10)) {
		
                nxt=$(($1+1))
#               echo $1
#               echo $nxt
                tput civis
		caption
		sleep 1
                clear
                tput cup $1 $pst; printf "${Yellow}~(__/=${NC}"
                tput cup $nxt $pst; printf "${Yellow} \" \"${NC}"
                sleep 1
        }

        for((pst=$((`tput cols`-7));pst>0;pst=pst-10)) {
		caption
		sleep 1
                clear
                tput cup $1 $pst; printf "${Yellow}=\__)~${NC}"
                tput cup $nxt $pst; printf "${Yellow} \" \"${NC}"
                sleep 1
        }

echo
echo

tput cnorm


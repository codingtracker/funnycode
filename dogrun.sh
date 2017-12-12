LCyan='\033[1;36m'
Yellow='\033[1;33m'
NC='\033[0m'

while [ $1 -eq 1 ]
do
        clear
        echo ""
        printf " ${LCyan}Now fetch...${NC}"
        echo ""
        sleep 3
        break
done

        for((pst=0;pst<$((`tput cols`-7));pst=pst+120)) {
		
                nxt=$(($1+1))
#               echo $1
#               echo $nxt
                clear
                tput civis
                tput cup $1 $pst; printf "${Yellow}~(__/=${NC}"
                tput cup $nxt $pst; printf "${Yellow} \" \"${NC}"
                sleep 1
        }

        for((pst=$((`tput cols`-7));pst>0;pst=pst-120)) {
                clear
                tput cup $1 $pst; printf "${Yellow}=\__)~${NC}"
                tput cup $nxt $pst; printf "${Yellow} \" \"${NC}"
                sleep 1
        }

echo
echo

tput cnorm


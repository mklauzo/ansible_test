pace!/bin/bash
# simple demonstration of the getopts command
function menu {
clear
echo
echo -e "\t\t\tSys Admin Menu\n"
echo -e "\t1. Display disk space"
echo -e "\t2. Display logged on users"
echo -e "\t3. Display memory usage"
echo -e "\t0. Exit program\n\n"
echo -en "\t\tEnter option: "
read -n 1 option
}

menu
case $option in
0)
break ;;
1)
diskspace ;;
2)
whoseon ;;
3)
memusage ;;
*)
clear
echo "Sorry, wrong selection";;
esac




while getopts :ab:ac:c:d opt
do
case "$opt" in
a) echo "Found the -a option" ;;
b) echo "Found the -b option, with value $OPTARG";;
c) echo "Found the -c option" ;;
d) echo "Found -d opcja" ;;
*) echo "Unknown option: $opt";;
esac
done

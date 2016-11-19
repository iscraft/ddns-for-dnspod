port install curl  
port install jq  
ee ddns.sh  
crontab -e add  
*/30 * * * * /bin/sh /path/ddns.sh

port install curl  
port install jq  
ee ddns.sh  
crontab -e add  
*/30 * * * * root /bin/sh /path/ddns.sh

port install /usr/ports/ftp/curl  
port install /usr/ports/textproc/jq  
ee ddns.sh  
crontab -e add  
*/30 * * * * /bin/sh /path/ddns.sh

mark install /usr/ports/ftp/curl  
mark install /usr/ports/textproc/jq  
ee ddns.sh  
crontab -e add  
*/30 * * * * /bin/sh /path/ddns.sh

port install curl
port install jq
ee ddns.sh
crontab -e add
*/30 * * * * /path/ddns.sh

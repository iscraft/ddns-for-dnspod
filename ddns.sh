#!/bin/sh
#set dnspod login_token,set domainid,set domain recordid,set new record
dlt="you dnspod login_token"
dmi="you domain_id"
dri="you domain record_id"
ndr="you sub_domain name"
#get internet ip
nowip=$(curl ip.cip.cc) 
#get domain ip
domainip=$(curl -X POST https://dnsapi.cn/Record.Info -d 'login_token='${dlt}'&format=json&domain_id='${dmi}'&record_id='${dri}'' | jq '.record.value' | awk -F '"' '{print $2}')
#change record
if [ "$nowip" != "$domainip" ]
then
curl -X POST https://dnsapi.cn/Record.Modify -d 'login_token='${dlt}'&format=json&domain_id='${dmi}'&record_id='${dri}'&sub_domain='${ndr}'&value='${nowip}'&record_type=A&record_line_id=0'
fi
exit

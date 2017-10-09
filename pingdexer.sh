#!/bin/sh
# Script: Pingdexer
# Description: Ping XML-RPC servers to speed up indexing of new URLs
# Author: co@infinitnet.de
# Version: 0.1

usage() {
  echo "Usage: bash $0 'Site Name' 'https://domain.com/' 'https://domain.com/new-url/'"
}

# Usage
if [ $# -eq 0 ]
then
  usage
  exit 1
fi

# Payload
xmlrpc="<?xml version=\"1.0\"?>
<methodCall>
<methodName>weblogUpdates.extendedPing</methodName>
<params>
<param>
<value>$1</value>
</param>
<param>
<value>$2</value>
</param>
<param>
<value>$3</value>
</param>
</params>
</methodCall>"

# Ping XML-RPC Services
curl -A "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36" -s -S -H "Content-Type: text/xml" -d "$xmlrpc" http://ping.blo.gs/
curl -A "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36" -s -S -H "Content-Type: text/xml" -d "$xmlrpc" http://blog.goo.ne.jp/XMLRPC
curl -A "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36" -s -S -H "Content-Type: text/xml" -d "$xmlrpc" http://blog.with2.net/ping.php
curl -A "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36" -s -S -H "Content-Type: text/xml" -d "$xmlrpc" http://blogdigger.com/RPC2
curl -A "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36" -s -S -H "Content-Type: text/xml" -d "$xmlrpc" http://blogpeople.net/ping
curl -A "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36" -s -S -H "Content-Type: text/xml" -d "$xmlrpc" http://blogpeople.net/servlet/weblogUpdates
curl -A "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36" -s -S -H "Content-Type: text/xml" -d "$xmlrpc" http://blogsearch.google.com/ping/RPC2
curl -A "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36" -s -S -H "Content-Type: text/xml" -d "$xmlrpc" http://ping.bloggers.jp/rpc/
curl -A "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36" -s -S -H "Content-Type: text/xml" -d "$xmlrpc" http://ping.fc2.com/
curl -A "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36" -s -S -H "Content-Type: text/xml" -d "$xmlrpc" http://ping.feedburner.com/
curl -A "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36" -s -S -H "Content-Type: text/xml" -d "$xmlrpc" http://ping.pubsub.com/ping
curl -A "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36" -s -S -H "Content-Type: text/xml" -d "$xmlrpc" http://pingoo.jp/ping/
curl -A "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36" -s -S -H "Content-Type: text/xml" -d "$xmlrpc" http://rpc.bloggerei.de/ping/
curl -A "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36" -s -S -H "Content-Type: text/xml" -d "$xmlrpc" http://rpc.pingomatic.com/
curl -A "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36" -s -S -H "Content-Type: text/xml" -d "$xmlrpc" http://rpc.twingly.com/
curl -A "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36" -s -S -H "Content-Type: text/xml" -d "$xmlrpc" http://rpc.weblogs.com/RPC2
curl -A "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36" -s -S -H "Content-Type: text/xml" -d "$xmlrpc" http://services.newsgator.com/ngws/xmlrpcping.aspx
curl -A "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36" -s -S -H "Content-Type: text/xml" -d "$xmlrpc" http://xping.pubsub.com/ping/

exit 0

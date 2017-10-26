#!/usr/bin/env bash
NAME=${1:-LocalTest}

openssl req \
	-newkey rsa:4096 \
	-days 1001 \
	-nodes \
	-x509 \
	-subj "//C=US\ST=California\L=San Francisco\O=Twitch\OU=web\CN=localhost" \
	-extensions SAN \
	-config ".\openssl.cnf" \
	-keyout "${NAME}.key" \
	-out "${NAME}.crt"

echo ""
echo "Generated $NAME.key and $NAME.crt files in local directory"
echo ""

echo "Please install and trust cert at $PWD/$NAME.crt"

echo "Press Enter to end"
read
#echo "Done"
#sleep 6

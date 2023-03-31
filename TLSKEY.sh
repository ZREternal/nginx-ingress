#!/bin/bash
echo "输入证书名"
read TLSNAME
echo "输入域名"
read URL
echo "输入secret名"
read secret

openssl genrsa -out $TLSNAME\.key 2048
openssl req -new -x509 -key $TLSNAME\.key -out $TLSNAME\.crt -subj /C=CN/ST=Beijing/L=Beijing/O=DevOps/CN=$URL
kubectl create secret tls $secret --cert=$TLSNAME\.crt --key=$TLSNAME\.key

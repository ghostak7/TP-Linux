#!/bin/bash

apt install msmtp
apt install msmtp-mta

echo "# Set default values for all following accounts." > ~/.msmtprc
echo "defaults" >> ~/.msmtprc
echo "auth on " >> ~/.msmtprc
echo "tls on" >> ~/.msmtprc
echo "tls_trust_file /etc/ssl/certs/ca-certificates.crt" >> ~/.msmtprc
echo "logfile ~/.msmtp.log" >> ~/.msmtprc

echo "#Gmail" >> ~/.msmtprc
echo "account gmail" >> ~/.msmtprc
echo "host smtp.gmail.com" >> ~/.msmtprc
echo "port 587" >> ~/.msmtprc
echo "from projetcpointu@gmail.com" >> ~/.msmtprc
echo "user projetcpointu@gmail.com" >> ~/.msmtprc
echo "password ProjetCPointu123456" >> ~/.msmtprc
echo "# Set a default account" >> ~/.msmtprc
echo "account default : gmail" >> ~/.msmtprc

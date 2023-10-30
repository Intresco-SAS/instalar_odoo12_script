#este script esta hecho para instalar odoo 12 en ubuntu18 server
#!/bin/bash
apt-get update && apt-get upgrade -y
apt-get install postgresql -y
wget -O - https://nightly.odoo.com/odoo.key | apt-key add -
echo "deb http://nightly.odoo.com/15.0/nightly/deb/ ./" >> /etc/apt/sources.list.d/odoo.list
apt-get update && apt-get install odoo -y
apt-get install xfonts-75dpi
sudo apt install wkhtmltopdf
chmod 777 -R /usr/lib/python3/dist-packages/odoo/addons
apt --fix-broken install
apt-get install git python3 python3-pip build-essential wget python3-dev python3-venv python3-wheel libxslt-dev libzip-dev libldap2-dev libsasl2-dev python3-setuptools node-less libjpeg-dev gdebi -y
apt-get install libpq-dev python-dev libxml2-dev libxslt1-dev libldap2-dev libsasl2-dev libffi-dev
sudo -H pip3 install -r https://raw.githubusercontent.com/odoo/odoo/master/requirements.txt
apt install unzip
pip3 install numpy
pip3 install pysftp
pip3 install xlrd
pip3 install xlwt
pip3 install boto3
pip3 install python-barcode
pip3 install pyopenssl
pip3 install requests
pip3 install xmltodict
pip3 install dicttoxml 
pip3 install PyQRCode
pip3 install pypng
pip3 install email-validator
pip3 install num2words
pip3 install phonenumbers
pip3 install pandas
pip3 install holidays
pip3 install dropbox
apt-get update
cd /etc/odoo
mkdir dian
mkdir backups
chmod 777 -R dian
chmod 777 -R backups
cd /usr/lib/python3/dist-packages/odoo/addons
git config --global credential.helper store
git clone -b 15.0-dev https://github.com/Intresco-SAS/e-invoice-co.git
git clone https://github.com/Intresco-SAS/partner_firstname.git
git clone -b 15.0 https://github.com/Intresco-SAS/dbfilter_from_header.git
apt-get update
timedatectl set-timezone America/Bogota
service odoo restart

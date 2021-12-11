#este script esta hecho para instalar odoo 12 en ubuntu18 server
#!/bin/bash
apt-get update && apt-get upgrade -y
apt-get install postgresql -y
wget -O - https://nightly.odoo.com/odoo.key | apt-key add -
echo "deb http://nightly.odoo.com/13.0/nightly/deb/ ./" >> /etc/apt/sources.list.d/odoo.list
apt-get update && apt-get install odoo -y
apt install xfonts-base xfonts-75dpi -y
cd /tmp
wget http://security.ubuntu.com/ubuntu/pool/main/libp/libpng/libpng12-0_1.2.54-1ubuntu1.1_amd64.deb && sudo dpkg -i libpng12-0_1.2.54-1ubuntu1.1_amd64.deb
wget https://github.com/wkhtmltopdf/packaging/releases/download/0.12.6-1/wkhtmltox_0.12.6-1.focal_amd64.deb && sudo dpkg -i wkhtmltox_0.12.6-1.focal_amd64.deb
ln -s /usr/local/bin/wkhtmltopdf /usr/bin/
ln -s /usr/local/bin/wkhtmltoimage /usr/bin/
chmod 777 -R /usr/lib/python3/dist-packages/odoo/addons
apt-get install python3-venv build-essential python3-pillow python3-lxml python3-dev python3-pip python3-setuptools npm nodejs git gdebi libldap2-dev libsasl2-dev  libxml2-dev libxslt1-dev libjpeg-dev libpq-dev -y
sudo -H pip3 install -r https://raw.githubusercontent.com/odoo/odoo/master/requirements.txt
apt install unzip
apt install python3-pip -y
pip3 install pysftp
pip3 install xlrd
pip3 install xlwt
pip3 install boto3
pip3 install python-barcode
pip3 install pyopenssl
pip3 install requests
pip3 install xmltodict
pip3 install PyQRCode
pip3 install pypng
pip3 install email-validator
pip3 install num2words
apt-get update
service odoo restart

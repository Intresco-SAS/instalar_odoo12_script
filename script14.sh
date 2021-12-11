#este script esta hecho para instalar odoo 12 en ubuntu18 server
#!/bin/bash
apt-get update && apt-get upgrade -y
apt-get install postgresql -y
wget -O - https://nightly.odoo.com/odoo.key | apt-key add -
echo "deb http://nightly.odoo.com/12.0/nightly/deb/ ./" >> /etc/apt/sources.list.d/odoo.list
apt-get update && apt-get install odoo -y
git clone https://github.com/agavariat/wkhtmltox_0.12.5-1.bionic_amd64.git
mv wkhtmltox_0.12.5-1.bionic_amd64/wkhtmltox_0.12.5-1.bionic_amd64.deb ~/
sudo dpkg -i wkhtmltox_0.12.5-1.bionic_amd64.deb
sudo apt-get install -f -y
sudo ln -s /usr/local/bin/wkhtmltoimage /usr/bin
sudo ln -s /usr/local/bin/wkhtmltopdf /usr/bin
chmod 777 -R /usr/lib/python3/dist-packages/odoo/addons
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
cd
cd /usr/lib/python3/dist-packages/odoo/addons
chmod 777 -R /usr/lib/python3/dist-packages/odoo/addons/comercio_web
reboot

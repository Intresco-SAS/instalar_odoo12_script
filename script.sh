#este script esta hecho para instalar odoo 12 en ubuntu18 server
apt-get update && apt-get upgrade
apt-get install postgresql -y
wget -O - https://nightly.odoo.com/odoo.key | apt-key add -
echo "deb http://nightly.odoo.com/12.0/nightly/deb/ ./" >> /etc/apt/sources.list.d/odoo.list
apt-get update && apt-get install odoo
sudo wget https://builds.wkhtmltopdf.org/0.12.1.3/wkhtmltox_0.12.1.3-1~bionic_amd64.deb
sudo dpkg -i wkhtmltox_0.12.1.3-1~bionic_amd64.deb
sudo apt-get install -f
sudo ln -s /usr/local/bin/wkhtmltoimage /usr/bin
sudo ln -s /usr/local/bin/wkhtmltopdf /usr/bin
chmod 777 /usr/lib/python3/dist-packages/odoo/addons
apt install unzip
apt install python3-pip
pip3 pip install pysftp
cd /usr/lib/python3/dist-packages/odoo/addons
git clone https://github.com/agavariat/ba_web_gantt_project.git
git clone https://github.com/agavariat/ba_web_gantt.git
git clone https://github.com/agavariat/ba_task_checklist.git
git clone https://github.com/agavariat/om_account_accountant.git
git clone https://github.com/agavariat/accounting_pdf_reports.git
git clone https://github.com/agavariat/om_account_asset.git
git clone https://github.com/agavariat/om_account_budget.git
git clone https://github.com/Yenthe666/auto_backup.git
git clone https://github.com/agavariat/cenit_base.git
git clone https://github.com/OCA/contract.git
git clone https://github.com/agavariat/web_favicon.git
git clone https://github.com/agavariat/pos_stock_realtime.git
git clone https://github.com/agavariat/odoo_pos_keyboard.git
git clone https://github.com/agavariat/purchase_discount.git
git clone https://github.com/agavariat/pos_order_mgmt.git
reboot

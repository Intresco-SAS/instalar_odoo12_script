#este script esta hecho para instalar odoo 12 en ubuntu18 server
#!/bin/bash
dom="merqando.co"
oIP="3.23.97.112"
apt-get update && apt-get upgrade -y
apt-get install postgresql -y
wget -O - https://nightly.odoo.com/odoo.key | apt-key add -
echo "deb http://nightly.odoo.com/12.0/nightly/deb/ ./" >> /etc/apt/sources.list.d/odoo.list
apt-get update && apt-get install odoo -y
sudo wget https://builds.wkhtmltopdf.org/0.12.1.3/wkhtmltox_0.12.1.3-1~bionic_amd64.deb
sudo dpkg -i wkhtmltox_0.12.1.3-1~bionic_amd64.deb
sudo apt-get install -f -y
sudo ln -s /usr/local/bin/wkhtmltoimage /usr/bin
sudo ln -s /usr/local/bin/wkhtmltopdf /usr/bin
chmod 777 /usr/lib/python3/dist-packages/odoo/addons
apt install unzip
apt install python3-pip -y
pip3 install pysftp
pip3 install xlrd
pip3 install xlwt
pip3 install python-barcode
apt-get update
apt-get install nginx -y
cd
git clone https://github.com/agavariat/dominio.git
mv dominio/dominio /etc/nginx/sites-available/$dom
cd /etc/nginx/sites-available
cat <<EOF > $dom
server {
  server_name $dom www.$dom $oIP;
  listen 80;
  access_log /var/log/nginx/testing-access.log;
  error_log /var/log/nginx/testing-error.log;
  location /longpolling {
  proxy_connect_timeout 3600;
  proxy_read_timeout 3600;
  proxy_send_timeout 3600;
  send_timeout 3600;
  proxy_pass http://127.0.0.1:8072;
  }
  location / {
  proxy_connect_timeout 3600;
  proxy_read_timeout 3600;
  proxy_send_timeout 3600;
  send_timeout 3600;
  proxy_pass http://127.0.0.1:8069;
  proxy_set_header Host \$host:\$server_port;
  proxy_set_header X-Forwarded-Host \$host;
  proxy_set_header X-Real-IP \$remote_addr;
  proxy_set_header X-Forwarded-For \$proxy_add_x_forwarded_for;
  }
  gzip on;
  gzip_min_length 1000;
  }
upstream odoo {
    server 127.0.0.1:8069 weight=1 fail_timeout=0;
}
upstream odoo-im {
    server 127.0.0.1:8072 weight=1 fail_timeout=0;
  }
EOF

ln -s /etc/nginx/sites-available/$dom /etc/nginx/sites-enabled/$dom
cd /etc/odoo
echo "proxy_mode = True" >> odoo.conf
echo "xmlrpc_interface = 127.0.0.1" >> odoo.conf
echo "netrpc_interface = 127.0.0.1" >> odoo.conf
cd /etc/nginx/sites-enabled
rm default
cd /etc/nginx/sites-available
rm default
cd
ufw allow 22
ufw allow 8069
ufw allow 'Nginx Full'
ufw enable
service odoo restart
service nginx restart
apt-get update
apt-get install software-properties-common
add-apt-repository universe
add-apt-repository ppa:certbot/certbot
apt-get install certbot python-certbot-nginx -y
certbot --nginx
certbot --nginx -d $dom -d www.$dom
cd /etc/nginx/
sed -i '12iclient_max_body_size 100M;' nginx.conf
cd
cd /usr/lib/python3/dist-packages/odoo/addons
git clone https://github.com/agavariat/l10n_co_res_partner.git
git clone https://github.com/agavariat/l10n_co_tax_extension.git
git clone https://github.com/agavariat/ba_web_gantt_project.git
git clone https://github.com/agavariat/ba_web_gantt.git
git clone https://github.com/agavariat/ba_task_checklist.git
git clone https://github.com/agavariat/om_account_accountant.git
git clone https://github.com/agavariat/accounting_pdf_reports.git
git clone https://github.com/agavariat/om_account_asset.git
git clone https://github.com/agavariat/om_account_budget.git
git clone https://github.com/Yenthe666/auto_backup.git
git clone https://github.com/agavariat/cenit_base.git
git clone https://github.com/agavariat/contract.git
git clone https://github.com/agavariat/web_favicon.git
git clone https://github.com/agavariat/pos_stock_realtime.git
git clone https://github.com/agavariat/odoo_pos_keyboard.git
git clone https://github.com/agavariat/purchase_discount.git
git clone https://github.com/agavariat/pos_order_mgmt.git
git clone https://github.com/agavariat/muk_web_utils.git
git clone https://github.com/agavariat/muk_web_theme.git
git clone https://github.com/agavariat/muk_utils.git
git clone https://github.com/agavariat/muk_autovacuum.git
git clone https://github.com/agavariat/pos_personalized_sequence.git
git clone https://github.com/agavariat/bi_pos_reports.git
git clone https://github.com/agavariat/pos_kitchen_receipt_app.git
git clone https://github.com/agavariat/pos_ticket.git
git clone https://github.com/agavariat/purchase_order_automation.git
git clone https://github.com/agavariat/barcodes_generator_product.git
git clone https://github.com/agavariat/barcodes_generator_abstract.git
git clone https://github.com/agavariat/pos_margin.git
git clone https://github.com/agavariat/purchase_order_variant_mgmt.git
git clone https://github.com/agavariat/web_widget_x2many_2d_matrix.git
git clone https://github.com/agavariat/bi_crm_task.git
git clone https://github.com/agavariat/bi_odoo_process_costing_manufacturing.git
git clone https://github.com/agavariat/theme_comercio.git
git clone https://github.com/agavariat/comercio_web.git
chmod -R 777 /usr/lib/python3/dist-packages/odoo/addons/comercio_web/static/src/scss/theme_option/colors
reboot

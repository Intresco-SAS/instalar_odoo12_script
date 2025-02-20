#este script esta hecho para instalar odoo 12 en ubuntu18 server
#!/bin/bash
apt-get update && apt-get upgrade -y
apt-get install postgresql -y
wget -O - https://nightly.odoo.com/odoo.key | apt-key add -
echo "deb http://nightly.odoo.com/15.0/nightly/deb/ ./" >> /etc/apt/sources.list.d/odoo.list
apt-get update && apt-get install odoo -y
sudo apt-get update
sudo apt-get install xfonts-75dpi
sudo apt-get install -y xfonts-base
wget http://archive.ubuntu.com/ubuntu/pool/main/o/openssl/libssl1.1_1.1.0g-2ubuntu4_amd64.deb
sudo dpkg -i libssl1.1_1.1.0g-2ubuntu4_amd64.deb
wget https://github.com/wkhtmltopdf/wkhtmltopdf/releases/download/0.12.5/wkhtmltox_0.12.5-1.bionic_amd64.deb
sudo dpkg -i wkhtmltox_0.12.5-1.bionic_amd64.deb
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
mkdir custom-addons
cd custom-addons
git config --global credential.helper store
git clone -b 15.0-dev https://github.com/Intresco-SAS/e-invoice-co.git
git clone -b 15.0 https://github.com/Intresco-SAS/nomina_colombia_ent.git
git clone -b 15.0 https://github.com/Intresco-SAS/int_account_analytic_required.git
git clone -b 15.0 https://github.com/Intresco-SAS/account_move_name_sequence.git
git clone -b 15.0 https://github.com/Intresco-SAS/account_payment_advance_mac5.git
git clone -b 15.0 https://github.com/Intresco-SAS/aspl_stock_inventory_report.git
git clone -b 15.0 https://github.com/Intresco-SAS/dashboard_goals.git
git clone -b 15.0 https://github.com/Intresco-SAS/database_backup_to_s3.git
git clone -b 15.0 https://github.com/Intresco-SAS/int_account_lock.git
git clone -b 15.0 https://github.com/Intresco-SAS/int_advance_payment.git
git clone -b 15.0 https://github.com/Intresco-SAS/int_stock_analytic.git
git clone -b 15.0 https://github.com/Intresco-SAS/l10n_co_account_reports_ent.git
git clone -b 15.0 https://github.com/Intresco-SAS/l10n_co_reports_int.git
git clone -b 15.0 https://github.com/Intresco-SAS/mrp_wip_odoo.git
git clone -b 15.0 https://github.com/Intresco-SAS/stock_picking_default_planned_transfer.git
git clone -b 15.0 https://github.com/OCA/purchase-workflow.git
git clone -b 15.0 https://github.com/OCA/stock-logistics-warehouse.git
git clone -b 15.0 https://github.com/OCA/manufacture.git
git clone -b 15.0 https://github.com/OCA/sale-workflow.git
git clone -b 15.0 https://github.com/OCA/account-invoicing.git
git clone -b 15.0 https://github.com/OCA/account-payment.git
git clone -b 15.0 https://github.com/OCA/account-analytic.git
git clone -b 15.0 https://github.com/OCA/server-backend.git
git clone -b 15.0 https://github.com/OCA/server-ux.git
git clone -b 15.0 https://github.com/OCA/server-tools.git
git clone -b 15.0 https://github.com/OCA/partner-contact.git
git clone -b 15.0 https://github.com/OCA/account-financial-tools.git
git clone -b 15.0 https://github.com/OCA/product-attribute.git
git clone -b 15.0 https://github.com/OCA/brand.git
git clone -b 15.0 https://github.com/Intresco-SAS/stock_account_internal_move.git
git clone -b 15.0 https://github.com/OCA/account-financial-reporting.git
git clone -b 15.0 https://github.com/OCA/account-reconcile.git
git clone -b 15.0 https://github.com/Intresco-SAS/account_dynamic_reports.git
git clone -b 15.0 https://github.com/OCA/bank-payment.git
git clone -b 15.0 https://github.com/OCA/bank-statement-import.git
git clone -b 15.0 https://github.com/Intresco-SAS/bi_crm_task.git
git clone -b 15.0 https://github.com/Intresco-SAS/bi_hr_payroll.git
git clone -b 15.0 https://github.com/Intresco-SAS/bi_hr_payroll_account.git
git clone -b 15.0 https://github.com/OCA/contract.git
git clone -b 15.0 https://github.com/OCA/credit-control.git
git clone -b 15.0 https://github.com/Intresco-SAS/custom_gedesarrollo.git
git clone -b 15.0 https://github.com/Intresco-SAS/droggol_theme_common.git
git clone -b 15.0 https://github.com/Intresco-SAS/theme_prime.git
git clone -b 15.0 https://github.com/Intresco-SAS/hw_escpos_network_printer.git
git clone -b 15.0 https://github.com/Intresco-SAS/hw_restaurant_ip_printer.git
git clone -b 15.0 https://github.com/Intresco-SAS/nomina_colombia.git
git clone -b 15.0 https://github.com/Intresco-SAS/muk_web.git
git clone -b 15.0 https://github.com/Intresco-SAS/muk_web_theme.git
git clone -b 15.0 https://github.com/Intresco-SAS/l10n_co_e-invoice.git
git clone -b 15.0 https://github.com/Intresco-SAS/l10n_co_pos_res_partner.git
git clone -b 15.0 https://github.com/Intresco-SAS/l10n_co_res_partner.git
git clone -b 15.0 https://github.com/Intresco-SAS/l10n_co_suport_doc.git
git clone -b 15.0 https://github.com/Intresco-SAS/l10n_co_tax_extension.git
git clone -b 15.0 https://github.com/Intresco-SAS/l10n_co_trm.git
git clone -b 15.0 https://github.com/OCA/payroll.git
git clone -b 15.0 https://github.com/OCA/project.git
git clone -b 15.0 https://github.com/OCA/reporting-engine.git
git clone -b 15.0 https://github.com/Intresco-SAS/sr_bank_reconcile_statement_report.git
git clone -b 15.0 https://github.com/OCA/stock-logistics-workflow.git
git clone -b 15.0 https://github.com/Intresco-SAS/support_documents.git
git clone -b 15.0 https://github.com/OCA/timesheet.git
git clone -b 15.0 https://github.com/Intresco-SAS/to_refund_account.git
git clone -b 15.0 https://github.com/OCA/web.git
git clone -b 15.0 https://github.com/Intresco-SAS/website_axis_helpdesk.git
git clone -b 15.0 https://github.com/Intresco-SAS/website_floating_whatsapp_icon.git
git clone -b 15.0 https://github.com/Intresco-SAS/om_account_asset.git
git clone -b 15.0 https://github.com/Intresco-SAS/l10n_co_account_reports.git
git clone https://github.com/Intresco-SAS/sh_pos_access_rights_hr.git
git clone https://github.com/Intresco-SAS/pos_waiter_restrict_table.git
git clone https://github.com/Intresco-SAS/pw_pos_waiter.git
git clone -b 15.0 https://github.com/Intresco-SAS/is_customer_is_vendor.git
git clone -b 15.0 https://github.com/Intresco-SAS/l10n_co_exogena.git
git clone -b 15.0 https://github.com/Intresco-SAS/bi_material_purchase_requisitions.git
git clone -b 15.0 https://github.com/Intresco-SAS/telemetrik_custom.git
git clone -b 15.0 https://github.com/Intresco-SAS/analytic_account_enh.git
git clone -b 15.0 https://github.com/Intresco-SAS/account_move_multi_cancel.git
git clone -b 15.0 https://github.com/OCA/account-invoice-reporting.git
git clone -b 15.0 https://github.com/OCA/agreement.git
git clone -b 15.0 https://github.com/Intresco-SAS/backend_iframe.git
git clone -b 15.0 https://github.com/Intresco-SAS/sh_entmate_theme.git
git clone -b 15.0 https://github.com/Intresco-SAS/base_account_budget.git
git clone -b 15.0 https://github.com/Intresco-SAS/int_account_dynamic_reports.git
git clone -b 15.0 https://github.com/Intresco-SAS/sh_ent_theme_config.git
git clone -b 15.0 https://github.com/OCA/pos.git
git clone -b 15.0 https://github.com/Intresco-SAS/int_l10n_co_pos_edi.git
git clone -b 15.0 https://github.com/Intresco-SAS/bi_pos_multi_session_sync.git
git clone -b 15.0 https://github.com/Intresco-SAS/bi_pos_reports.git
git clone -b 15.0 https://github.com/Intresco-SAS/custom_dryrefor.git
git clone -b 15.0 https://github.com/Intresco-SAS/task_checklist.git
git clone https://github.com/Intresco-SAS/hide_menu_user.git
git clone https://github.com/Intresco-SAS/int_account_usability.git
git clone https://github.com/Intresco-SAS/custom_intresco.git
git clone -b 15.0 https://github.com/Intresco-SAS/pos_kitchen_receipt_app.git
git clone https://github.com/Intresco-SAS/int_accounting_tools.git
git clone https://github.com/Intresco-SAS/int_account_payment_multi_deduction.git
git clone -b 15.0 https://github.com/Intresco-SAS/int_pos_proforma_receipt.git
git clone https://github.com/Intresco-SAS/oi_account.git
git clone -b 15.0 https://github.com/Intresco-SAS/oi_org_chart_account_group.git
git clone -b 15.0 https://github.com/Intresco-SAS/oi_org_chart.git
git clone -b 15.0 https://github.com/OCA/stock-logistics-barcode.git
git clone https://github.com/Intresco-SAS/bsi_pos_clear_cart.git
git clone https://github.com/Intresco-SAS/pos_employee_close_session.git
git clone https://github.com/Intresco-SAS/sale_order_pos.git
apt-get update
timedatectl set-timezone America/Bogota
service odoo restart

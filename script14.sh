#este script esta hecho para instalar odoo 12 en ubuntu18 server
#!/bin/bash
apt-get update && apt-get upgrade -y
apt-get install postgresql -y
wget -O - https://nightly.odoo.com/odoo.key | apt-key add -
echo "deb http://nightly.odoo.com/14.0/nightly/deb/ ./" >> /etc/apt/sources.list.d/odoo.list
apt-get update && apt-get install odoo -y
apt-get install xfonts-75dpi
wget https://github.com/wkhtmltopdf/packaging/releases/download/0.12.6-1/wkhtmltox_0.12.6-1.bionic_amd64.deb
dpkg -i wkhtmltox_0.12.6-1.bionic_amd64.deb
cp /usr/local/bin/wkhtmltoimage /usr/bin/wkhtmltoimage
cp /usr/local/bin/wkhtmltopdf /usr/bin/wkhtmltopdf
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
git clone -b 14.0 https://github.com/Intresco-SAS/auto_backup.git
git clone https://github.com/Intresco-SAS/base_vat_ext.git
git clone https://github.com/Intresco-SAS/bi_import_pos_order.git
git clone https://github.com/Intresco-SAS/bi_pos_pay_later.git
git clone -b 14.0 https://github.com/Intresco-SAS/bi_pos_reports.git
git clone https://github.com/Intresco-SAS/bi_pos_reprint_reorder.git
git clone https://github.com/Intresco-SAS/bi_pos_stock.git
git clone https://github.com/Intresco-SAS/bi_pos_warehouse_management.git
git clone https://github.com/Intresco-SAS/e-invoice-co.git
git clone https://github.com/Intresco-SAS/flexibite_com_advance.git
git clone https://github.com/Intresco-SAS/hw_escpos_network_printer.git
git clone https://github.com/Intresco-SAS/hw_restaurant_ip_printer.git
git clone https://github.com/Intresco-SAS/init_web_many2one_disable.git
git clone https://github.com/Intresco-SAS/l10n_co_payroll.git
git clone -b 14.0 https://github.com/Intresco-SAS/l10n_co_pos_res_partner.git
git clone https://github.com/Intresco-SAS/mai_pos_custom_order_number.git
git clone -b 14.0 https://github.com/Intresco-SAS/muk_web_theme.git
git clone -b 14.1 https://github.com/Intresco-SAS/nomina_colombia.git
git clone -b 14.1 https://github.com/Intresco-SAS/ob_pos_advance_receipt_note.git
git clone https://github.com/Intresco-SAS/odoo_sale_rental.git
git clone https://github.com/Intresco-SAS/om_account_daily_reports.git
git clone https://github.com/Intresco-SAS/pos_analytic_account.git
git clone -b 14.0 https://github.com/Intresco-SAS/pos_kitchen_receipt_app.git
git clone https://github.com/Intresco-SAS/bi_pos_return_order.git
git clone https://github.com/Intresco-SAS/pos_orders_list.git
git clone https://github.com/Intresco-SAS/pos_payment_change.git
git clone -b 14.1-restrict https://github.com/Intresco-SAS/pos_personalized_sequence.git
git clone https://github.com/Intresco-SAS/pos_show_config_name.git
git clone https://github.com/Intresco-SAS/pos_tax_display.git
#git clone https://github.com/Intresco-SAS/product_cost_with_taxes.git
git clone https://github.com/Intresco-SAS/product_warehouse_quantity.git
git clone -b 14.0 https://github.com/Intresco-SAS/purchase_last_price_info.git
git clone https://github.com/Intresco-SAS/pw_customer_required.git
#git clone https://github.com/Intresco-SAS/sale_order_automation.git
git clone https://github.com/Intresco-SAS/sale_order_line_product_image.git
git clone https://github.com/Intresco-SAS/sh_pos_product_code.git
git clone https://github.com/Intresco-SAS/pos_tip_fixed_percent.git
git clone -b 14.0 https://github.com/Intresco-SAS/account_dynamic_reports.git
git clone https://github.com/Intresco-SAS/base_account_budget.git
git clone https://github.com/Intresco-SAS/bi_pos_stock.git
git clone -b final https://github.com/Intresco-SAS/journal_reports.git
git clone https://github.com/Intresco-SAS/pos_default_partner.git
git clone -b 14.0 https://github.com/Intresco-SAS/purchase_discount.git
git clone https://github.com/Intresco-SAS/sh_pos_exact_search.git
git clone https://github.com/Intresco-SAS/invoice_analytic_account.git
git clone https://github.com/Intresco-SAS/purchase_analytic_account.git
git clone -b 14.0 https://github.com/Intresco-SAS/partner_email_check.git
git clone https://github.com/Intresco-SAS/website_floating_whatsapp_icon.git
git clone https://github.com/Intresco-SAS/bi_automated_sale_order.git
git clone https://github.com/Intresco-SAS/product_cost_with_taxes.git
git clone https://github.com/Intresco-SAS/cotizacion_pos_report.git
git clone https://github.com/Intresco-SAS/website_axis_helpdesk.git
git clone https://github.com/Intresco-SAS/analytic_account_enh.git
git clone https://github.com/Intresco-SAS/mrp_analytic.git
git clone https://github.com/Intresco-SAS/mrp_analytic_sale_project.git
git clone https://github.com/Intresco-SAS/account_analytic_parent.git
git clone https://github.com/Intresco-SAS/pass_analytic_acc_in_journal_app.git
git clone https://github.com/Intresco-SAS/stock_analytic.git
git clone -b 14.0 https://github.com/Intresco-SAS/droggol_theme_common.git
git clone -b 14.0 https://github.com/Intresco-SAS/theme_prime.git
git clone -b 14.0 https://github.com/Intresco-SAS/contract.git
git clone -b 14.0 https://github.com/Intresco-SAS/payment_report_co.git
git clone https://github.com/Intresco-SAS/account_menu.git
git clone https://github.com/Intresco-SAS/account_reconciliation_widget.git
git clone https://github.com/Intresco-SAS/od_journal_sequence.git
git clone https://github.com/Intresco-SAS/purchase_order_type.git
git clone https://github.com/Intresco-SAS/sale_order_type.git
git clone -b 14.0 https://github.com/Intresco-SAS/is_customer_is_vendor.git
git clone -b 14.0 https://github.com/Intresco-SAS/project_parent_task_filter.git
git clone -b 14.0 https://github.com/Intresco-SAS/om_account_asset.git
git clone https://github.com/Intresco-SAS/account_invoice_fiscal_position_update.git
git clone https://github.com/Intresco-SAS/project_category.git
git clone -b 14.0 https://github.com/Intresco-SAS/pos_cash_in_out_odoo.git
git clone -b 14.0 https://github.com/Intresco-SAS/aspl_stock_inventory_report.git
git clone https://github.com/Intresco-SAS/oi_org_chart_account_group.git
git clone https://github.com/Intresco-SAS/oi_account.git
git clone https://github.com/Intresco-SAS/oi_org_chart.git
git clone https://github.com/Intresco-SAS/bi_material_purchase_requisitions.git
git clone https://github.com/Intresco-SAS/payment_multi_write_off.git
git clone https://github.com/Intresco-SAS/purchase_reception_status.git
git clone https://github.com/Intresco-SAS/product_quantity_update_force_inventory.git
git clone https://github.com/Intresco-SAS/stock_barcodes.git
git clone -b 14.0 https://github.com/Intresco-SAS/pragtech_import_invoice.git
git clone https://github.com/Intresco-SAS/account_invoice_refund_link.git
git clone https://github.com/Intresco-SAS/project_timesheet_time_control.git
git clone https://github.com/Intresco-SAS/hr_timesheet_task_stage.git
git clone https://github.com/Intresco-SAS/web_ir_actions_act_multi.git
git clone https://github.com/Intresco-SAS/account_move_name_sequence.git
git clone https://github.com/Intresco-SAS/sh_timesheet_calendar.git
git clone https://github.com/Intresco-SAS/account_netting.git
git clone https://github.com/Intresco-SAS/web_ir_actions_act_view_reload.git
git clone https://github.com/Intresco-SAS/hr_timesheet_task_domain.git
git clone https://github.com/Intresco-SAS/account_lock_to_date.git
git clone https://github.com/Intresco-SAS/database_backup_to_s3.git
git clone -b 14.0 https://github.com/Intresco-SAS/pos_auto_session_closed_app.git
git clone -b 14.0 https://github.com/Intresco-SAS/pos_user_restriction.git
git clone https://github.com/Intresco-SAS/dbfilter_from_header.git
git clone -b 14.0 https://github.com/Intresco-SAS/bi_pos_multi_shop.git
git clone -b 14.0 https://github.com/Intresco-SAS/stock_move_location.git
git clone -b 14.0 https://github.com/Intresco-SAS/done_activity.git
git clone https://github.com/Intresco-SAS/purchase_order_line_menu.git
git clone https://github.com/Intresco-SAS/pos_order_return.git
git clone -b 14.0 https://github.com/Intresco-SAS/pos_order_mgmt.git
git clone -b 14.0 https://github.com/Intresco-SAS/bi_print_journal_entries.git
git clone https://github.com/Intresco-SAS/custom_energostech.git
git clone -b 14.0 https://github.com/Intresco-SAS/done_activity.git
git clone https://github.com/Intresco-SAS/product_code_unique.git
git clone -b 14.0 https://github.com/Intresco-SAS/project_list.git
git clone https://github.com/Intresco-SAS/project_mail_chatter.git
git clone https://github.com/Intresco-SAS/project_status.git
git clone https://github.com/Intresco-SAS/project_tag.git
git clone -b 14.0 https://github.com/Intresco-SAS/project_task_default_stage.git
git clone https://github.com/Intresco-SAS/to_refund_account.git
apt-get update
timedatectl set-timezone America/Bogota
service odoo restart

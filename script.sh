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
pip3 install numpy
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
pip3 install phonenumbers
pip3 install pandas
pip3 install holidays
apt-get update
cd
cd /usr/lib/python3/dist-packages/odoo/addons
git config --global credential.helper store
git clone https://github.com/agavariat/l10n_co_res_partner.git
git clone https://github.com/agavariat/l10n_co_pos_res_partner.git
git clone https://github.com/agavariat/l10n_co_tax_extension.git
git clone https://github.com/agavariat/l10n_co_e-invoice.git
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
git clone https://github.com/agavariat/payu.git
git clone https://github.com/agavariat/automatic_backup.git
git clone https://github.com/agavariat/web_search_with_and.git
git clone https://github.com/agavariat/partner_email_check.git
git clone https://github.com/agavariat/sale_commission.git
git clone https://github.com/agavariat/partner_enhancement.git
git clone https://github.com/agavariat/pos_cash_in_out_odoo.git
git clone https://github.com/agavariat/mail_delivery_failure_notification_oin.git
git clone https://github.com/agavariat/pos_auto_session_closed_app.git
git clone https://github.com/agavariat/account_aiu.git
git clone -b main https://github.com/ernesto-medina/co-nomina
git clone -b main https://github.com/agavariat/nomina_colombia.git
git clone https://github.com/agavariat/dev_picking_cancel.git
git clone https://github.com/agavariat/gtica_whatsapp_live_free.git
git clone https://github.com/agavariat/website_sale_require_login.git
git clone https://github.com/agavariat/website_sale_suggest_create_account.git
git clone https://github.com/agavariat/website_sale_global_discount.git
git clone https://github.com/agavariat/website_google_tag_manager.git
git clone https://github.com/agavariat/website_support.git
git clone https://github.com/agavariat/purchase_last_price_info.git
git clone https://github.com/agavariat/theme_alan.git
git clone https://github.com/agavariat/alan_customize.git
git clone https://github.com/agavariat/account_analytic_parent.git
git clone https://github.com/agavariat/account_group_menu.git
git clone https://github.com/agavariat/base_external_dbsource.git
git clone https://github.com/agavariat/crm_facebook_leads.git
git clone https://github.com/agavariat/date_range.git
git clone https://github.com/agavariat/done_activity.git
git clone https://github.com/agavariat/mail_send_attchs_zip.git
git clone https://github.com/agavariat/payment_report_co.git
git clone https://github.com/agavariat/website_facebook_pixel.git
git clone https://github.com/agavariat/portal_documents_management.git
git clone https://github.com/agavariat/report_xlsx.git
git clone https://github.com/agavariat/project_description.git
git clone https://github.com/agavariat/project_list.git
git clone https://github.com/agavariat/project_parent_task_filter.git
git clone https://github.com/agavariat/project_stage_closed.git
git clone https://github.com/agavariat/project_task_default_stage.git
git clone https://github.com/agavariat/account_dynamic_reports.git
git clone https://github.com/agavariat/dynamic_xlsx.git
git clone https://github.com/agavariat/pos_session_closing_stock_error.git
git clone https://github.com/agavariat/account_tax_balance.git
git clone https://github.com/agavariat/account_type_menu.git
git clone https://github.com/agavariat/custom_sensation.git
git clone https://github.com/agavariat/l10n_co_res_partner_crm.git
git clone https://github.com/agavariat/partner_statement.git
git clone https://github.com/agavariat/pos_order_to_sale_order.git
git clone https://github.com/agavariat/account_financial_report.git
git clone https://github.com/agavariat/default_account_credit_note.git
git clone https://github.com/agavariat/account_netting.git
git clone https://github.com/agavariat/stock_barcodes.git
git clone https://github.com/agavariat/product_code_unique.git
chmod 777 -R /usr/lib/python3/dist-packages/odoo/addons/comercio_web
reboot

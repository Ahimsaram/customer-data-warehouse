/*
===============================================================================
DDL Script: Create Bronze Tables
===============================================================================
Script Purpose:
    This script creates tables in the 'bronze' schema, dropping existing tables 
    if they already exist.
	  Run this script to re-define the DDL structure of 'bronze' Tables
===============================================================================
Created By : Ahimsamoorthy R
CreatedDate : 03/12/2026
Modified By :
Modified Date :

*/

create Table if not exists bronze.crm_customer_info(
customer_id int,
customer_key TEXT,
first_name TEXT,
last_name TEXT,
company TEXT,
city TEXT,
country TEXT,
phone_primary TEXT,
phone_secondary TEXT,
email TEXT,
subscription_Date TIMESTAMP,
website TEXT
);

create Table if not exists bronze.crm_prd_info (
    prd_id       INT,
    prd_key      TEXT,
    prd_nm       TEXT,
    prd_cost     INT,
    prd_line     TEXT,
    prd_start_dt TIMESTAMP,
    prd_end_dt   TIMESTAMP
);

create Table if not exists bronze.crm_sales_details (
    sls_ord_num  TEXT,
    sls_prd_key  TEXT,
    sls_cust_id  INT,
    sls_order_dt INT,
    sls_ship_dt  INT,
    sls_due_dt   INT,
    sls_sales    INT,
    sls_quantity INT,
    sls_price    INT
);

create Table if not exists bronze.erp_loc_a101 (
    cid    TEXT,
    cntry  TEXT
);

create Table if not exists bronze.erp_cust_az12 (
    cid    TEXT,
    bdate  DATE,
    gen    TEXT
);


create Table if not exists bronze.erp_px_cat_g1v2 (
    id           TEXT,
    cat          TEXT,
    subcat       TEXT,
    maintenance  TEXT
);

# Customer Data Warehouse
Customer Data Warehouse built using PostgreSQL implementing Medallion Architecture (Bronze, Silver, Gold) with dimensional modeling for analytics.
This project demonstrates a Data Warehouse implementation using PostgreSQL with Medallion Architecture (Bronze, Silver, Gold).
## Technologies

| Technology | Description |
|------------|-------------|
| PostgreSQL | Relational database used to build the data warehouse |
| SQL | Used for data transformation, modeling, and analytics queries |
| Data Modeling | Dimensional modeling using fact and dimension tables |
| Medallion Architecture | Data pipeline structure with Bronze (raw), Silver (cleaned), and Gold (analytics-ready) layers |

## Architecture Layer:
| Layer | Purpose |
|-------|---------|
| Bronze | Stores raw ingested data from source systems |
| Silver | Contains cleaned, standardized, and validated data |
| Gold | Stores business-ready aggregated data for analytics and reporting |

---
## 🚀 Getting Started: Data Ingestion (Bronze Layer)

Follow these steps to initialize the environment and load the raw customer data.

### 1. Initialize the Database Structure
First, you must create the schemas and the target table structure.
* Open your preferred SQL editor (pgAdmin, DBeaver, or VS Code).
* Execute the script located at:  
    `scripts/bronze/ddl_initialize.sql`
* click here :arrow_right: [ddl_bronze_layer.sql](scripts/bronze/ddl_bronze_layer.sql)

### 2. Connect via psql Shell
To handle the bulk load of 500,000 records, use the `psql` command-line utility for maximum stability.

1.  Open your terminal or command prompt.
2.  Connect to your database using the following parameters:

```bash
psql -h localhost -U postgres -d DataWareHouse;
```
3. then run the command for copy the csv file into table. replace this C:\Users\AHIMSA\Downloads\customers-500000.csv with local file path .
```bash
\copy bronze.crm_customer_info from 'C:\Users\AHIMSA\Downloads\customers-500000.csv' with ( FORMAT csv, NULL '', HEADER true)
```

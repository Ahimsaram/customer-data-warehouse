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

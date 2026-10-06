SET client_encoding = 'UTF8';
\copy customers FROM 'data/raw/olist_customers_dataset.csv' CSV HEADER
\copy sellers FROM 'data/raw/olist_sellers_dataset.csv' CSV HEADER
\copy products FROM 'data/raw/olist_products_dataset.csv' CSV HEADER
\copy category_translation FROM 'data/raw/product_category_name_translation.csv' CSV HEADER
\copy orders FROM 'data/raw/olist_orders_dataset.csv' CSV HEADER
\copy order_items FROM 'data/raw/olist_order_items_dataset.csv' CSV HEADER
\copy order_payments FROM 'data/raw/olist_order_payments_dataset.csv' CSV HEADER
\copy order_reviews FROM 'data/raw/olist_order_reviews_dataset.csv' CSV HEADER
\copy geolocation FROM 'data/raw/olist_geolocation_dataset.csv' CSV HEADER
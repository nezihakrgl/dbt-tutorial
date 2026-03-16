CREATE SCHEMA IF NOT EXISTS raw;
CREATE SCHEMA IF NOT EXISTS staging;
CREATE SCHEMA IF NOT EXISTS mart;
CREATE SCHEMA IF NOT EXISTS snapshots;

CREATE TABLE raw.raw_customers (
    customer_id   SERIAL PRIMARY KEY,
    first_name    VARCHAR(100),
    last_name     VARCHAR(100),
    email         VARCHAR(200) UNIQUE,
    city          VARCHAR(100),
    country       VARCHAR(100),
    segment       VARCHAR(50),
    registered_at TIMESTAMP
);

CREATE TABLE raw.raw_products (
    product_id  SERIAL PRIMARY KEY,
    name        VARCHAR(200),
    category    VARCHAR(100),
    subcategory VARCHAR(100),
    unit_price  NUMERIC(10,2),
    unit_cost   NUMERIC(10,2),
    supplier    VARCHAR(150),
    is_active   BOOLEAN DEFAULT TRUE
);

CREATE TABLE raw.raw_orders (
    order_id    SERIAL PRIMARY KEY,
    customer_id INTEGER REFERENCES raw.raw_customers(customer_id),
    order_date  DATE,
    status      VARCHAR(50),
    channel     VARCHAR(50),
    region      VARCHAR(100)
);

CREATE TABLE raw.raw_order_items (
    item_id      SERIAL PRIMARY KEY,
    order_id     INTEGER REFERENCES raw.raw_orders(order_id),
    product_id   INTEGER REFERENCES raw.raw_products(product_id),
    quantity     INTEGER,
    unit_price   NUMERIC(10,2),
    discount_pct NUMERIC(5,2) DEFAULT 0
);
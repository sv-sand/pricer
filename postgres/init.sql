-- Create tables

CREATE TABLE IF NOT EXISTS users (
    id SERIAL PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    tg_id SERIAL UNIQUE,
    version INTEGER NOT NULL
);

CREATE INDEX IF NOT EXISTS idx_tg_id ON users(tg_id);

CREATE TABLE IF NOT EXISTS searches (
    id SERIAL PRIMARY KEY,
    key_words VARCHAR(255) NOT NULL,
    target_price DECIMAL(10, 2) NOT NULL,
    store VARCHAR(100),
    user_id INT NOT NULL,
    version INTEGER NOT NULL,

    FOREIGN KEY (user_id) REFERENCES users(id) ON DELETE CASCADE
);

CREATE INDEX IF NOT EXISTS idx_user_id ON searches(user_id);

CREATE TABLE IF NOT EXISTS products (
    id SERIAL PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    price DECIMAL(10, 2) NOT NULL,
    search_id INT NOT NULL,
    store VARCHAR(100) NOT NULL,
    store_product_id BIGINT,
    store_product_link VARCHAR(255),
    user_notify BOOLEAN NOT NULL DEFAULT FALSE,
    version INTEGER NOT NULL,

    FOREIGN KEY (search_id) REFERENCES searches(id) ON DELETE CASCADE
);

CREATE INDEX IF NOT EXISTS idx_search_id ON products(search_id);

CREATE TABLE IF NOT EXISTS search_statistic (
    id SERIAL PRIMARY KEY,
    status_code INTEGER NOT NULL,
    status_description VARCHAR(1000),
    search_id INT NOT NULL,
    count INTEGER NOT NULL,
    version INTEGER NOT NULL,

    FOREIGN KEY (search_id) REFERENCES searches(id) ON DELETE CASCADE
);
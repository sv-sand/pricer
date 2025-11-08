-- Create tables

CREATE TABLE searches (
    id SERIAL PRIMARY KEY,
    key_words VARCHAR(255) NOT NULL,
    target_price DECIMAL(10, 2) NOT NULL
);

CREATE TABLE products (
    id SERIAL PRIMARY KEY,
    link VARCHAR(255) NOT NULL,
    name VARCHAR(255) NOT NULL,
    price DECIMAL(10, 2) NOT NULL,
    search_id INT NOT NULL,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    
    FOREIGN KEY (search_id) REFERENCES searches(id) ON DELETE CASCADE
);

-- Test filling data

INSERT INTO searches (key_words, target_price) VALUES
    ('macbook pro m4 16Gb', 100);

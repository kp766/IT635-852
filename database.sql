CREATE TABLE Stock (
    stock_id SERIAL PRIMARY KEY,
    name VARCHAR(100),
    description TEXT,
    price DECIMAL(10, 2),
    quantity_of_products INT
);

CREATE TABLE Providers (
    provider_id SERIAL PRIMARY KEY,
    name VARCHAR(100),
    person VARCHAR(100),
    email VARCHAR(100),
    phone VARCHAR(20)
);

CREATE TABLE Orders (
    order_id SERIAL PRIMARY KEY,
    stock_id INT REFERENCES Stock(stock_id),
    provider_id INT REFERENCES Providers(provider_id),
    quantity_ordered INT,
    order_date DATE
);

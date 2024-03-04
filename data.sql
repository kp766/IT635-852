INSERT INTO Stock (name, description, price, quantity_of_stock) 
VALUES ('iphone 15 pro max', 'Brand new, Color: Natural Titanium, Storage: 256GB', 1300.00, 10),
       ('Macbook', 'Latest model, Color: Space Black, Storage: 512GB SSD storage', 1600.00, 15),
       ('Tablet', 'Lightweight tablet', 500.00, 20);

INSERT INTO Providers (name, person, email, phone) 
VALUES ('ElectroTech', 'Bob Jones', 'bjones@electronicshop.com', '201-222-7890'),
       ('GadgetWorld', 'Ron Diaz', 'rdiaz@electronicshop.com', '201-222-3210');

INSERT INTO Orders (stock_id, provider_id, quantity_ordered, order_date) 
VALUES (1, 1, 5, '2024-02-15'),
       (2, 2, 3, '2024-02-20'),
       (3, 1, 2, '2024-02-25');

-- duomenys

INSERT INTO product (id, name, price)
    VALUES  (1, 'suris', 8),
            (2, 'sviestas', 10),
            (3, 'grietine', 6),
            (4, 'duona', 2);

INSERT INTO costomer (id, first_name, last_name)
    VALUES  (1, 'Petras', 'Petraitis'),
            (2, 'Ona', 'Onaitė'),
            (3, 'Aurimas', 'Marijus'),
            (4, 'Rasa', 'Rasaitė');

INSERT INTO cashier (id, first_name)
    VALUES  (1, 'Jonas');

INSERT INTO bill (id, purchase_datetime, cashier_id, customer_id)
    VALUES  (0, "8:05", 1, 3),
            (1, "9:01", 1, 4),
            (2, "10:00", 1, 1),
            (3, "13:30", 1, 2),
            (4, "14:00", 1, 3),
            (5, "15:10", 1, 2),
            (6, "15:30", 1, 1),
            (7, "17:00", 1, 3);

INSERT INTO bill_line (id, bill_id, product_id, quantity)
    VALUES (1, 0, 2, 2),
            (2, 1, 4, 2),
            (3, 2, 1, 1),
            (4, 3, 4, 1),
            (5, 4, 3, 2),
            (6, 5, 1, 1),
            (7, 6, 2, 1),
            (8, 7, 1, 2);

